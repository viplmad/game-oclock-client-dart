//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class OAuth implements Authentication {
  OAuth({this.accessToken = '', this.refreshToken = '', this.refresh});

  String accessToken;
  String refreshToken;
  final FutureOr<(String, String)> Function(String)? refresh;

  @override
  Future<void> applyToParams(List<QueryParam> queryParams, Map<String, String> headerParams,) async {
    if (accessToken.isNotEmpty) {
      headerParams['Authorization'] = 'Bearer $accessToken';
    }
  }

  @override
  FutureOr<void> onRefresh() async {
    if (refresh != null) {
      final (newAccessToken, newRefreshToken) =
          await this.refresh!(refreshToken);
      accessToken = newAccessToken;
      refreshToken = newRefreshToken;
    }
  }
}
