//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class GameLogDTO extends PrimaryModel {
  /// Returns a new [GameLogDTO] instance.
  GameLogDTO({
    required this.startDatetime,
    required this.endDatetime,
    required this.time,
  }) : super(id: startDatetime.toIso8601String());

  DateTime startDatetime;

  DateTime endDatetime;

  Duration time;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameLogDTO &&
    other.startDatetime == startDatetime &&
    other.endDatetime == endDatetime &&
    other.time == time;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (startDatetime.hashCode) +
    (endDatetime.hashCode) +
    (time.hashCode);

  @override
  String toString() => 'GameLogDTO[startDatetime=$startDatetime, endDatetime=$endDatetime, time=$time]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'start_datetime'] = this.startDatetime.toIso8601String();
      json[r'end_datetime'] = this.endDatetime.toIso8601String();
      json[r'time'] = this.time.toIso8601String();
    return json;
  }

  /// Returns a new [GameLogDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameLogDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameLogDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameLogDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameLogDTO(
        startDatetime: mapDateTime(json, r'start_datetime', r'')!,
        endDatetime: mapDateTime(json, r'end_datetime', r'')!,
        time: mapDuration(json, r'time')!,
      );
    }
    return null;
  }

  static List<GameLogDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameLogDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameLogDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameLogDTO> mapFromJson(dynamic json) {
    final map = <String, GameLogDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameLogDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameLogDTO-objects as value to a dart map
  static Map<String, List<GameLogDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameLogDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameLogDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'start_datetime',
    'end_datetime',
    'time',
  };
}
