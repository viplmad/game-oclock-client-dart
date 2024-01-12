//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class GamesLogDTO extends GameLogDTO {
  /// Returns a new [GamesLogDTO] instance.
  GamesLogDTO({
    required super.endDatetime,
    required this.gameId,
    required super.startDatetime,
    required super.time,
  });

  String gameId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GamesLogDTO &&
    other.endDatetime == endDatetime &&
    other.gameId == gameId &&
    other.startDatetime == startDatetime &&
    other.time == time;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (endDatetime.hashCode) +
    (gameId.hashCode) +
    (startDatetime.hashCode) +
    (time.hashCode);

  @override
  String toString() => 'GamesLogDTO[endDatetime=$endDatetime, gameId=$gameId, startDatetime=$startDatetime, time=$time]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'end_datetime'] = this.endDatetime.toIso8601String();
      json[r'game_id'] = this.gameId;
      json[r'start_datetime'] = this.startDatetime.toIso8601String();
      json[r'time'] = this.time.toIso8601String();
    return json;
  }

  /// Returns a new [GamesLogDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GamesLogDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GamesLogDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GamesLogDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GamesLogDTO(
        endDatetime: mapDateTime(json, r'end_datetime', r'')!,
        gameId: mapValueOfType<String>(json, r'game_id')!,
        startDatetime: mapDateTime(json, r'start_datetime', r'')!,
        time: mapDuration(json, r'time')!,
      );
    }
    return null;
  }

  static List<GamesLogDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GamesLogDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GamesLogDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GamesLogDTO> mapFromJson(dynamic json) {
    final map = <String, GamesLogDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GamesLogDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GamesLogDTO-objects as value to a dart map
  static Map<String, List<GamesLogDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GamesLogDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GamesLogDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'end_datetime',
    'game_id',
    'start_datetime',
    'time',
  };
}
