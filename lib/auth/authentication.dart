part of n2t.game_oclock.client;

abstract class Authentication {
  /// Apply authentication settings to header and query params.
  Future<void> applyToParams(
      List<QueryParam> queryParams, Map<String, String> headerParams);

  /// Callback to refresh authentication
  void onRefresh();
}
