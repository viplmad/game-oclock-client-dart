part of n2t.game_oclock.client;

class HttpBasicAuth implements Authentication {
  HttpBasicAuth({this.username = '', this.password = '', this.refresh});

  String username;
  String password;
  final void Function()? refresh;

  @override
  Future<void> applyToParams(
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) async {
    if (username.isNotEmpty && password.isNotEmpty) {
      final credentials = '$username:$password';
      headerParams['Authorization'] =
          'Basic ${base64.encode(utf8.encode(credentials))}';
    }
  }

  @override
  void onRefresh() {
    if (refresh != null) {
      this.refresh!();
    }
  }
}
