//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;


class GamesApi {
  GamesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  Future<Response> deleteGameWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}'
      .replaceAll('{id}', id.toString());

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

  ///
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  Future<void> deleteGame(int id,) async {
    final response = await deleteGameWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  Future<Response> deleteGameCoverWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/cover'
      .replaceAll('{id}', id.toString());

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

  ///
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  Future<void> deleteGameCover(int id,) async {
    final response = await deleteGameCoverWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  Future<Response> getGameWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}'
      .replaceAll('{id}', id.toString());

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

  ///
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  Future<GameDTO> getGame(int id,) async {
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

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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

  ///
  ///
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

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Platform id
  Future<Response> getPlatformGamesWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/platforms/{id}/games'
      .replaceAll('{id}', id.toString());

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

  ///
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Platform id
  Future<List<GameAvailableDTO>> getPlatformGames(int id,) async {
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
        .toList();

    }
    throw ApiException.unreachable();
  }

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Tag id
  Future<Response> getTagGamesWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags/{id}/games'
      .replaceAll('{id}', id.toString());

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

  ///
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Tag id
  Future<List<GameDTO>> getTagGames(int id,) async {
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
        .toList();

    }
    throw ApiException.unreachable();
  }

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  ///
  /// * [int] otherId (required):
  ///   Platform id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   Available date
  Future<Response> linkGamePlatformWithHttpInfo(int id, int otherId, DateDTO dateDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/platforms/{other_id}'
      .replaceAll('{id}', id.toString())
      .replaceAll('{other_id}', otherId.toString());

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

  ///
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  ///
  /// * [int] otherId (required):
  ///   Platform id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   Available date
  Future<void> linkGamePlatform(int id, int otherId, DateDTO dateDTO,) async {
    final response = await linkGamePlatformWithHttpInfo(id, otherId, dateDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  ///
  /// * [int] otherId (required):
  ///   Tag id
  Future<Response> linkGameTagWithHttpInfo(int id, int otherId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/tags/{other_id}'
      .replaceAll('{id}', id.toString())
      .replaceAll('{other_id}', otherId.toString());

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

  ///
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  ///
  /// * [int] otherId (required):
  ///   Tag id
  Future<void> linkGameTag(int id, int otherId,) async {
    final response = await linkGameTagWithHttpInfo(id, otherId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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

  ///
  ///
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

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  Future<Response> postGameCoverWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/cover'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (hasFields) {
      postBody = mp;
    }

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

  ///
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  Future<void> postGameCover(int id,) async {
    final response = await postGameCoverWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  ///
  /// * [NewGameDTO] newGameDTO (required):
  ///   Game to be updated
  Future<Response> putGameWithHttpInfo(int id, NewGameDTO newGameDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}'
      .replaceAll('{id}', id.toString());

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

  ///
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  ///
  /// * [NewGameDTO] newGameDTO (required):
  ///   Game to be updated
  Future<GameDTO> putGame(int id, NewGameDTO newGameDTO,) async {
    final response = await putGameWithHttpInfo(id, newGameDTO,);
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

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  ///
  /// * [String] body (required):
  ///   New game cover name
  Future<Response> putGameCoverWithHttpInfo(int id, String body,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/cover'
      .replaceAll('{id}', id.toString());

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

  ///
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  ///
  /// * [String] body (required):
  ///   New game cover name
  Future<void> putGameCover(int id, String body,) async {
    final response = await putGameCoverWithHttpInfo(id, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  ///
  /// * [int] otherId (required):
  ///   Platform id
  Future<Response> unlinkGamePlatformWithHttpInfo(int id, int otherId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/platforms/{other_id}'
      .replaceAll('{id}', id.toString())
      .replaceAll('{other_id}', otherId.toString());

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

  ///
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  ///
  /// * [int] otherId (required):
  ///   Platform id
  Future<void> unlinkGamePlatform(int id, int otherId,) async {
    final response = await unlinkGamePlatformWithHttpInfo(id, otherId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  ///
  /// * [int] otherId (required):
  ///   Tag id
  Future<Response> unlinkGameTagWithHttpInfo(int id, int otherId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/tags/{other_id}'
      .replaceAll('{id}', id.toString())
      .replaceAll('{other_id}', otherId.toString());

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

  ///
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Game id
  ///
  /// * [int] otherId (required):
  ///   Tag id
  Future<void> unlinkGameTag(int id, int otherId,) async {
    final response = await unlinkGameTagWithHttpInfo(id, otherId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
