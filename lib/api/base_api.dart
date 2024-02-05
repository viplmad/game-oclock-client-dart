part of n2t.game_oclock.client;

abstract class BaseApi {
  BaseApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  Future<void> checkResponse(Response response) async {
    await checkEmptyResponse(response);
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isEmpty || response.statusCode == HttpStatus.noContent) {
      throw ResponseMismatchApiException(
          'Cannot decode 204 response with empty string');
    }
  }

  Future<void> checkEmptyResponse(Response response) async {
    // Handle 401 without body from regular calls
    if (response.statusCode == HttpStatus.unauthorized &&
        response.body.isEmpty) {
      throw ApiException.fromServer(
          response.statusCode, 'unauthorized', 'Access token not valid');
    }

    if (response.statusCode >= HttpStatus.badRequest) {
      final errorMessage = await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ErrorMessage',
      ) as ErrorMessage;
      throw ApiException.fromServer(response.statusCode, errorMessage.error,
          errorMessage.errorDescription);
    }
  }
}
