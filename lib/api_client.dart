part of n2t.game_oclock.client;

class ApiClient {
  ApiClient({
    this.basePath = 'http://localhost',
    this.authentication,
  });

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty
        ? '?${urlEncodedQueryParams.join('&')}'
        : '';
    final uri = Uri.parse('$basePath$path$queryString');

    late final FutureOr<Response> Function() requestFn;

    // Special case for uploading a single file which isn't a 'multipart/form-data'.
    if (body is MultipartFile &&
        (contentType == null ||
            !contentType.toLowerCase().startsWith('multipart/form-data'))) {
      final request = StreamedRequest(method, uri);
      request.headers.addAll(headerParams);
      request.contentLength = body.length;
      body.finalize().listen(
            request.sink.add,
            onDone: request.sink.close,
            // ignore: avoid_types_on_closure_parameters
            onError: (Object error, StackTrace trace) => request.sink.close(),
            cancelOnError: true,
          );
      requestFn = () async {
        final response = await _client.send(request);
        return Response.fromStream(response);
      };
    }

    if (body is MultipartRequest) {
      final request = MultipartRequest(method, uri);
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      requestFn = () async {
        final response = await _client.send(request);
        return Response.fromStream(response);
      };
    }

    final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
    final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

    switch (method) {
      case 'POST':
        requestFn = () => _client.post(
              uri,
              headers: nullableHeaderParams,
              body: msgBody,
            );
      case 'PUT':
        requestFn = () => _client.put(
              uri,
              headers: nullableHeaderParams,
              body: msgBody,
            );
      case 'DELETE':
        requestFn = () => _client.delete(
              uri,
              headers: nullableHeaderParams,
              body: msgBody,
            );
      case 'PATCH':
        requestFn = () => _client.patch(
              uri,
              headers: nullableHeaderParams,
              body: msgBody,
            );
      case 'HEAD':
        requestFn = () => _client.head(
              uri,
              headers: nullableHeaderParams,
            );
      case 'GET':
        requestFn = () => _client.get(
              uri,
              headers: nullableHeaderParams,
            );
    }

