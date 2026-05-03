//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class UsersApi {
  UsersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Aggregate users
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> aggregateUsersWithHttpInfo(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/aggregate';

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

  /// Aggregate users
  ///
  /// Parameters:
  ///
  /// * [AggregateSearchDTO] aggregateSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<AggregateResultDTO> aggregateUsers(AggregateSearchDTO aggregateSearchDTO, { String? q, }) async {
    final response = await aggregateUsersWithHttpInfo(aggregateSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AggregateResultDTO',) as AggregateResultDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Change a user password
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  ///
  /// * [String] currentPassword (required):
  ///
  /// * [String] newPassword (required):
  Future<Response> changePasswordWithHttpInfo(String id, String currentPassword, String newPassword,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}/change-password'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (currentPassword != null) {
      formParams[r'current_password'] = parameterToString(currentPassword);
    }
    if (newPassword != null) {
      formParams[r'new_password'] = parameterToString(newPassword);
    }

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

  /// Change a user password
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  ///
  /// * [String] currentPassword (required):
  ///
  /// * [String] newPassword (required):
  Future<void> changePassword(String id, String currentPassword, String newPassword,) async {
    final response = await changePasswordWithHttpInfo(id, currentPassword, newPassword,);
  }

  /// Create a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] password (required):
  ///
  /// * [NewUserDTO] newUserDTO (required):
  ///   User to be created
  Future<Response> createUserWithHttpInfo(String password, NewUserDTO newUserDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users';

    // ignore: prefer_final_locals
    Object? postBody = newUserDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'password', password));

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

  /// Create a user
  ///
  /// Parameters:
  ///
  /// * [String] password (required):
  ///
  /// * [NewUserDTO] newUserDTO (required):
  ///   User to be created
  Future<String> createUser(String password, NewUserDTO newUserDTO,) async {
    final response = await createUserWithHttpInfo(password, newUserDTO,);
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Delete a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<Response> deleteUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}'
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

  /// Delete a user
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<void> deleteUser(String id,) async {
    final response = await deleteUserWithHttpInfo(id,);
  }

  /// Demote a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<Response> demoteUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}/demote'
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

  /// Demote a user
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<void> demoteUser(String id,) async {
    final response = await demoteUserWithHttpInfo(id,);
  }

  /// Get current user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCurrentUserWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/myself';

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

  /// Get current user
  Future<UserDTO> getCurrentUser() async {
    final response = await getCurrentUserWithHttpInfo();
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDTO',) as UserDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Get a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<Response> getUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}'
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

  /// Get a user
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<UserDTO> getUser(String id,) async {
    final response = await getUserWithHttpInfo(id,);
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDTO',) as UserDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Search users
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getUsersWithHttpInfo(ListSearchDTO listSearchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/list';

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

  /// Search users
  ///
  /// Parameters:
  ///
  /// * [ListSearchDTO] listSearchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<PageResultDTOUserDTO> getUsers(ListSearchDTO listSearchDTO, { String? q, }) async {
    final response = await getUsersWithHttpInfo(listSearchDTO,  q: q, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageResultDTOUserDTO',) as PageResultDTOUserDTO;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }

  /// Promote a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<Response> promoteUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}/promote'
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

  /// Promote a user
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<void> promoteUser(String id,) async {
    final response = await promoteUserWithHttpInfo(id,);
  }

  /// Update a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  ///
  /// * [NewUserDTO] newUserDTO (required):
  ///   User to be updated
  Future<Response> updateUserWithHttpInfo(String id, NewUserDTO newUserDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = newUserDTO;

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

  /// Update a user
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  ///
  /// * [NewUserDTO] newUserDTO (required):
  ///   User to be updated
  Future<void> updateUser(String id, NewUserDTO newUserDTO,) async {
    final response = await updateUserWithHttpInfo(id, newUserDTO,);
  }
}
