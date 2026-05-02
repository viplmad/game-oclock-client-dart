//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class TagsApi {
  TagsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Aggregate all tags from a media
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
  Future<Response> aggregateMediaTagsWithHttpInfo(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/tags/aggregate'
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

  /// Aggregate all tags from a media
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
  Future<AggregateResultDTO?> aggregateMediaTags(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateMediaTagsWithHttpInfo(id, aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    return null;
  }

  /// Aggregate tags
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> aggregateTagsWithHttpInfo(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags/aggregate';

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

  /// Aggregate tags
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<AggregateResultDTO?> aggregateTags(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateTagsWithHttpInfo(aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    return null;
  }

  /// Create a tag
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NewTagDTO] newTagDTO (required):
  ///   Tag to be createad
  Future<Response> createTagWithHttpInfo(NewTagDTO newTagDTO,) async {
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

  /// Create a tag
  ///
  /// Parameters:
  ///
  /// * [NewTagDTO] newTagDTO (required):
  ///   Tag to be createad
  Future<String?> createTag(NewTagDTO newTagDTO,) async {
    final response = await createTagWithHttpInfo(newTagDTO,);
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;

    }
    return null;
  }

  /// Delete a tag
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  Future<Response> deleteTagWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags/{id}'
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

  /// Delete a tag
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  Future<void> deleteTag(String id,) async {
    final response = await deleteTagWithHttpInfo(id,);
  }

  /// Get all tags from a media
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
  Future<Response> getMediaTagsWithHttpInfo(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/tags/list'
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

  /// Get all tags from a media
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
  Future<PageResultDTO?> getMediaTags(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getMediaTagsWithHttpInfo(id, listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTO',) as PageResultDTO;

    }
    return null;
  }

  /// Get a tag
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  Future<Response> getTagWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags/{id}'
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

  /// Get a tag
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  Future<TagDTO?> getTag(String id,) async {
    final response = await getTagWithHttpInfo(id,);
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TagDTO',) as TagDTO;

    }
    return null;
  }

  /// Search tags
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getTagsWithHttpInfo(ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags/list';

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

  /// Search tags
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<PageResultDTO?> getTags(ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getTagsWithHttpInfo(listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTO',) as PageResultDTO;

    }
    return null;
  }

  /// Update a tag
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  ///
  /// * [NewTagDTO] newTagDTO (required):
  ///   Tag to be updated
  Future<Response> updateTagWithHttpInfo(String id, NewTagDTO newTagDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags/{id}'
      .replaceAll('{id}', id);

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

  /// Update a tag
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  ///
  /// * [NewTagDTO] newTagDTO (required):
  ///   Tag to be updated
  Future<void> updateTag(String id, NewTagDTO newTagDTO,) async {
    final response = await updateTagWithHttpInfo(id, newTagDTO,);
  }
}
