//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library n2t.game_collection.client;

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
part 'api/dlc_finish_api.dart';
part 'api/dlcs_api.dart';
part 'api/game_finish_api.dart';
part 'api/game_logs_api.dart';
part 'api/games_api.dart';
part 'api/health_check_api.dart';
part 'api/platforms_api.dart';
part 'api/tags_api.dart';
part 'api/users_api.dart';

part 'model/chain_operator_type.dart';
part 'model/dlc_available_dto.dart';
part 'model/dlcdto.dart';
part 'model/dlc_page_result.dart';
part 'model/dlc_with_finish_dto.dart';
part 'model/dlc_with_finish_page_result.dart';
part 'model/date_dto.dart';
part 'model/date_time_dto.dart';
part 'model/error_message.dart';
part 'model/filter_dto.dart';
part 'model/game_available_dto.dart';
part 'model/game_dto.dart';
part 'model/game_log_dto.dart';
part 'model/game_page_result.dart';
part 'model/game_status.dart';
part 'model/game_streak_dto.dart';
part 'model/game_with_finish_dto.dart';
part 'model/game_with_finish_page_result.dart';
part 'model/game_with_log_dto.dart';
part 'model/game_with_log_page_result.dart';
part 'model/game_with_logs_dto.dart';
part 'model/game_with_logs_extended_dto.dart';
part 'model/games_log_dto.dart';
part 'model/games_streak_dto.dart';
part 'model/games_with_logs_extended_dto.dart';
part 'model/grant_type.dart';
part 'model/new_dlcdto.dart';
part 'model/new_game_dto.dart';
part 'model/new_game_log_dto.dart';
part 'model/new_platform_dto.dart';
part 'model/new_tag_dto.dart';
part 'model/new_user_dto.dart';
part 'model/operator_type.dart';
part 'model/order_type.dart';
part 'model/platform_available_dto.dart';
part 'model/platform_dto.dart';
part 'model/platform_page_result.dart';
part 'model/platform_type.dart';
part 'model/search_dto.dart';
part 'model/search_value.dart';
part 'model/sort_dto.dart';
part 'model/tag_dto.dart';
part 'model/tag_page_result.dart';
part 'model/token_response.dart';
part 'model/user_dto.dart';
part 'model/user_page_result.dart';
part 'model/page_result.dart';
part 'model/primary_model.dart';


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
