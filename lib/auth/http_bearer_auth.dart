part of n2t.game_oclock.client;

typedef HttpBearerAuthProvider = String Function();

class HttpBearerAuth implements Authentication {
  HttpBearerAuth({this.refresh});

  dynamic _accessToken;
  final void Function()? refresh;

  dynamic get accessToken => _accessToken;

  set accessToken(dynamic accessToken) {
    if (accessToken is! String && accessToken is! HttpBearerAuthProvider) {
      throw ArgumentError(
          'accessToken value must be either a String or a String Function().');
    }
    _accessToken = accessToken;
  }

  @override
  Future<void> applyToParams(
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) async {
    if (_accessToken == null) {
      return;
    }

    String accessToken;

    if (_accessToken is String) {
      accessToken = _accessToken;
    } else if (_accessToken is HttpBearerAuthProvider) {
      accessToken = _accessToken!();
    } else {
      return;
    }

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
