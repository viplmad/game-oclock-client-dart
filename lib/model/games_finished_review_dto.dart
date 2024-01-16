part of n2t.game_oclock.client;

class GamesFinishedReviewDTO {
  /// Returns a new [GamesFinishedReviewDTO] instance.
  GamesFinishedReviewDTO({
    this.games = const [],
    required this.totalFinished,
    this.totalFinishedByReleaseYear = const {},
    this.totalFinishedGrouped = const {},
    required this.totalFirstFinished,
  });

  List<GameFinishedReviewDTO> games;

  int totalFinished;

  Map<int, int> totalFinishedByReleaseYear;

  Map<int, int> totalFinishedGrouped;

  int totalFirstFinished;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GamesFinishedReviewDTO &&
          _deepEquality.equals(other.games, games) &&
          other.totalFinished == totalFinished &&
          _deepEquality.equals(
              other.totalFinishedByReleaseYear, totalFinishedByReleaseYear) &&
          _deepEquality.equals(
              other.totalFinishedGrouped, totalFinishedGrouped) &&
          other.totalFirstFinished == totalFirstFinished;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (games.hashCode) +
      (totalFinished.hashCode) +
      (totalFinishedByReleaseYear.hashCode) +
      (totalFinishedGrouped.hashCode) +
      (totalFirstFinished.hashCode);

  @override
  String toString() =>
      'GamesFinishedReviewDTO[games=$games, totalFinished=$totalFinished, totalFinishedByReleaseYear=$totalFinishedByReleaseYear, totalFinishedGrouped=$totalFinishedGrouped, totalFirstFinished=$totalFirstFinished]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'games'] = this.games;
    json[r'total_finished'] = this.totalFinished;
    json[r'total_finished_by_release_year'] = this.totalFinishedByReleaseYear;
    json[r'total_finished_grouped'] = this.totalFinishedGrouped;
    json[r'total_first_finished'] = this.totalFirstFinished;
    return json;
  }

  /// Returns a new [GamesFinishedReviewDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GamesFinishedReviewDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GamesFinishedReviewDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GamesFinishedReviewDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GamesFinishedReviewDTO(
        games: GameFinishedReviewDTO.listFromJson(json[r'games']),
        totalFinished: mapValueOfType<int>(json, r'total_finished')!,
        totalFinishedByReleaseYear: mapMapOfType(
            json,
            r'total_finished_by_release_year',
            (k) => int.parse('$k'),
            (v) => mapValueOfType<int>({'temp': v}, 'temp')!)!,
        totalFinishedGrouped: mapMapOfType(
            json,
            r'total_finished_grouped',
            (k) => int.parse('$k'),
            (v) => mapValueOfType<int>({'temp': v}, 'temp')!)!,
        totalFirstFinished: mapValueOfType<int>(json, r'total_first_finished')!,
      );
    }
    return null;
  }

  static List<GamesFinishedReviewDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GamesFinishedReviewDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GamesFinishedReviewDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GamesFinishedReviewDTO> mapFromJson(dynamic json) {
    final map = <String, GamesFinishedReviewDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GamesFinishedReviewDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GamesFinishedReviewDTO-objects as value to a dart map
  static Map<String, List<GamesFinishedReviewDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GamesFinishedReviewDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GamesFinishedReviewDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'games',
    'total_finished',
    'total_finished_by_release_year',
    'total_finished_grouped',
    'total_first_finished',
  };
}
