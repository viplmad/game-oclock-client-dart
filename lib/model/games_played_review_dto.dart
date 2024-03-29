part of n2t.game_oclock.client;

class GamesPlayedReviewDTO {
  /// Returns a new [GamesPlayedReviewDTO] instance.
  GamesPlayedReviewDTO({
    this.games = const [],
    required this.longestSession,
    required this.longestStreak,
    required this.totalFirstPlayed,
    required this.totalPlayed,
    this.totalPlayedByReleaseYear = const {},
    required this.totalRated,
    this.totalRatedByRating = const {},
    required this.totalSessions,
    required this.totalTime,
    this.totalTimeGrouped = const {},
  });

  List<GamePlayedReviewDTO> games;

  GamesLogDTO longestSession;

  GamesStreakDTO longestStreak;

  int totalFirstPlayed;

  int totalPlayed;

  Map<int, int> totalPlayedByReleaseYear;

  int totalRated;

  Map<int, int> totalRatedByRating;

  int totalSessions;

  Duration totalTime;

  Map<int, Duration> totalTimeGrouped;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GamesPlayedReviewDTO &&
          _deepEquality.equals(other.games, games) &&
          other.longestSession == longestSession &&
          other.longestStreak == longestStreak &&
          other.totalFirstPlayed == totalFirstPlayed &&
          other.totalPlayed == totalPlayed &&
          _deepEquality.equals(
              other.totalPlayedByReleaseYear, totalPlayedByReleaseYear) &&
          other.totalRated == totalRated &&
          _deepEquality.equals(other.totalRatedByRating, totalRatedByRating) &&
          other.totalSessions == totalSessions &&
          other.totalTime == totalTime &&
          _deepEquality.equals(other.totalTimeGrouped, totalTimeGrouped);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (games.hashCode) +
      (longestSession.hashCode) +
      (longestStreak.hashCode) +
      (totalFirstPlayed.hashCode) +
      (totalPlayed.hashCode) +
      (totalPlayedByReleaseYear.hashCode) +
      (totalRated.hashCode) +
      (totalRatedByRating.hashCode) +
      (totalSessions.hashCode) +
      (totalTime.hashCode) +
      (totalTimeGrouped.hashCode);

  @override
  String toString() =>
      'GamesPlayedReviewDTO[games=$games, longestSession=$longestSession, longestStreak=$longestStreak, totalFirstPlayed=$totalFirstPlayed, totalPlayed=$totalPlayed, totalPlayedByReleaseYear=$totalPlayedByReleaseYear, totalRated=$totalRated, totalRatedByRating=$totalRatedByRating, totalSessions=$totalSessions, totalTime=$totalTime, totalTimeGrouped=$totalTimeGrouped]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'games'] = this.games;
    json[r'longest_session'] = this.longestSession;
    json[r'longest_streak'] = this.longestStreak;
    json[r'total_first_played'] = this.totalFirstPlayed;
    json[r'total_played'] = this.totalPlayed;
    json[r'total_played_by_release_year'] = this.totalPlayedByReleaseYear;
    json[r'total_rated'] = this.totalRated;
    json[r'total_rated_by_rating'] = this.totalRatedByRating;
    json[r'total_sessions'] = this.totalSessions;
    json[r'total_time'] = this.totalTime.toIso8601String();
    json[r'total_time_grouped'] = this.totalTimeGrouped;
    return json;
  }

  /// Returns a new [GamesPlayedReviewDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GamesPlayedReviewDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GamesPlayedReviewDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GamesPlayedReviewDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GamesPlayedReviewDTO(
        games: GamePlayedReviewDTO.listFromJson(json[r'games']),
        longestSession: GamesLogDTO.fromJson(json[r'longest_session'])!,
        longestStreak: GamesStreakDTO.fromJson(json[r'longest_streak'])!,
        totalFirstPlayed: mapValueOfType<int>(json, r'total_first_played')!,
        totalPlayed: mapValueOfType<int>(json, r'total_played')!,
        totalPlayedByReleaseYear: mapMapOfType(
            json,
            r'total_played_by_release_year',
            (k) => int.parse('$k'),
            (v) => mapValueOfType<int>({'temp': v}, 'temp')!)!,
        totalRated: mapValueOfType<int>(json, r'total_rated')!,
        totalRatedByRating: mapMapOfType(
            json,
            r'total_rated_by_rating',
            (k) => int.parse('$k'),
            (v) => mapValueOfType<int>({'temp': v}, 'temp')!)!,
        totalSessions: mapValueOfType<int>(json, r'total_sessions')!,
        totalTime: mapDuration(json, r'total_time')!,
        totalTimeGrouped: mapMapOfType(json, r'total_time_grouped',
            (k) => int.parse('$k'), (v) => mapDuration({'temp': v}, 'temp')!)!,
      );
    }
    return null;
  }

  static List<GamesPlayedReviewDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GamesPlayedReviewDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GamesPlayedReviewDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GamesPlayedReviewDTO> mapFromJson(dynamic json) {
    final map = <String, GamesPlayedReviewDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GamesPlayedReviewDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GamesPlayedReviewDTO-objects as value to a dart map
  static Map<String, List<GamesPlayedReviewDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GamesPlayedReviewDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GamesPlayedReviewDTO.listFromJson(
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
    'longest_session',
    'longest_streak',
    'total_first_played',
    'total_played',
    'total_played_by_release_year',
    'total_rated',
    'total_rated_by_rating',
    'total_sessions',
    'total_time',
    'total_time_grouped',
  };
}
