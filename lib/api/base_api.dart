//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

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
      throw DeserializationErrorApiException(
          'Cannot decode 204 response with empty string');
    }
  }

  Future<void> checkEmptyResponse(Response response) async {
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
