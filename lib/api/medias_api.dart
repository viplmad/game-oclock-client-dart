//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class MediasApi {
  MediasApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Aggregate medias where a session has been on a specified device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Device id
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> aggregateDeviceMediasWithHttpInfo(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/devices/{id}/medias/aggregate'
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

  /// Aggregate medias where a session has been on a specified device
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Device id
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<AggregateResultDTO?> aggregateDeviceMedias(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateDeviceMediasWithHttpInfo(id, aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    return null;
  }

  /// Aggregate all medias avaiable in a location
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Location id
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> aggregateLocationMediasWithHttpInfo(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/locations/{id}/medias/aggregate'
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

  /// Aggregate all medias avaiable in a location
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Location id
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<AggregateResultDTO?> aggregateLocationMedias(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateLocationMediasWithHttpInfo(id, aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    return null;
  }

  /// Aggregate medias
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> aggregateMediasWithHttpInfo(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/aggregate';

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

  /// Aggregate medias
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<AggregateResultDTO?> aggregateMedias(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateMediasWithHttpInfo(aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    return null;
  }

  /// Aggregate all medias with specified tag
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> aggregateTagMediasWithHttpInfo(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags/{id}/medias/aggregate'
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

  /// Aggregate all medias with specified tag
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<AggregateResultDTO?> aggregateTagMedias(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateTagMediasWithHttpInfo(id, aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    return null;
  }

  /// Create a media
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NewMediaDTO] newMediaDTO (required):
  ///   Media to be created
  Future<Response> createMediaWithHttpInfo(NewMediaDTO newMediaDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias';

    // ignore: prefer_final_locals
    Object? postBody = newMediaDTO;

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

  /// Create a media
  ///
  /// Parameters:
  ///
  /// * [NewMediaDTO] newMediaDTO (required):
  ///   Media to be created
  Future<String?> createMedia(NewMediaDTO newMediaDTO,) async {
    final response = await createMediaWithHttpInfo(newMediaDTO,);
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;

    }
    return null;
  }

  /// Delete a media
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  Future<Response> deleteMediaWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}'
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

  /// Delete a media
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  Future<void> deleteMedia(String id,) async {
    final response = await deleteMediaWithHttpInfo(id,);
  }

  /// Get medias where a session has been on a specified device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Device id
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getDeviceMediasWithHttpInfo(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/devices/{id}/medias/list'
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

  /// Get medias where a session has been on a specified device
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Device id
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<PageResultDTO?> getDeviceMedias(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getDeviceMediasWithHttpInfo(id, listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTO',) as PageResultDTO;

    }
    return null;
  }

  /// Get all medias avaiable in a location
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Location id
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getLocationMediasWithHttpInfo(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/locations/{id}/medias/list'
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

  /// Get all medias avaiable in a location
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Location id
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<PageResultDTO?> getLocationMedias(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getLocationMediasWithHttpInfo(id, listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTO',) as PageResultDTO;

    }
    return null;
  }

  /// Get a media
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  Future<Response> getMediaWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}'
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

  /// Get a media
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  Future<MediaDTO?> getMedia(String id,) async {
    final response = await getMediaWithHttpInfo(id,);
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MediaDTO',) as MediaDTO;

    }
    return null;
  }

  /// Search medias
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getMediasWithHttpInfo(ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/list';

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

  /// Search medias
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<PageResultDTO?> getMedias(ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getMediasWithHttpInfo(listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTO',) as PageResultDTO;

    }
    return null;
  }

  /// Get all medias with specified tag
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getTagMediasWithHttpInfo(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/tags/{id}/medias/list'
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

  /// Get all medias with specified tag
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Tag id
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<PageResultDTO?> getTagMedias(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getTagMediasWithHttpInfo(id, listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTO',) as PageResultDTO;

    }
    return null;
  }

  /// Add a location as available to a media
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [String] otherId (required):
  ///   Location id
  ///
  /// * [DateTimeDTO] dateTimeDTO (required):
  ///   Available date
  Future<Response> linkMediaLocationWithHttpInfo(String id, String otherId, DateTimeDTO dateTimeDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/locations/{other_id}'
      .replaceAll('{id}', id)
      .replaceAll('{other_id}', otherId);

    // ignore: prefer_final_locals
    Object? postBody = dateTimeDTO;

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

  /// Add a location as available to a media
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [String] otherId (required):
  ///   Location id
  ///
  /// * [DateTimeDTO] dateTimeDTO (required):
  ///   Available date
  Future<void> linkMediaLocation(String id, String otherId, DateTimeDTO dateTimeDTO,) async {
    final response = await linkMediaLocationWithHttpInfo(id, otherId, dateTimeDTO,);
  }

  /// Add a tag to a media
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [String] otherId (required):
  ///   Tag id
  ///
  /// * [OrderDTO] orderDTO (required):
  ///   Order
  Future<Response> linkMediaTagWithHttpInfo(String id, String otherId, OrderDTO orderDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/tags/{other_id}'
      .replaceAll('{id}', id)
      .replaceAll('{other_id}', otherId);

    // ignore: prefer_final_locals
    Object? postBody = orderDTO;

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

  /// Add a tag to a media
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [String] otherId (required):
  ///   Tag id
  ///
  /// * [OrderDTO] orderDTO (required):
  ///   Order
  Future<void> linkMediaTag(String id, String otherId, OrderDTO orderDTO,) async {
    final response = await linkMediaTagWithHttpInfo(id, otherId, orderDTO,);
  }

  /// Add a media as parent of another
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [String] otherId (required):
  ///   Parent Media id
  Future<Response> linkParentMediaWithHttpInfo(String id, String otherId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/parent/{other_id}'
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

  /// Add a media as parent of another
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [String] otherId (required):
  ///   Parent Media id
  Future<void> linkParentMedia(String id, String otherId,) async {
    final response = await linkParentMediaWithHttpInfo(id, otherId,);
  }

  /// Performs an HTTP 'POST /api/v1/medias/search' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] source_ (required):
  ///
  /// * [String] q (required):
  Future<Response> searchExternalMediasWithHttpInfo(String source_, String q,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'source', source_));
      queryParams.addAll(_queryParams('', 'q', q));

    const contentTypes = <String>[];


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
  /// * [String] source_ (required):
  ///
  /// * [String] q (required):
  Future<List<PotentialMediaDTO>?> searchExternalMedias(String source_, String q,) async {
    final response = await searchExternalMediasWithHttpInfo(source_, q,);
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PotentialMediaDTO>') as List)
        .cast<PotentialMediaDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Sync a media
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  Future<Response> syncMediaWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/sync'
      .replaceAll('{id}', id);

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

  /// Sync a media
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  Future<void> syncMedia(String id,) async {
    final response = await syncMediaWithHttpInfo(id,);
  }

  /// Remove a location as available from a media
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [String] otherId (required):
  ///   Location id
  Future<Response> unlinkMediaLocationWithHttpInfo(String id, String otherId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/locations/{other_id}'
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

  /// Remove a location as available from a media
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [String] otherId (required):
  ///   Location id
  Future<void> unlinkMediaLocation(String id, String otherId,) async {
    final response = await unlinkMediaLocationWithHttpInfo(id, otherId,);
  }

  /// Remove tag from a media
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [String] otherId (required):
  ///   Tag id
  Future<Response> unlinkMediaTagWithHttpInfo(String id, String otherId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/tags/{other_id}'
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

  /// Remove tag from a media
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [String] otherId (required):
  ///   Tag id
  Future<void> unlinkMediaTag(String id, String otherId,) async {
    final response = await unlinkMediaTagWithHttpInfo(id, otherId,);
  }

  /// Remove a media parent
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  Future<Response> unlinkParentMediaWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/parent'
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

  /// Remove a media parent
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  Future<void> unlinkParentMedia(String id,) async {
    final response = await unlinkParentMediaWithHttpInfo(id,);
  }

  /// Update a media
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [NewMediaDTO] newMediaDTO (required):
  ///   Media to be updated
  Future<Response> updateMediaWithHttpInfo(String id, NewMediaDTO newMediaDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = newMediaDTO;

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

  /// Update a media
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Media id
  ///
  /// * [NewMediaDTO] newMediaDTO (required):
  ///   Media to be updated
  Future<void> updateMedia(String id, NewMediaDTO newMediaDTO,) async {
    final response = await updateMediaWithHttpInfo(id, newMediaDTO,);
  }
}
