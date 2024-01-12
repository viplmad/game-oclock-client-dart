//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class GamesApi {
  GamesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /api/v1/games/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<Response> deleteGameWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<void> deleteGame(String id,) async {
    final response = await deleteGameWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/v1/games/{id}/cover' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<Response> deleteGameCoverWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/cover'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<void> deleteGameCover(String id,) async {
    final response = await deleteGameCoverWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/games/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<Response> getGameWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<GameDTO> getGame(String id,) async {
    final response = await getGameWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GameDTO',) as GameDTO;

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'POST /api/v1/games/list' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getGamesWithHttpInfo(SearchDTO searchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/list';

    // ignore: prefer_final_locals
    Object? postBody = searchDTO;

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

  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<GamePageResult> getGames(SearchDTO searchDTO, { String? q, }) async {
    final response = await getGamesWithHttpInfo(searchDTO,  q: q, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GamePageResult',) as GamePageResult;

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'GET /api/v1/platforms/{id}/games' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  Future<Response> getPlatformGamesWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/platforms/{id}/games'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  Future<List<GameAvailableDTO>> getPlatformGames(String id,) async {
    final response = await getPlatformGamesWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GameAvailableDTO>') as List)
        .cast<GameAvailableDTO>()
        .toList(growable: false);

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'GET /api/v1/tags/{id}/games' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  Future<Response> getTagGamesWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags/{id}/games'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  Future<List<GameDTO>> getTagGames(String id,) async {
    final response = await getTagGamesWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GameDTO>') as List)
        .cast<GameDTO>()
        .toList(growable: false);

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'PUT /api/v1/games/{id}/platforms/{other_id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [String] otherId (required):
  ///   Platform id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   Available date
  Future<Response> linkGamePlatformWithHttpInfo(String id, String otherId, DateDTO dateDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/platforms/{other_id}'
      .replaceAll('{id}', id)
      .replaceAll('{other_id}', otherId);

    // ignore: prefer_final_locals
    Object? postBody = dateDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [String] otherId (required):
  ///   Platform id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   Available date
  Future<void> linkGamePlatform(String id, String otherId, DateDTO dateDTO,) async {
    final response = await linkGamePlatformWithHttpInfo(id, otherId, dateDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/v1/games/{id}/tags/{other_id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [String] otherId (required):
  ///   Tag id
  Future<Response> linkGameTagWithHttpInfo(String id, String otherId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/tags/{other_id}'
      .replaceAll('{id}', id)
      .replaceAll('{other_id}', otherId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [String] otherId (required):
  ///   Tag id
  Future<void> linkGameTag(String id, String otherId,) async {
    final response = await linkGameTagWithHttpInfo(id, otherId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/v1/games' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [NewGameDTO] newGameDTO (required):
  ///   Game to be created
  Future<Response> postGameWithHttpInfo(NewGameDTO newGameDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games';

    // ignore: prefer_final_locals
    Object? postBody = newGameDTO;

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

  /// Parameters:
  ///
  /// * [NewGameDTO] newGameDTO (required):
  ///   Game to be created
  Future<GameDTO> postGame(NewGameDTO newGameDTO,) async {
    final response = await postGameWithHttpInfo(newGameDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GameDTO',) as GameDTO;

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'POST /api/v1/games/{id}/cover' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [MultipartFile] file (required):
  Future<Response> postGameCoverWithHttpInfo(String id, MultipartFile file,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/cover'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    final mp = MultipartRequest('POST', Uri.parse(path));
    mp.files.add(file);
    postBody = mp;

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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [MultipartFile] file (required):
  Future<void> postGameCover(String id, MultipartFile file,) async {
    final response = await postGameCoverWithHttpInfo(id, file,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/v1/games/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [NewGameDTO] newGameDTO (required):
  ///   Game to be updated
  Future<Response> putGameWithHttpInfo(String id, NewGameDTO newGameDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = newGameDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [NewGameDTO] newGameDTO (required):
  ///   Game to be updated
  Future<void> putGame(String id, NewGameDTO newGameDTO,) async {
    final response = await putGameWithHttpInfo(id, newGameDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/v1/games/{id}/cover' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [String] body (required):
  ///   New game cover name
  Future<Response> putGameCoverWithHttpInfo(String id, String body,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/cover'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [String] body (required):
  ///   New game cover name
  Future<void> putGameCover(String id, String body,) async {
    final response = await putGameCoverWithHttpInfo(id, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/v1/games/{id}/platforms/{other_id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [String] otherId (required):
  ///   Platform id
  Future<Response> unlinkGamePlatformWithHttpInfo(String id, String otherId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/platforms/{other_id}'
      .replaceAll('{id}', id)
      .replaceAll('{other_id}', otherId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [String] otherId (required):
  ///   Platform id
  Future<void> unlinkGamePlatform(String id, String otherId,) async {
    final response = await unlinkGamePlatformWithHttpInfo(id, otherId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/v1/games/{id}/tags/{other_id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [String] otherId (required):
  ///   Tag id
  Future<Response> unlinkGameTagWithHttpInfo(String id, String otherId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/tags/{other_id}'
      .replaceAll('{id}', id)
      .replaceAll('{other_id}', otherId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [String] otherId (required):
  ///   Tag id
  Future<void> unlinkGameTag(String id, String otherId,) async {
    final response = await unlinkGameTagWithHttpInfo(id, otherId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
