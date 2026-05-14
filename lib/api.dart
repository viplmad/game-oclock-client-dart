//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library n2t.game_oclock.client;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/auth_api.dart';
part 'api/devices_api.dart';
part 'api/health_api.dart';
part 'api/locations_api.dart';
part 'api/media_sessions_api.dart';
part 'api/medias_api.dart';
part 'api/tags_api.dart';
part 'api/users_api.dart';

part 'model/aggregate_group_dto.dart';
part 'model/aggregate_group_search_dto.dart';
part 'model/aggregate_group_sort_dto.dart';
part 'model/aggregate_group_sort_type.dart';
part 'model/aggregate_group_type.dart';
part 'model/aggregate_metric_dto.dart';
part 'model/aggregate_metric_type.dart';
part 'model/aggregate_result_dto.dart';
part 'model/aggregate_search_dto.dart';
part 'model/available_dto.dart';
part 'model/chain_operator_type.dart';
part 'model/date_histogram_interval.dart';
part 'model/date_time_dto.dart';
part 'model/device_dto.dart';
part 'model/error_message.dart';
part 'model/external_media_data_dto.dart';
part 'model/external_media_id_dto.dart';
part 'model/filter_dto.dart';
part 'model/grant_type.dart';
part 'model/list_search_dto.dart';
part 'model/location_available_dto.dart';
part 'model/location_dto.dart';
part 'model/media_available_dto.dart';
part 'model/media_dto.dart';
part 'model/media_data_dto.dart';
part 'model/media_session_dto.dart';
part 'model/media_state_dto.dart';
part 'model/media_status.dart';
part 'model/media_tag_dto.dart';
part 'model/media_type.dart';
part 'model/new_device_dto.dart';
part 'model/new_location_dto.dart';
part 'model/new_media_dto.dart';
part 'model/new_media_state_dto.dart';
part 'model/new_media_value.dart';
part 'model/new_session_dto.dart';
part 'model/new_tag_dto.dart';
part 'model/new_user_dto.dart';
part 'model/operator_type.dart';
part 'model/order_dto.dart';
part 'model/order_type.dart';
part 'model/page_result_dto_device_dto.dart';
part 'model/page_result_dto_location_available_dto.dart';
part 'model/page_result_dto_location_dto.dart';
part 'model/page_result_dto_media_available_dto.dart';
part 'model/page_result_dto_media_dto.dart';
part 'model/page_result_dto_media_session_dto.dart';
part 'model/page_result_dto_media_tag_dto.dart';
part 'model/page_result_dto_session_dto.dart';
part 'model/page_result_dto_session_streak_dto.dart';
part 'model/page_result_dto_tag_dto.dart';
part 'model/page_result_dto_tag_media_dto.dart';
part 'model/page_result_dto_user_dto.dart';
part 'model/page_result_dto.dart';
part 'model/potential_media_dto.dart';
part 'model/search_value.dart';
part 'model/session_dto.dart';
part 'model/session_streak_dto.dart';
part 'model/sort_dto.dart';
part 'model/tag_dto.dart';
part 'model/tag_media_dto.dart';
part 'model/tagged_dto.dart';
part 'model/token_response.dart';
part 'model/user_dto.dart';
part 'model/aggregate_group_result_dto.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
