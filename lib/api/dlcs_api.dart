part of n2t.game_oclock.client;

class DLCsApi extends BaseApi {
  DLCsApi([ApiClient? apiClient]) : super(apiClient);

  /// Performs an HTTP 'DELETE /api/v1/dlcs/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  Future<Response> deleteDlcWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}'.replaceAll('{id}', id);

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
  ///   DLC id
  Future<void> deleteDlc(
    String id,
  ) async {
    final response = await deleteDlcWithHttpInfo(
      id,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'DELETE /api/v1/dlcs/{id}/cover' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  Future<Response> deleteDlcCoverWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/cover'.replaceAll('{id}', id);

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
  ///   DLC id
  Future<void> deleteDlcCover(
    String id,
  ) async {
    final response = await deleteDlcCoverWithHttpInfo(
      id,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'GET /api/v1/dlcs/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  Future<Response> getDlcWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}'.replaceAll('{id}', id);

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
  ///   DLC id
  Future<DLCDTO> getDlc(
    String id,
  ) async {
    final response = await getDlcWithHttpInfo(
      id,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'DLCDTO',
    ) as DLCDTO;
  }

  /// Performs an HTTP 'GET /api/v1/dlcs/{id}/base-game' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  Future<Response> getDlcBaseGameWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/base-game'.replaceAll('{id}', id);

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
  ///   DLC id
  Future<GameDTO> getDlcBaseGame(
    String id,
  ) async {
    final response = await getDlcBaseGameWithHttpInfo(
      id,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'GameDTO',
    ) as GameDTO;
  }

  /// Performs an HTTP 'POST /api/v1/dlcs/list' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getDlcsWithHttpInfo(
    SearchDTO searchDTO, {
    String? q,
  }) async {
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

  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<DLCPageResult> getDlcs(
    SearchDTO searchDTO, {
    String? q,
  }) async {
    final response = await getDlcsWithHttpInfo(
      searchDTO,
      q: q,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'DLCPageResult',
    ) as DLCPageResult;
  }

  /// Performs an HTTP 'GET /api/v1/games/{id}/dlcs' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<Response> getGameDlcsWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/dlcs'.replaceAll('{id}', id);

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
  Future<List<DLCDTO>> getGameDlcs(
    String id,
  ) async {
    final response = await getGameDlcsWithHttpInfo(
      id,
    );
    await checkResponse(response);
    final responseBody = await _decodeBodyBytes(response);
    return (await apiClient.deserializeAsync(responseBody, 'List<DLCDTO>')
            as List)
        .cast<DLCDTO>()
        .toList(growable: false);
  }

  /// Performs an HTTP 'GET /api/v1/platforms/{id}/dlcs' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  Future<Response> getPlatformDlcsWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/platforms/{id}/dlcs'.replaceAll('{id}', id);

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
  Future<List<DLCAvailableDTO>> getPlatformDlcs(
    String id,
  ) async {
    final response = await getPlatformDlcsWithHttpInfo(
      id,
    );
    await checkResponse(response);
    final responseBody = await _decodeBodyBytes(response);
    return (await apiClient.deserializeAsync(
            responseBody, 'List<DLCAvailableDTO>') as List)
        .cast<DLCAvailableDTO>()
        .toList(growable: false);
  }

  /// Performs an HTTP 'PUT /api/v1/dlcs/{id}/base-game/{other_id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  ///
  /// * [String] otherId (required):
  ///   Game id
  Future<Response> linkDlcGameWithHttpInfo(
    String id,
    String otherId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/base-game/{other_id}'
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
  ///   DLC id
  ///
  /// * [String] otherId (required):
  ///   Game id
  Future<void> linkDlcGame(
    String id,
    String otherId,
  ) async {
    final response = await linkDlcGameWithHttpInfo(
      id,
      otherId,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'PUT /api/v1/dlcs/{id}/platforms/{other_id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  ///
  /// * [String] otherId (required):
  ///   Platform id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   Available date
  Future<Response> linkDlcPlatformWithHttpInfo(
    String id,
    String otherId,
    DateDTO dateDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/platforms/{other_id}'
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
  ///   DLC id
  ///
  /// * [String] otherId (required):
  ///   Platform id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   Available date
  Future<void> linkDlcPlatform(
    String id,
    String otherId,
    DateDTO dateDTO,
  ) async {
    final response = await linkDlcPlatformWithHttpInfo(
      id,
      otherId,
      dateDTO,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'POST /api/v1/dlcs' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [NewDLCDTO] newDLCDTO (required):
  ///   DLC to be createad
  Future<Response> postDlcWithHttpInfo(
    NewDLCDTO newDLCDTO,
  ) async {
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

  /// Parameters:
  ///
  /// * [NewDLCDTO] newDLCDTO (required):
  ///   DLC to be createad
  Future<DLCDTO> postDlc(
    NewDLCDTO newDLCDTO,
  ) async {
    final response = await postDlcWithHttpInfo(
      newDLCDTO,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'DLCDTO',
    ) as DLCDTO;
  }

  /// Performs an HTTP 'POST /api/v1/dlcs/{id}/cover' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  ///
  /// * [MultipartFile] file (required):
  Future<Response> postDlcCoverWithHttpInfo(
    String id,
    MultipartFile file,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/cover'.replaceAll('{id}', id);

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
  ///   DLC id
  ///
  /// * [MultipartFile] file (required):
  Future<void> postDlcCover(
    String id,
    MultipartFile file,
  ) async {
    final response = await postDlcCoverWithHttpInfo(
      id,
      file,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'PUT /api/v1/dlcs/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  ///
  /// * [NewDLCDTO] newDLCDTO (required):
  ///   DLC to be updated
  Future<Response> putDlcWithHttpInfo(
    String id,
    NewDLCDTO newDLCDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}'.replaceAll('{id}', id);

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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  ///
  /// * [NewDLCDTO] newDLCDTO (required):
  ///   DLC to be updated
  Future<void> putDlc(
    String id,
    NewDLCDTO newDLCDTO,
  ) async {
    final response = await putDlcWithHttpInfo(
      id,
      newDLCDTO,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'PUT /api/v1/dlcs/{id}/cover' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  ///
  /// * [String] body (required):
  ///   New dlc cover name
  Future<Response> putDlcCoverWithHttpInfo(
    String id,
    String body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/cover'.replaceAll('{id}', id);

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
  ///   DLC id
  ///
  /// * [String] body (required):
  ///   New dlc cover name
  Future<void> putDlcCover(
    String id,
    String body,
  ) async {
    final response = await putDlcCoverWithHttpInfo(
      id,
      body,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'DELETE /api/v1/dlcs/{id}/base-game' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  Future<Response> unlinkDlcGameWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/base-game'.replaceAll('{id}', id);

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
  ///   DLC id
  Future<void> unlinkDlcGame(
    String id,
  ) async {
    final response = await unlinkDlcGameWithHttpInfo(
      id,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'DELETE /api/v1/dlcs/{id}/platforms/{other_id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  ///
  /// * [String] otherId (required):
  ///   Platform id
  Future<Response> unlinkDlcPlatformWithHttpInfo(
    String id,
    String otherId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/platforms/{other_id}'
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
  ///   DLC id
  ///
  /// * [String] otherId (required):
  ///   Platform id
  Future<void> unlinkDlcPlatform(
    String id,
    String otherId,
  ) async {
    final response = await unlinkDlcPlatformWithHttpInfo(
      id,
      otherId,
    );
    await checkEmptyResponse(response);
  }
}
