//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class DLCFinishApi {
  DLCFinishApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /api/v1/dlcs/{id}/finishes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   DLC finish date to be deleted
  Future<Response> deleteDlcFinishWithHttpInfo(String id, DateDTO dateDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/finishes'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = dateDTO;

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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   DLC finish date to be deleted
  Future<void> deleteDlcFinish(String id, DateDTO dateDTO,) async {
    final response = await deleteDlcFinishWithHttpInfo(id, dateDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/dlcs/{id}/finishes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  Future<Response> getDlcFinishesWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/finishes'
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
  ///   DLC id
  Future<List<DateTime>> getDlcFinishes(String id,) async {
    final response = await getDlcFinishesWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DateTime>') as List)
        .cast<DateTime>()
        .toList(growable: false);

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'GET /api/v1/dlcs/{id}/finishes/first' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  Future<Response> getFirstDlcFinishWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/finishes/first'
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
  ///   DLC id
  Future<DateTime> getFirstDlcFinish(String id,) async {
    final response = await getFirstDlcFinishWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DateTime',) as DateTime;

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'POST /api/v1/dlcs/finished/first' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] q:
  Future<Response> getFirstFinishedDlcsWithHttpInfo(SearchDTO searchDTO, { DateTime? startDate, DateTime? endDate, String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/finished/first';

    // ignore: prefer_final_locals
    Object? postBody = searchDTO;

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

  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] q:
  Future<DLCWithFinishPageResult> getFirstFinishedDlcs(SearchDTO searchDTO, { DateTime? startDate, DateTime? endDate, String? q, }) async {
    final response = await getFirstFinishedDlcsWithHttpInfo(searchDTO,  startDate: startDate, endDate: endDate, q: q, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DLCWithFinishPageResult',) as DLCWithFinishPageResult;

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'POST /api/v1/dlcs/finished/last' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] q:
  Future<Response> getLastFinishedDlcsWithHttpInfo(SearchDTO searchDTO, { DateTime? startDate, DateTime? endDate, String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/finished/last';

    // ignore: prefer_final_locals
    Object? postBody = searchDTO;

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

  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] q:
  Future<DLCWithFinishPageResult> getLastFinishedDlcs(SearchDTO searchDTO, { DateTime? startDate, DateTime? endDate, String? q, }) async {
    final response = await getLastFinishedDlcsWithHttpInfo(searchDTO,  startDate: startDate, endDate: endDate, q: q, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DLCWithFinishPageResult',) as DLCWithFinishPageResult;

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'POST /api/v1/dlcs/{id}/finishes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   DLC finish date to be added
  Future<Response> postDlcFinishWithHttpInfo(String id, DateDTO dateDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/finishes'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = dateDTO;

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
  /// * [String] id (required):
  ///   DLC id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   DLC finish date to be added
  Future<void> postDlcFinish(String id, DateDTO dateDTO,) async {
    final response = await postDlcFinishWithHttpInfo(id, dateDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
