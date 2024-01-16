part of n2t.game_oclock.client;

class AuthApi extends BaseApi {
  /// Performs an HTTP 'POST /auth/token' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrantType] grantType (required):
  ///
  /// * [String] password:
  ///
  /// * [String] refreshToken:
  ///
  /// * [String] username:
  Future<Response> tokenWithHttpInfo(
    GrantType grantType, {
    String? password,
    String? refreshToken,
    String? username,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/token';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    formParams[r'grant_type'] = parameterToString(grantType);
    if (password != null) {
      formParams[r'password'] = parameterToString(password);
    }
    if (refreshToken != null) {
      formParams[r'refresh_token'] = parameterToString(refreshToken);
    }
    if (username != null) {
      formParams[r'username'] = parameterToString(username);
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

  /// Parameters:
  ///
  /// * [GrantType] grantType (required):
  ///
  /// * [String] password:
  ///
  /// * [String] refreshToken:
  ///
  /// * [String] username:
  Future<TokenResponse> token(
    GrantType grantType, {
    String? password,
    String? refreshToken,
    String? username,
  }) async {
    final response = await tokenWithHttpInfo(
      grantType,
      password: password,
      refreshToken: refreshToken,
      username: username,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'TokenResponse',
    ) as TokenResponse;
  }
}
