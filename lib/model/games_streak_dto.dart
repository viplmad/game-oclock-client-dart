//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class GamesStreakDTO extends GameStreakDTO {
  /// Returns a new [GamesStreakDTO] instance.
  GamesStreakDTO({
    required super.days,
    required super.endDate,
    this.gamesIds = const [],
    required super.startDate,
  });

  List<String> gamesIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GamesStreakDTO &&
    other.days == days &&
    other.endDate == endDate &&
    _deepEquality.equals(other.gamesIds, gamesIds) &&
    other.startDate == startDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (days.hashCode) +
    (endDate.hashCode) +
    (gamesIds.hashCode) +
    (startDate.hashCode);

  @override
  String toString() => 'GamesStreakDTO[days=$days, endDate=$endDate, gamesIds=$gamesIds, startDate=$startDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'days'] = this.days;
      json[r'end_date'] = _dateFormatter.format(this.endDate);
      json[r'games_ids'] = this.gamesIds;
      json[r'start_date'] = _dateFormatter.format(this.startDate);
    return json;
  }

  /// Returns a new [GamesStreakDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GamesStreakDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GamesStreakDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GamesStreakDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GamesStreakDTO(
        days: mapValueOfType<int>(json, r'days')!,
        endDate: mapDateTime(json, r'end_date', r'')!,
        gamesIds: json[r'games_ids'] is Iterable
            ? (json[r'games_ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        startDate: mapDateTime(json, r'start_date', r'')!,
      );
    }
    return null;
  }

  static List<GamesStreakDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GamesStreakDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GamesStreakDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GamesStreakDTO> mapFromJson(dynamic json) {
    final map = <String, GamesStreakDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GamesStreakDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GamesStreakDTO-objects as value to a dart map
  static Map<String, List<GamesStreakDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GamesStreakDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GamesStreakDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'days',
    'end_date',
    'games_ids',
    'start_date',
  };
}
