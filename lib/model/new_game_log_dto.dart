part of n2t.game_oclock.client;

class NewGameLogDTO {
  /// Returns a new [NewGameLogDTO] instance.
  NewGameLogDTO({
    required this.startDatetime,
    required this.endDatetime,
  });

  DateTime startDatetime;

  DateTime endDatetime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewGameLogDTO &&
          other.startDatetime == startDatetime &&
          other.endDatetime == endDatetime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (startDatetime.hashCode) + (endDatetime.hashCode);

  @override
  String toString() =>
      'NewGameLogDTO[startDatetime=$startDatetime, endDatetime=$endDatetime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'start_datetime'] = this.startDatetime.toIso8601String();
    json[r'end_datetime'] = this.endDatetime.toIso8601String();
    return json;
  }

  /// Returns a new [NewGameLogDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewGameLogDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NewGameLogDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NewGameLogDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewGameLogDTO(
        startDatetime: mapDateTime(json, r'start_datetime', r'')!,
        endDatetime: mapDateTime(json, r'end_datetime', r'')!,
      );
    }
    return null;
  }

  static List<NewGameLogDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NewGameLogDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewGameLogDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewGameLogDTO> mapFromJson(dynamic json) {
    final map = <String, NewGameLogDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewGameLogDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewGameLogDTO-objects as value to a dart map
  static Map<String, List<NewGameLogDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NewGameLogDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewGameLogDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'start_datetime',
    'end_datetime',
  };
}
