//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class AuthApi {
  AuthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Authenticate through OAuth flow
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GrantType] grantType (required):
  ///   Grant type
  ///
  /// * [String] password:
  ///   Password (used in password grant type)
  ///
  /// * [String] refreshToken:
  ///   Refresh token (used in refresh_token grant type)
  ///
  /// * [String] username:
  ///   Username (used in password grant type)
  Future<Response> tokenWithHttpInfo(GrantType grantType, { String? password, String? refreshToken, String? username, }) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/token';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (grantType != null) {
      formParams[r'grant_type'] = parameterToString(grantType);
    }
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

  /// Authenticate through OAuth flow
  ///
  /// Parameters:
  ///
  /// * [GrantType] grantType (required):
  ///   Grant type
  ///
  /// * [String] password:
  ///   Password (used in password grant type)
  ///
  /// * [String] refreshToken:
  ///   Refresh token (used in refresh_token grant type)
  ///
  /// * [String] username:
  ///   Username (used in password grant type)
  Future<TokenResponse> token(GrantType grantType, { String? password, String? refreshToken, String? username, }) async {
    final response = await tokenWithHttpInfo(grantType,  password: password, refreshToken: refreshToken, username: username, );
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TokenResponse',) as TokenResponse;

    }
    throw ResponseMismatchApiException('Cannot decode 204 response with empty string');
  }
}
