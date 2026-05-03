//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class DevicesApi {
  DevicesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Aggregate devices
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> aggregateDevicesWithHttpInfo(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/devices/aggregate';

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

  /// Aggregate devices
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<AggregateResultDTO?> aggregateDevices(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateDevicesWithHttpInfo(aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    return null;
  }

  /// Aggregate all devices where a media has been in a session
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
  Future<Response> aggregateMediaDevicesWithHttpInfo(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/devices/aggregate'
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

  /// Aggregate all devices where a media has been in a session
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
  Future<AggregateResultDTO?> aggregateMediaDevices(String id, AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateMediaDevicesWithHttpInfo(id, aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    return null;
  }

  /// Create a device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NewDeviceDTO] newDeviceDTO (required):
  ///   Device to be createad
  Future<Response> createDeviceWithHttpInfo(NewDeviceDTO newDeviceDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/devices';

    // ignore: prefer_final_locals
    Object? postBody = newDeviceDTO;

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

  /// Create a device
  ///
  /// Parameters:
  ///
  /// * [NewDeviceDTO] newDeviceDTO (required):
  ///   Device to be createad
  Future<String?> createDevice(NewDeviceDTO newDeviceDTO,) async {
    final response = await createDeviceWithHttpInfo(newDeviceDTO,);
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;

    }
    return null;
  }

  /// Delete a device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Device id
  Future<Response> deleteDeviceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/devices/{id}'
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

  /// Delete a device
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Device id
  Future<void> deleteDevice(String id,) async {
    final response = await deleteDeviceWithHttpInfo(id,);
  }

  /// Get a device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Device id
  Future<Response> getDeviceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/devices/{id}'
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

  /// Get a device
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Device id
  Future<DeviceDTO?> getDevice(String id,) async {
    final response = await getDeviceWithHttpInfo(id,);
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeviceDTO',) as DeviceDTO;

    }
    return null;
  }

  /// Get devices
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getDevicesWithHttpInfo(ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/devices/list';

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

  /// Get devices
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<PageResultDTODeviceDTO?> getDevices(ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getDevicesWithHttpInfo(listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTODeviceDTO',) as PageResultDTODeviceDTO;

    }
    return null;
  }

  /// Get all devices where a media has been in a session
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
  Future<Response> getMediaDevicesWithHttpInfo(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/medias/{id}/devices/list'
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

  /// Get all devices where a media has been in a session
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
  Future<PageResultDTODeviceDTO?> getMediaDevices(String id, ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getMediaDevicesWithHttpInfo(id, listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTODeviceDTO',) as PageResultDTODeviceDTO;

    }
    return null;
  }

  /// Update a device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Device id
  ///
  /// * [NewDeviceDTO] newDeviceDTO (required):
  ///   Device to be updated
  Future<Response> updateDeviceWithHttpInfo(String id, NewDeviceDTO newDeviceDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/devices/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = newDeviceDTO;

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

  /// Update a device
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Device id
  ///
  /// * [NewDeviceDTO] newDeviceDTO (required):
  ///   Device to be updated
  Future<void> updateDevice(String id, NewDeviceDTO newDeviceDTO,) async {
    final response = await updateDeviceWithHttpInfo(id, newDeviceDTO,);
  }
}
