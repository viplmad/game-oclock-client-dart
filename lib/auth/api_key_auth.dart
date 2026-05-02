//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class ApiKeyAuth implements Authentication {
  ApiKeyAuth(this.location, this.paramName, {this.refresh});

  final String location;
  final String paramName;

  String apiKeyPrefix = '';
  String apiKey = '';
  final FutureOr<void> Function()? refresh;

  @override
  Future<void> applyToParams(List<QueryParam> queryParams, Map<String, String> headerParams,) async {
    final paramValue = apiKeyPrefix.isEmpty ? apiKey : '$apiKeyPrefix $apiKey';

    if (paramValue.isNotEmpty) {
      if (location == 'query') {
        queryParams.add(QueryParam(paramName, paramValue));
      } else if (location == 'header') {
        headerParams[paramName] = paramValue;
      } else if (location == 'cookie') {
        headerParams.update(
          'Cookie',
          (existingCookie) => '$existingCookie; $paramName=$paramValue',
          ifAbsent: () => '$paramName=$paramValue',
        );
      }
    }
  }

  @override
  FutureOr<void> onRefresh() async {
    if (refresh != null) {
      await this.refresh!();
    }
  }
}
