part of n2t.game_oclock.client;

class UsersApi extends BaseApi {
  UsersApi([ApiClient? apiClient]) : super(apiClient);

  /// Performs an HTTP 'PUT /api/v1/myself/change-password' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] currentPassword (required):
  ///
  /// * [String] newPassword (required):
  Future<Response> changePasswordWithHttpInfo(
    String currentPassword,
    String newPassword,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/myself/change-password';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    formParams[r'current_password'] = parameterToString(currentPassword);
    formParams[r'new_password'] = parameterToString(newPassword);

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
  /// * [String] currentPassword (required):
  ///
  /// * [String] newPassword (required):
  Future<void> changePassword(
    String currentPassword,
    String newPassword,
  ) async {
    final response = await changePasswordWithHttpInfo(
      currentPassword,
      newPassword,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'DELETE /api/v1/users/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<Response> deleteUserWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}'.replaceAll('{id}', id);

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
  ///   User id
  Future<void> deleteUser(
    String id,
  ) async {
    final response = await deleteUserWithHttpInfo(
      id,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'PUT /api/v1/users/{id}/demote' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<Response> demoteUserWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}/demote'.replaceAll('{id}', id);

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
  ///   User id
  Future<void> demoteUser(
    String id,
  ) async {
    final response = await demoteUserWithHttpInfo(
      id,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'GET /api/v1/myself' operation and returns the [Response].
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

  Future<UserDTO> getCurrentUser() async {
    final response = await getCurrentUserWithHttpInfo();
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'UserDTO',
    ) as UserDTO;
  }

  /// Performs an HTTP 'GET /api/v1/users/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<Response> getUserWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}'.replaceAll('{id}', id);

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
  ///   User id
  Future<UserDTO> getUser(
    String id,
  ) async {
    final response = await getUserWithHttpInfo(
      id,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'UserDTO',
    ) as UserDTO;
  }

  /// Performs an HTTP 'POST /api/v1/users/list' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getUsersWithHttpInfo(
    SearchDTO searchDTO, {
    String? q,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/list';

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
  Future<UserPageResult> getUsers(
    SearchDTO searchDTO, {
    String? q,
  }) async {
    final response = await getUsersWithHttpInfo(
      searchDTO,
      q: q,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'UserPageResult',
    ) as UserPageResult;
  }

  /// Performs an HTTP 'POST /api/v1/users' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] password (required):
  ///
  /// * [NewUserDTO] newUserDTO (required):
  ///   User to be created
  Future<Response> postUserWithHttpInfo(
    String password,
    NewUserDTO newUserDTO,
  ) async {
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

  /// Parameters:
  ///
  /// * [String] password (required):
  ///
  /// * [NewUserDTO] newUserDTO (required):
  ///   User to be created
  Future<UserDTO> postUser(
    String password,
    NewUserDTO newUserDTO,
  ) async {
    final response = await postUserWithHttpInfo(
      password,
      newUserDTO,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'UserDTO',
    ) as UserDTO;
  }

  /// Performs an HTTP 'PUT /api/v1/users/{id}/promote' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<Response> promoteUserWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}/promote'.replaceAll('{id}', id);

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
  ///   User id
  Future<void> promoteUser(
    String id,
  ) async {
    final response = await promoteUserWithHttpInfo(
      id,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'PUT /api/v1/users/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  ///
  /// * [NewUserDTO] newUserDTO (required):
  ///   User to be updated
  Future<Response> putUserWithHttpInfo(
    String id,
    NewUserDTO newUserDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}'.replaceAll('{id}', id);

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

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  ///
  /// * [NewUserDTO] newUserDTO (required):
  ///   User to be updated
  Future<void> putUser(
    String id,
    NewUserDTO newUserDTO,
  ) async {
    final response = await putUserWithHttpInfo(
      id,
      newUserDTO,
    );
    await checkEmptyResponse(response);
  }
}
