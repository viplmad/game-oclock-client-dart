part of n2t.game_oclock.client;

class HealthCheckApi extends BaseApi {
  /// Performs an HTTP 'GET /health' operation and returns the [Response].
  Future<Response> healthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/health';

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

  Future<void> health() async {
    final response = await healthWithHttpInfo();
    await checkEmptyResponse(response);
  }
}
