part of n2t.game_oclock.client;

class TagsApi extends BaseApi {
  TagsApi([ApiClient? apiClient]) : super(apiClient);

  /// Performs an HTTP 'DELETE /api/v1/tags/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  Future<Response> deleteTagWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags/{id}'.replaceAll('{id}', id);

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
  ///   Tag id
  Future<void> deleteTag(
    String id,
  ) async {
    final response = await deleteTagWithHttpInfo(
      id,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'GET /api/v1/games/{id}/tags' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<Response> getGameTagsWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/tags'.replaceAll('{id}', id);

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
  Future<List<TagDTO>> getGameTags(
    String id,
  ) async {
    final response = await getGameTagsWithHttpInfo(
      id,
    );
    await checkResponse(response);
    final responseBody = await _decodeBodyBytes(response);
    return (await apiClient.deserializeAsync(responseBody, 'List<TagDTO>')
            as List)
        .cast<TagDTO>()
        .toList(growable: false);
  }

  /// Performs an HTTP 'GET /api/v1/tags/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  Future<Response> getTagWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags/{id}'.replaceAll('{id}', id);

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
  Future<TagDTO> getTag(
    String id,
  ) async {
    final response = await getTagWithHttpInfo(
      id,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'TagDTO',
    ) as TagDTO;
  }

  /// Performs an HTTP 'POST /api/v1/tags/list' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getTagsWithHttpInfo(
    SearchDTO searchDTO, {
    String? q,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags/list';

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
  Future<TagPageResult> getTags(
    SearchDTO searchDTO, {
    String? q,
  }) async {
    final response = await getTagsWithHttpInfo(
      searchDTO,
      q: q,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'TagPageResult',
    ) as TagPageResult;
  }

  /// Performs an HTTP 'POST /api/v1/tags' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [NewTagDTO] newTagDTO (required):
  ///   Tag to be createad
  Future<Response> postTagWithHttpInfo(
    NewTagDTO newTagDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags';

    // ignore: prefer_final_locals
    Object? postBody = newTagDTO;

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
  /// * [NewTagDTO] newTagDTO (required):
  ///   Tag to be createad
  Future<TagDTO> postTag(
    NewTagDTO newTagDTO,
  ) async {
    final response = await postTagWithHttpInfo(
      newTagDTO,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'TagDTO',
    ) as TagDTO;
  }

  /// Performs an HTTP 'PUT /api/v1/tags/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  ///
  /// * [NewTagDTO] newTagDTO (required):
  ///   Tag to be updated
  Future<Response> putTagWithHttpInfo(
    String id,
    NewTagDTO newTagDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = newTagDTO;

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
  ///   Tag id
  ///
  /// * [NewTagDTO] newTagDTO (required):
  ///   Tag to be updated
  Future<void> putTag(
    String id,
    NewTagDTO newTagDTO,
  ) async {
    final response = await putTagWithHttpInfo(
      id,
      newTagDTO,
    );
    await checkEmptyResponse(response);
  }
}