    return _invokeAPI(() => checkClientErrors(method, path, requestFn));
  }

  Future<Response> checkClientErrors(
    String method,
    String path,
    FutureOr<Response> Function() request,
  ) async {
    try {
      return await request();
    } on SocketException catch (error, trace) {
      throw ConnectionFailedApiException(
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ConnectionFailedApiException(
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ConnectionFailedApiException(
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ConnectionFailedApiException(
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw UnexpectedApiException(
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }
  }

  Future<Response> _invokeAPI(FutureOr<Response> Function() request) async {
    final retry = RetryOptions(maxAttempts: 3);
    return await retry.retry(
      () async {
        final Response response = await request();

        // Handle 401 without body from regular calls
        if (response.statusCode == HttpStatus.unauthorized &&
            response.body.isEmpty) {
          throw UnauthorizedApiException(
              HttpStatus.unauthorized, 'Access token not valid');
        }
        if (response.statusCode >= HttpStatus.badRequest) {
          final errorMessage = await deserializeAsync(
            await _decodeBodyBytes(response),
            'ErrorMessage',
          ) as ErrorMessage;
          throw ApiException.fromServer(response.statusCode, errorMessage.error,
              errorMessage.errorDescription);
        }

        return response;
      },
      retryIf: (error) =>
          (error is UnauthorizedApiException && authentication != null) ||
          (error is! UnauthorizedApiException),
      onRetry: (error) async {
        if (error is UnauthorizedApiException) {
          await authentication!.onRefresh();
        }
      },
    );
  }

  Future<dynamic> deserializeAsync(
    String value,
    String targetType, {
    bool growable = false,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      _deserialize(value, targetType, growable: growable);

  dynamic _deserialize(
    String value,
    String targetType, {
    bool growable = false,
  }) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType =
        targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
        ? value
        : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => _serialize(value);

  String _serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(
    dynamic value,
    String targetType, {
    bool growable = false,
  }) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'Duration':
          return value is Duration ? value : DurationExtension.tryParse(value);
        case 'ChainOperatorType':
          return ChainOperatorTypeTypeTransformer().decode(value);
        case 'DLCAvailableDTO':
          return DLCAvailableDTO.fromJson(value);
        case 'DLCDTO':
          return DLCDTO.fromJson(value);
        case 'DLCPageResult':
          return DLCPageResult.fromJson(value);
        case 'DLCWithFinishDTO':
          return DLCWithFinishDTO.fromJson(value);
        case 'DLCWithFinishPageResult':
          return DLCWithFinishPageResult.fromJson(value);
        case 'DateDTO':
          return DateDTO.fromJson(value);
        case 'DateTimeDTO':
          return DateTimeDTO.fromJson(value);
        case 'ErrorMessage':
          return ErrorMessage.fromJson(value);
        case 'FilterDTO':
          return FilterDTO.fromJson(value);
        case 'GameAvailableDTO':
          return GameAvailableDTO.fromJson(value);
        case 'GameDTO':
          return GameDTO.fromJson(value);
        case 'GameFinishedReviewDTO':
          return GameFinishedReviewDTO.fromJson(value);
        case 'GameLogDTO':
          return GameLogDTO.fromJson(value);
        case 'GamePageResult':
          return GamePageResult.fromJson(value);
        case 'GamePlayedReviewDTO':
          return GamePlayedReviewDTO.fromJson(value);
        case 'GameStatus':
          return GameStatusTypeTransformer().decode(value);
        case 'GameStreakDTO':
          return GameStreakDTO.fromJson(value);
        case 'GameWithFinishDTO':
          return GameWithFinishDTO.fromJson(value);
        case 'GameWithFinishPageResult':
          return GameWithFinishPageResult.fromJson(value);
        case 'GameWithLogDTO':
          return GameWithLogDTO.fromJson(value);
        case 'GameWithLogPageResult':
          return GameWithLogPageResult.fromJson(value);
        case 'GameWithLogsDTO':
          return GameWithLogsDTO.fromJson(value);
        case 'GamesFinishedReviewDTO':
          return GamesFinishedReviewDTO.fromJson(value);
        case 'GamesLogDTO':
          return GamesLogDTO.fromJson(value);
        case 'GamesPlayedReviewDTO':
          return GamesPlayedReviewDTO.fromJson(value);
        case 'GamesStreakDTO':
          return GamesStreakDTO.fromJson(value);
        case 'GrantType':
          return GrantTypeTypeTransformer().decode(value);
        case 'NewDLCDTO':
          return NewDLCDTO.fromJson(value);
        case 'NewGameDTO':
          return NewGameDTO.fromJson(value);
        case 'NewGameLogDTO':
          return NewGameLogDTO.fromJson(value);
        case 'NewPlatformDTO':
          return NewPlatformDTO.fromJson(value);
        case 'NewTagDTO':
          return NewTagDTO.fromJson(value);
        case 'NewUserDTO':
          return NewUserDTO.fromJson(value);
        case 'OperatorType':
          return OperatorTypeTypeTransformer().decode(value);
        case 'OrderType':
          return OrderTypeTypeTransformer().decode(value);
        case 'PlatformAvailableDTO':
          return PlatformAvailableDTO.fromJson(value);
        case 'PlatformDTO':
          return PlatformDTO.fromJson(value);
        case 'PlatformPageResult':
          return PlatformPageResult.fromJson(value);
        case 'PlatformType':
          return PlatformTypeTypeTransformer().decode(value);
        case 'SearchDTO':
          return SearchDTO.fromJson(value);
        case 'SearchValue':
          return SearchValue.fromJson(value);
        case 'SortDTO':
          return SortDTO.fromJson(value);
        case 'TagDTO':
          return TagDTO.fromJson(value);
        case 'TagPageResult':
          return TagPageResult.fromJson(value);
        case 'TokenResponse':
          return TokenResponse.fromJson(value);
        case 'UserDTO':
          return UserDTO.fromJson(value);
        case 'UserPageResult':
          return UserPageResult.fromJson(value);
        default:
          dynamic match;
          if (value is List &&
              (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => fromJson(
                      v,
                      match,
                      growable: growable,
                    ))
                .toList(growable: growable);
          }
          if (value is Set &&
              (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => fromJson(
                      v,
                      match,
                      growable: growable,
                    ))
                .toSet();
          }
          if (value is Map &&
              (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(
                    v,
                    match,
                    growable: growable,
                  )),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ResponseMismatchApiException(
        'Exception during deserialization.',
        error,
        trace,
      );
    }
    throw ResponseMismatchApiException(
        'Could not find a suitable class for deserialization');
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String' ? message.json : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
      ? message.json
      : ApiClient.fromJson(
          json.decode(message.json),
          targetType,
          growable: message.growable,
        );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async =>
    value == null ? '' : json.encode(value);
