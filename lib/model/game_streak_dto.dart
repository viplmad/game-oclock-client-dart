part of n2t.game_oclock.client;

class GameStreakDTO extends PrimaryModel {
  /// Returns a new [GameStreakDTO] instance.
  GameStreakDTO({
    required this.days,
    required this.endDate,
    required this.startDate,
  }) : super(id: startDate.toIso8601String());

  int days;

  DateTime endDate;

  DateTime startDate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameStreakDTO &&
          other.days == days &&
          other.endDate == endDate &&
          other.startDate == startDate;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (days.hashCode) + (endDate.hashCode) + (startDate.hashCode);

  @override
  String toString() =>
      'GameStreakDTO[days=$days, endDate=$endDate, startDate=$startDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'days'] = this.days;
    json[r'end_date'] = _dateFormatter.format(this.endDate);
    json[r'start_date'] = _dateFormatter.format(this.startDate);
    return json;
  }

  /// Returns a new [GameStreakDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameStreakDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GameStreakDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GameStreakDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameStreakDTO(
        days: mapValueOfType<int>(json, r'days')!,
        endDate: mapDateTime(json, r'end_date', r'')!,
        startDate: mapDateTime(json, r'start_date', r'')!,
      );
    }
    return null;
  }

  static List<GameStreakDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GameStreakDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameStreakDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameStreakDTO> mapFromJson(dynamic json) {
    final map = <String, GameStreakDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameStreakDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameStreakDTO-objects as value to a dart map
  static Map<String, List<GameStreakDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GameStreakDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameStreakDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'days',
    'end_date',
    'start_date',
  };
}
