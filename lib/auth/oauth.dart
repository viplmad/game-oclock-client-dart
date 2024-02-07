part of n2t.game_oclock.client;

class OAuth implements Authentication {
  OAuth({this.accessToken = '', this.refresh});

  String accessToken;
  final void Function()? refresh;

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
      this.refresh!();
    }
  }
}
