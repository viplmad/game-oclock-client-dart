part of n2t.game_oclock.client;

class OAuth implements Authentication {
  OAuth({this.accessToken = '', this.refreshToken = '', this.refresh});

  String accessToken;
  String refreshToken;
  final (String, String) Function(String)? refresh;

  @override
  Future<void> applyToParams(
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) async {
    if (accessToken.isNotEmpty) {
      headerParams['Authorization'] = 'Bearer $accessToken';
    }
  }

  @override
  void onRefresh() {
    if (refresh != null) {
      final (newAccessToken, newRefreshToken) = this.refresh!(refreshToken);
      accessToken = newAccessToken;
      refreshToken = newRefreshToken;
    }
  }
}
