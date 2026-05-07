//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class LocationsApi {
  LocationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Aggregate locations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> aggregateLocationsWithHttpInfo(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/locations/aggregate';

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

  /// Aggregate locations
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<AggregateResultDTO> aggregateLocations(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateLocationsWithHttpInfo(aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Aggregate all locations where a media is available
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
  Future<Response> aggregateMediaLocationsWithHttpInfo(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/locations/aggregate'
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

  /// Aggregate all locations where a media is available
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
  Future<AggregateResultDTO> aggregateMediaLocations(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateMediaLocationsWithHttpInfo(id, aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Create a location
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NewLocationDTO] newLocationDTO (required):
  ///   Location to be createad
  Future<Response> createLocationWithHttpInfo(NewLocationDTO newLocationDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/locations';

    // ignore: prefer_final_locals
    Object? postBody = newLocationDTO;

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

  /// Create a location
  ///
  /// Parameters:
  ///
  /// * [NewLocationDTO] newLocationDTO (required):
  ///   Location to be createad
  Future<String> createLocation(NewLocationDTO newLocationDTO,) async {
    final response = await createLocationWithHttpInfo(newLocationDTO,);
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await decodeBodyBytes(response), 'String',) as String;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Delete a location
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Location id
  Future<Response> deleteLocationWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/locations/{id}'
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

  /// Delete a location
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Location id
  Future<void> deleteLocation(String id,) async {
    final response = await deleteLocationWithHttpInfo(id,);
  }

  /// Get a location
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Location id
  Future<Response> getLocationWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/locations/{id}'
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

  /// Get a location
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Location id
  Future<LocationDTO> getLocation(String id,) async {
    final response = await getLocationWithHttpInfo(id,);
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await decodeBodyBytes(response), 'LocationDTO',) as LocationDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Get locations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getLocationsWithHttpInfo(ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/locations/list';

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

  /// Get locations
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<PageResultDTOLocationDTO> getLocations(ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getLocationsWithHttpInfo(listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await decodeBodyBytes(response), 'PageResultDTOLocationDTO',) as PageResultDTOLocationDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Get all locations where a media is available
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
  Future<Response> getMediaLocationsWithHttpInfo(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/locations/list'
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

  /// Get all locations where a media is available
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
  Future<PageResultDTOLocationAvailableDTO> getMediaLocations(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getMediaLocationsWithHttpInfo(id, listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await decodeBodyBytes(response), 'PageResultDTOLocationAvailableDTO',) as PageResultDTOLocationAvailableDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Update a location
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Location id
  ///
  /// * [NewLocationDTO] newLocationDTO (required):
  ///   Location to be updated
  Future<Response> updateLocationWithHttpInfo(String id, NewLocationDTO newLocationDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/locations/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = newLocationDTO;

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

  /// Update a location
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Location id
  ///
  /// * [NewLocationDTO] newLocationDTO (required):
  ///   Location to be updated
  Future<void> updateLocation(String id, NewLocationDTO newLocationDTO,) async {
    final response = await updateLocationWithHttpInfo(id, newLocationDTO,);
  }
}
