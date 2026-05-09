//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class SessionStreakDTO {
  /// Returns a new [SessionStreakDTO] instance.
  SessionStreakDTO({
    required this.days,
    this.deviceIds = const [],
    required this.endDate,
    this.mediaIds = const [],
    required this.startDate,
  });

  /// Minimum value: 0
  int days;

  List<String> deviceIds;

  DateTime endDate;

  List<String> mediaIds;

  DateTime startDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SessionStreakDTO &&
    other.days == days &&
    _deepEquality.equals(other.deviceIds, deviceIds) &&
    other.endDate == endDate &&
    _deepEquality.equals(other.mediaIds, mediaIds) &&
    other.startDate == startDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (days.hashCode) +
    (deviceIds.hashCode) +
    (endDate.hashCode) +
    (mediaIds.hashCode) +
    (startDate.hashCode);

  @override
  String toString() => 'SessionStreakDTO[days=$days, deviceIds=$deviceIds, endDate=$endDate, mediaIds=$mediaIds, startDate=$startDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'days'] = this.days;
      json[r'device_ids'] = this.deviceIds;
      json[r'end_date'] = _dateFormatter.format(this.endDate.toUtc());
      json[r'media_ids'] = this.mediaIds;
      json[r'start_date'] = _dateFormatter.format(this.startDate.toUtc());
    return json;
  }

  /// Returns a new [SessionStreakDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SessionStreakDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'days'), 'Required key "SessionStreakDTO[days]" is missing from JSON.');
        assert(json[r'days'] != null, 'Required key "SessionStreakDTO[days]" has a null value in JSON.');
        assert(json.containsKey(r'device_ids'), 'Required key "SessionStreakDTO[device_ids]" is missing from JSON.');
        assert(json[r'device_ids'] != null, 'Required key "SessionStreakDTO[device_ids]" has a null value in JSON.');
        assert(json.containsKey(r'end_date'), 'Required key "SessionStreakDTO[end_date]" is missing from JSON.');
        assert(json[r'end_date'] != null, 'Required key "SessionStreakDTO[end_date]" has a null value in JSON.');
        assert(json.containsKey(r'media_ids'), 'Required key "SessionStreakDTO[media_ids]" is missing from JSON.');
        assert(json[r'media_ids'] != null, 'Required key "SessionStreakDTO[media_ids]" has a null value in JSON.');
        assert(json.containsKey(r'start_date'), 'Required key "SessionStreakDTO[start_date]" is missing from JSON.');
        assert(json[r'start_date'] != null, 'Required key "SessionStreakDTO[start_date]" has a null value in JSON.');
        return true;
      }());

      return SessionStreakDTO(
        days: mapValueOfType<int>(json, r'days')!,
        deviceIds: json[r'device_ids'] is Iterable
            ? (json[r'device_ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        endDate: mapDateTime(json, r'end_date', r'')!,
        mediaIds: json[r'media_ids'] is Iterable
            ? (json[r'media_ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        startDate: mapDateTime(json, r'start_date', r'')!,
      );
    }
    return null;
  }

  static List<SessionStreakDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionStreakDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionStreakDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SessionStreakDTO> mapFromJson(dynamic json) {
    final map = <String, SessionStreakDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionStreakDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SessionStreakDTO-objects as value to a dart map
  static Map<String, List<SessionStreakDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SessionStreakDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SessionStreakDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'days',
    'device_ids',
    'end_date',
    'media_ids',
    'start_date',
  };
}
