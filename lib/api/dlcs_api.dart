//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;


class DLCsApi {
  DLCsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  ///
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   DLC id
  Future<Response> deleteDlcWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}'
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
  ///   DLC id
  Future<void> deleteDlc(int id,) async {
    final response = await deleteDlcWithHttpInfo(id,);
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
  ///   DLC id
  Future<Response> deleteDlcCoverWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/cover'
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
  ///   DLC id
  Future<void> deleteDlcCover(int id,) async {
    final response = await deleteDlcCoverWithHttpInfo(id,);
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
  ///   DLC id
  Future<Response> getDlcWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}'
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
  ///   DLC id
  Future<DLCDTO> getDlc(int id,) async {
    final response = await getDlcWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DLCDTO',) as DLCDTO;

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
  ///   DLC id
  Future<Response> getDlcBaseGameWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/base-game'
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
  ///   DLC id
  Future<GameDTO> getDlcBaseGame(int id,) async {
    final response = await getDlcBaseGameWithHttpInfo(id,);
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
  Future<Response> getDlcsWithHttpInfo(SearchDTO searchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/list';

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
  Future<DLCPageResult> getDlcs(SearchDTO searchDTO, { String? q, }) async {
    final response = await getDlcsWithHttpInfo(searchDTO,  q: q, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DLCPageResult',) as DLCPageResult;

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
  Future<Response> getGameDlcsWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/dlcs'
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
  Future<List<DLCDTO>> getGameDlcs(int id,) async {
    final response = await getGameDlcsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DLCDTO>') as List)
        .cast<DLCDTO>()
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
  ///   Platform id
  Future<Response> getPlatformDlcsWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/platforms/{id}/dlcs'
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
  Future<List<DLCAvailableDTO>> getPlatformDlcs(int id,) async {
    final response = await getPlatformDlcsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DLCAvailableDTO>') as List)
        .cast<DLCAvailableDTO>()
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
  ///   DLC id
  ///
  /// * [int] otherId (required):
  ///   Game id
  Future<Response> linkDlcGameWithHttpInfo(int id, int otherId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/base-game/{other_id}'
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
  ///   DLC id
  ///
  /// * [int] otherId (required):
  ///   Game id
  Future<void> linkDlcGame(int id, int otherId,) async {
    final response = await linkDlcGameWithHttpInfo(id, otherId,);
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
  ///   DLC id
  ///
  /// * [int] otherId (required):
  ///   Platform id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   Available date
  Future<Response> linkDlcPlatformWithHttpInfo(int id, int otherId, DateDTO dateDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/platforms/{other_id}'
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
  ///   DLC id
  ///
  /// * [int] otherId (required):
  ///   Platform id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   Available date
  Future<void> linkDlcPlatform(int id, int otherId, DateDTO dateDTO,) async {
    final response = await linkDlcPlatformWithHttpInfo(id, otherId, dateDTO,);
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
  /// * [NewDLCDTO] newDLCDTO (required):
  ///   DLC to be createad
  Future<Response> postDlcWithHttpInfo(NewDLCDTO newDLCDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs';

    // ignore: prefer_final_locals
    Object? postBody = newDLCDTO;

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
  /// * [NewDLCDTO] newDLCDTO (required):
  ///   DLC to be createad
  Future<DLCDTO> postDlc(NewDLCDTO newDLCDTO,) async {
    final response = await postDlcWithHttpInfo(newDLCDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DLCDTO',) as DLCDTO;

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
  ///   DLC id
  Future<Response> postDlcCoverWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/cover'
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
  ///   DLC id
  Future<void> postDlcCover(int id,) async {
    final response = await postDlcCoverWithHttpInfo(id,);
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
  ///   DLC id
  ///
  /// * [NewDLCDTO] newDLCDTO (required):
  ///   DLC to be updated
  Future<Response> putDlcWithHttpInfo(int id, NewDLCDTO newDLCDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = newDLCDTO;

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
  ///   DLC id
  ///
  /// * [NewDLCDTO] newDLCDTO (required):
  ///   DLC to be updated
  Future<DLCDTO> putDlc(int id, NewDLCDTO newDLCDTO,) async {
    final response = await putDlcWithHttpInfo(id, newDLCDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DLCDTO',) as DLCDTO;

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
  ///   DLC id
  ///
  /// * [String] body (required):
  ///   New dlc cover name
  Future<Response> putDlcCoverWithHttpInfo(int id, String body,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/cover'
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
  ///   DLC id
  ///
  /// * [String] body (required):
  ///   New dlc cover name
  Future<void> putDlcCover(int id, String body,) async {
    final response = await putDlcCoverWithHttpInfo(id, body,);
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
  ///   DLC id
  Future<Response> unlinkDlcGameWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/base-game'
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
  ///   DLC id
  Future<void> unlinkDlcGame(int id,) async {
    final response = await unlinkDlcGameWithHttpInfo(id,);
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
  ///   DLC id
  ///
  /// * [int] otherId (required):
  ///   Platform id
  Future<Response> unlinkDlcPlatformWithHttpInfo(int id, int otherId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/platforms/{other_id}'
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
  ///   DLC id
  ///
  /// * [int] otherId (required):
  ///   Platform id
  Future<void> unlinkDlcPlatform(int id, int otherId,) async {
    final response = await unlinkDlcPlatformWithHttpInfo(id, otherId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
