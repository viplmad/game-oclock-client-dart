//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class SessionDTO {
  /// Returns a new [SessionDTO] instance.
  SessionDTO({
    required this.addedDatetime,
    this.deviceId,
    required this.endDatetime,
    this.finishedStatus,
    required this.groupId,
    required this.mediaId,
    required this.startDatetime,
    required this.started,
    required this.time,
    required this.updatedDatetime,
  });

  DateTime addedDatetime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

  DateTime endDatetime;

  MediaStatus? finishedStatus;

  String groupId;

  String mediaId;

  DateTime startDatetime;

  bool started;

  String time;

  DateTime updatedDatetime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SessionDTO &&
    other.addedDatetime == addedDatetime &&
    other.deviceId == deviceId &&
    other.endDatetime == endDatetime &&
    other.finishedStatus == finishedStatus &&
    other.groupId == groupId &&
    other.mediaId == mediaId &&
    other.startDatetime == startDatetime &&
    other.started == started &&
    other.time == time &&
    other.updatedDatetime == updatedDatetime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addedDatetime.hashCode) +
    (deviceId == null ? 0 : deviceId!.hashCode) +
    (endDatetime.hashCode) +
    (finishedStatus == null ? 0 : finishedStatus!.hashCode) +
    (groupId.hashCode) +
    (mediaId.hashCode) +
    (startDatetime.hashCode) +
    (started.hashCode) +
    (time.hashCode) +
    (updatedDatetime.hashCode);

  @override
  String toString() => 'SessionDTO[addedDatetime=$addedDatetime, deviceId=$deviceId, endDatetime=$endDatetime, finishedStatus=$finishedStatus, groupId=$groupId, mediaId=$mediaId, startDatetime=$startDatetime, started=$started, time=$time, updatedDatetime=$updatedDatetime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'added_datetime'] = this.addedDatetime.toUtc().toIso8601String();
    if (this.deviceId != null) {
      json[r'device_id'] = this.deviceId;
    } else {
      json[r'device_id'] = null;
    }
      json[r'end_datetime'] = this.endDatetime.toUtc().toIso8601String();
    if (this.finishedStatus != null) {
      json[r'finished_status'] = this.finishedStatus;
    } else {
      json[r'finished_status'] = null;
    }
      json[r'group_id'] = this.groupId;
      json[r'media_id'] = this.mediaId;
      json[r'start_datetime'] = this.startDatetime.toUtc().toIso8601String();
      json[r'started'] = this.started;
      json[r'time'] = this.time;
      json[r'updated_datetime'] = this.updatedDatetime.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SessionDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SessionDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'added_datetime'), 'Required key "SessionDTO[added_datetime]" is missing from JSON.');
        assert(json[r'added_datetime'] != null, 'Required key "SessionDTO[added_datetime]" has a null value in JSON.');
        assert(json.containsKey(r'end_datetime'), 'Required key "SessionDTO[end_datetime]" is missing from JSON.');
        assert(json[r'end_datetime'] != null, 'Required key "SessionDTO[end_datetime]" has a null value in JSON.');
        assert(json.containsKey(r'group_id'), 'Required key "SessionDTO[group_id]" is missing from JSON.');
        assert(json[r'group_id'] != null, 'Required key "SessionDTO[group_id]" has a null value in JSON.');
        assert(json.containsKey(r'media_id'), 'Required key "SessionDTO[media_id]" is missing from JSON.');
        assert(json[r'media_id'] != null, 'Required key "SessionDTO[media_id]" has a null value in JSON.');
        assert(json.containsKey(r'start_datetime'), 'Required key "SessionDTO[start_datetime]" is missing from JSON.');
        assert(json[r'start_datetime'] != null, 'Required key "SessionDTO[start_datetime]" has a null value in JSON.');
        assert(json.containsKey(r'started'), 'Required key "SessionDTO[started]" is missing from JSON.');
        assert(json[r'started'] != null, 'Required key "SessionDTO[started]" has a null value in JSON.');
        assert(json.containsKey(r'time'), 'Required key "SessionDTO[time]" is missing from JSON.');
        assert(json[r'time'] != null, 'Required key "SessionDTO[time]" has a null value in JSON.');
        assert(json.containsKey(r'updated_datetime'), 'Required key "SessionDTO[updated_datetime]" is missing from JSON.');
        assert(json[r'updated_datetime'] != null, 'Required key "SessionDTO[updated_datetime]" has a null value in JSON.');
        return true;
      }());

      return SessionDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', r'')!,
        deviceId: mapValueOfType<String>(json, r'device_id'),
        endDatetime: mapDateTime(json, r'end_datetime', r'')!,
        finishedStatus: MediaStatus.fromJson(json[r'finished_status']),
        groupId: mapValueOfType<String>(json, r'group_id')!,
        mediaId: mapValueOfType<String>(json, r'media_id')!,
        startDatetime: mapDateTime(json, r'start_datetime', r'')!,
        started: mapValueOfType<bool>(json, r'started')!,
        time: mapValueOfType<String>(json, r'time')!,
        updatedDatetime: mapDateTime(json, r'updated_datetime', r'')!,
      );
    }
    return null;
  }

  static List<SessionDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SessionDTO> mapFromJson(dynamic json) {
    final map = <String, SessionDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SessionDTO-objects as value to a dart map
  static Map<String, List<SessionDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SessionDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SessionDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'added_datetime',
    'end_datetime',
    'group_id',
    'media_id',
    'start_datetime',
    'started',
    'time',
    'updated_datetime',
  };
}
