//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class MediaSessionsApi {
  MediaSessionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Aggregate all first sessions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> aggregateFirstSessionsWithHttpInfo(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/sessions/first/aggregate';

    // ignore: prefer_final_locals
    Object? postBody = aggregateSearchDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Aggregate all first sessions
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<AggregateResultDTO> aggregateFirstSessions(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateFirstSessionsWithHttpInfo(aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Aggregate group all sessions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AggregateGroupSearchDTO] aggregateGroupSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> aggregateGroupSessionsWithHttpInfo(AggregateGroupSearchDTO aggregateGroupSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/sessions/aggregate-group';

    // ignore: prefer_final_locals
    Object? postBody = aggregateGroupSearchDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Aggregate group all sessions
  ///
  /// Parameters:
  ///
  /// * [AggregateGroupSearchDTO] aggregateGroupSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Map<String, AggregateResultDTO>> aggregateGroupSessions(AggregateGroupSearchDTO aggregateGroupSearchDTO, { String? q, }) async {
    final response = await aggregateGroupSessionsWithHttpInfo(aggregateGroupSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, AggregateResultDTO>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, AggregateResultDTO>'),);

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Aggregate all media sessions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> aggregateMediaSessionsWithHttpInfo(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/sessions/aggregate'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = aggregateSearchDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Aggregate all media sessions
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<AggregateResultDTO> aggregateMediaSessions(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateMediaSessionsWithHttpInfo(id, aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Aggregate all sessions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> aggregateSessionsWithHttpInfo(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/sessions/aggregate';

    // ignore: prefer_final_locals
    Object? postBody = aggregateSearchDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Aggregate all sessions
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<AggregateResultDTO> aggregateSessions(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateSessionsWithHttpInfo(aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Create a media session
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [NewSessionDTO] newSessionDTO (required):
  ///   Media session to be added
  Future<Response> createMediaSessionWithHttpInfo(String id, NewSessionDTO newSessionDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/sessions'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = newSessionDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a media session
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [NewSessionDTO] newSessionDTO (required):
  ///   Media session to be added
  Future<void> createMediaSession(String id, NewSessionDTO newSessionDTO,) async {
    final response = await createMediaSessionWithHttpInfo(id, newSessionDTO,);
  }

  /// Delete a media session
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [DateTimeDTO] dateTimeDTO (required):
  ///   Media session datetime to be deleted
  Future<Response> deleteMediaSessionWithHttpInfo(String id, DateTimeDTO dateTimeDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/sessions'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = dateTimeDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a media session
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [DateTimeDTO] dateTimeDTO (required):
  ///   Media session datetime to be deleted
  Future<void> deleteMediaSession(String id, DateTimeDTO dateTimeDTO,) async {
    final response = await deleteMediaSessionWithHttpInfo(id, dateTimeDTO,);
  }

  /// Search first medias by session
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] q:
  Future<Response> getFirstSessionMediasWithHttpInfo(ListSearchDTO listSearchDTO, { DateTime? startDate, DateTime? endDate, String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/sessions/first';

    // ignore: prefer_final_locals
    Object? postBody = listSearchDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'start_date', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'end_date', endDate));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search first medias by session
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] q:
  Future<PageResultDTOMediaSessionDTO> getFirstSessionMedias(ListSearchDTO listSearchDTO, { DateTime? startDate, DateTime? endDate, String? q, }) async {
    final response = await getFirstSessionMediasWithHttpInfo(listSearchDTO,  startDate: startDate, endDate: endDate, q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTOMediaSessionDTO',) as PageResultDTOMediaSessionDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Search last medias by session
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] q:
  Future<Response> getLastSessionMediasWithHttpInfo(ListSearchDTO listSearchDTO, { DateTime? startDate, DateTime? endDate, String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/sessions/last';

    // ignore: prefer_final_locals
    Object? postBody = listSearchDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'start_date', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'end_date', endDate));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search last medias by session
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] q:
  Future<PageResultDTOMediaSessionDTO> getLastSessionMedias(ListSearchDTO listSearchDTO, { DateTime? startDate, DateTime? endDate, String? q, }) async {
    final response = await getLastSessionMediasWithHttpInfo(listSearchDTO,  startDate: startDate, endDate: endDate, q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTOMediaSessionDTO',) as PageResultDTOMediaSessionDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Get a media session
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [DateTimeDTO] dateTimeDTO (required):
  ///   Media session datetime
  Future<Response> getMediaSessionWithHttpInfo(String id, DateTimeDTO dateTimeDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/sessions'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = dateTimeDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a media session
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [DateTimeDTO] dateTimeDTO (required):
  ///   Media session datetime
  Future<SessionDTO> getMediaSession(String id, DateTimeDTO dateTimeDTO,) async {
    final response = await getMediaSessionWithHttpInfo(id, dateTimeDTO,);
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SessionDTO',) as SessionDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Get all media sessions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getMediaSessionsWithHttpInfo(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/sessions/list'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = listSearchDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get all media sessions
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<PageResultDTOSessionDTO> getMediaSessions(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getMediaSessionsWithHttpInfo(id, listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTOSessionDTO',) as PageResultDTOSessionDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Get all sessions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getSessionStreaksWithHttpInfo(ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/sessions/streaks';

    // ignore: prefer_final_locals
    Object? postBody = listSearchDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get all sessions
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<PageResultDTOSessionStreakDTO> getSessionStreaks(ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getSessionStreaksWithHttpInfo(listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTOSessionStreakDTO',) as PageResultDTOSessionStreakDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Get all sessions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getSessionsWithHttpInfo(ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/sessions/list';

    // ignore: prefer_final_locals
    Object? postBody = listSearchDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get all sessions
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<PageResultDTOSessionDTO> getSessions(ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getSessionsWithHttpInfo(listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTOSessionDTO',) as PageResultDTOSessionDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }
}
