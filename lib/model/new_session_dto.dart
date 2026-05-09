//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class NewSessionDTO {
  /// Returns a new [NewSessionDTO] instance.
  NewSessionDTO({
    this.deviceId,
    required this.endDatetime,
    this.finishedStatus,
    this.groupId,
    required this.startDatetime,
    required this.started,
  });

  String? deviceId;

  DateTime endDatetime;

  MediaStatus? finishedStatus;

  String? groupId;

  DateTime startDatetime;

  bool started;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewSessionDTO &&
    other.deviceId == deviceId &&
    other.endDatetime == endDatetime &&
    other.finishedStatus == finishedStatus &&
    other.groupId == groupId &&
    other.startDatetime == startDatetime &&
    other.started == started;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deviceId == null ? 0 : deviceId!.hashCode) +
    (endDatetime.hashCode) +
    (finishedStatus == null ? 0 : finishedStatus!.hashCode) +
    (groupId == null ? 0 : groupId!.hashCode) +
    (startDatetime.hashCode) +
    (started.hashCode);

  @override
  String toString() => 'NewSessionDTO[deviceId=$deviceId, endDatetime=$endDatetime, finishedStatus=$finishedStatus, groupId=$groupId, startDatetime=$startDatetime, started=$started]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deviceId != null) {
      json[r'device_id'] = this.deviceId;
    } else {
      json[r'device_id'] = null;
    }
      json[r'end_datetime'] = this.endDatetime.toIso8601String();
    if (this.finishedStatus != null) {
      json[r'finished_status'] = this.finishedStatus;
    } else {
      json[r'finished_status'] = null;
    }
    if (this.groupId != null) {
      json[r'group_id'] = this.groupId;
    } else {
      json[r'group_id'] = null;
    }
      json[r'start_datetime'] = this.startDatetime.toIso8601String();
      json[r'started'] = this.started;
    return json;
  }

  /// Returns a new [NewSessionDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewSessionDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'end_datetime'), 'Required key "NewSessionDTO[end_datetime]" is missing from JSON.');
        assert(json[r'end_datetime'] != null, 'Required key "NewSessionDTO[end_datetime]" has a null value in JSON.');
        assert(json.containsKey(r'start_datetime'), 'Required key "NewSessionDTO[start_datetime]" is missing from JSON.');
        assert(json[r'start_datetime'] != null, 'Required key "NewSessionDTO[start_datetime]" has a null value in JSON.');
        assert(json.containsKey(r'started'), 'Required key "NewSessionDTO[started]" is missing from JSON.');
        assert(json[r'started'] != null, 'Required key "NewSessionDTO[started]" has a null value in JSON.');
        return true;
      }());

      return NewSessionDTO(
        deviceId: mapValueOfType<String>(json, r'device_id'),
        endDatetime: mapDateTime(json, r'end_datetime', r'')!,
        finishedStatus: MediaStatus.fromJson(json[r'finished_status']),
        groupId: mapValueOfType<String>(json, r'group_id'),
        startDatetime: mapDateTime(json, r'start_datetime', r'')!,
        started: mapValueOfType<bool>(json, r'started')!,
      );
    }
    return null;
  }

  static List<NewSessionDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewSessionDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewSessionDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewSessionDTO> mapFromJson(dynamic json) {
    final map = <String, NewSessionDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewSessionDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewSessionDTO-objects as value to a dart map
  static Map<String, List<NewSessionDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewSessionDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewSessionDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'end_datetime',
    'start_datetime',
    'started',
  };
}
