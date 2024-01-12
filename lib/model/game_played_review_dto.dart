//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class GamePlayedReviewDTO extends GameDTO {
  /// Returns a new [GamePlayedReviewDTO] instance.
  GamePlayedReviewDTO({
    required super.addedDatetime,
    required super.backup,
    super.coverFilename,
    super.coverUrl,
    required super.edition,
    required this.firstPlayed,
    required this.firstPlayStartDatetime,
    required super.id,
    required this.lastPlayStartDatetime,
    required this.longestSession,
    required this.longestStreak,
    required super.name,
    required super.notes,
    required super.rating,
    super.releaseYear,
    required super.saveFolder,
    required super.screenshotFolder,
    required super.status,
    required this.totalSessions,
    required Duration totalTime,
    this.totalTimeGrouped = const {},
    required super.updatedDatetime,
  }) {
    super.totalTime = totalTime;
  }

  bool firstPlayed;

  DateTime firstPlayStartDatetime;

  DateTime lastPlayStartDatetime;

  GameLogDTO longestSession;

  GameStreakDTO longestStreak;

  int totalSessions;

  Map<int, Duration> totalTimeGrouped;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GamePlayedReviewDTO &&
    other.addedDatetime == addedDatetime &&
    other.backup == backup &&
    other.coverFilename == coverFilename &&
    other.coverUrl == coverUrl &&
    other.edition == edition &&
    other.firstPlayed == firstPlayed &&
    other.firstPlayStartDatetime == firstPlayStartDatetime &&
    other.id == id &&
    other.lastPlayStartDatetime == lastPlayStartDatetime &&
    other.longestSession == longestSession &&
    other.longestStreak == longestStreak &&
    other.name == name &&
    other.notes == notes &&
    other.rating == rating &&
    other.releaseYear == releaseYear &&
    other.saveFolder == saveFolder &&
    other.screenshotFolder == screenshotFolder &&
    other.status == status &&
    other.totalSessions == totalSessions &&
    other.totalTime == totalTime &&
    _deepEquality.equals(other.totalTimeGrouped, totalTimeGrouped) &&
    other.updatedDatetime == updatedDatetime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addedDatetime.hashCode) +
    (backup.hashCode) +
    (coverFilename == null ? 0 : coverFilename!.hashCode) +
    (coverUrl == null ? 0 : coverUrl!.hashCode) +
    (edition.hashCode) +
    (firstPlayed.hashCode) +
    (firstPlayStartDatetime.hashCode) +
    (id.hashCode) +
    (lastPlayStartDatetime.hashCode) +
    (longestSession.hashCode) +
    (longestStreak.hashCode) +
    (name.hashCode) +
    (notes.hashCode) +
    (rating.hashCode) +
    (releaseYear == null ? 0 : releaseYear!.hashCode) +
    (saveFolder.hashCode) +
    (screenshotFolder.hashCode) +
    (status.hashCode) +
    (totalSessions.hashCode) +
    (totalTime.hashCode) +
    (totalTimeGrouped.hashCode) +
    (updatedDatetime.hashCode);

  @override
  String toString() => 'GamePlayedReviewDTO[addedDatetime=$addedDatetime, backup=$backup, coverFilename=$coverFilename, coverUrl=$coverUrl, edition=$edition, firstPlayed=$firstPlayed, firstPlayStartDatetime=$firstPlayStartDatetime, id=$id, lastPlayStartDatetime=$lastPlayStartDatetime, longestSession=$longestSession, longestStreak=$longestStreak, name=$name, notes=$notes, rating=$rating, releaseYear=$releaseYear, saveFolder=$saveFolder, screenshotFolder=$screenshotFolder, status=$status, totalSessions=$totalSessions, totalTime=$totalTime, totalTimeGrouped=$totalTimeGrouped, updatedDatetime=$updatedDatetime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'added_datetime'] = this.addedDatetime.toIso8601String();
      json[r'backup'] = this.backup;
    if (this.coverFilename != null) {
      json[r'cover_filename'] = this.coverFilename;
    } else {
      json[r'cover_filename'] = null;
    }
    if (this.coverUrl != null) {
      json[r'cover_url'] = this.coverUrl;
    } else {
      json[r'cover_url'] = null;
    }
      json[r'edition'] = this.edition;
      json[r'first_played'] = this.firstPlayed;
      json[r'first_play_start_datetime'] = this.firstPlayStartDatetime.toIso8601String();
      json[r'id'] = this.id;
      json[r'last_play_start_datetime'] = this.lastPlayStartDatetime.toIso8601String();
      json[r'longest_session'] = this.longestSession;
      json[r'longest_streak'] = this.longestStreak;
      json[r'name'] = this.name;
      json[r'notes'] = this.notes;
      json[r'rating'] = this.rating;
    if (this.releaseYear != null) {
      json[r'release_year'] = this.releaseYear;
    } else {
      json[r'release_year'] = null;
    }
      json[r'save_folder'] = this.saveFolder;
      json[r'screenshot_folder'] = this.screenshotFolder;
      json[r'status'] = this.status;
      json[r'total_sessions'] = this.totalSessions;
      json[r'total_time'] = this.totalTime!.toIso8601String();
      json[r'total_time_grouped'] = this.totalTimeGrouped;
      json[r'updated_datetime'] = this.updatedDatetime.toIso8601String();
    return json;
  }

  /// Returns a new [GamePlayedReviewDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GamePlayedReviewDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GamePlayedReviewDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GamePlayedReviewDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GamePlayedReviewDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', r'')!,
        backup: mapValueOfType<bool>(json, r'backup')!,
        coverFilename: mapValueOfType<String>(json, r'cover_filename'),
        coverUrl: mapValueOfType<String>(json, r'cover_url'),
        edition: mapValueOfType<String>(json, r'edition')!,
        firstPlayed: mapValueOfType<bool>(json, r'first_played')!,
        firstPlayStartDatetime: mapDateTime(json, r'first_play_start_datetime', r'')!,
        id: mapValueOfType<String>(json, r'id')!,
        lastPlayStartDatetime: mapDateTime(json, r'last_play_start_datetime', r'')!,
        longestSession: GameLogDTO.fromJson(json[r'longest_session'])!,
        longestStreak: GameStreakDTO.fromJson(json[r'longest_streak'])!,
        name: mapValueOfType<String>(json, r'name')!,
        notes: mapValueOfType<String>(json, r'notes')!,
        rating: mapValueOfType<int>(json, r'rating')!,
        releaseYear: mapValueOfType<int>(json, r'release_year'),
        saveFolder: mapValueOfType<String>(json, r'save_folder')!,
        screenshotFolder: mapValueOfType<String>(json, r'screenshot_folder')!,
        status: GameStatus.fromJson(json[r'status'])!,
        totalSessions: mapValueOfType<int>(json, r'total_sessions')!,
        totalTime: mapDuration(json, r'total_time')!,
        totalTimeGrouped: mapMapOfType(json, r'total_time_grouped', (k) => int.parse('$k'), (v) => mapDuration({'temp': v}, 'temp')!)!,
        updatedDatetime: mapDateTime(json, r'updated_datetime', r'')!,
      );
    }
    return null;
  }

  static List<GamePlayedReviewDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GamePlayedReviewDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GamePlayedReviewDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GamePlayedReviewDTO> mapFromJson(dynamic json) {
    final map = <String, GamePlayedReviewDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GamePlayedReviewDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GamePlayedReviewDTO-objects as value to a dart map
  static Map<String, List<GamePlayedReviewDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GamePlayedReviewDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GamePlayedReviewDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'added_datetime',
    'backup',
    'edition',
    'first_played',
    'first_play_start_datetime',
    'id',
    'last_play_start_datetime',
    'longest_session',
    'longest_streak',
    'name',
    'notes',
    'rating',
    'save_folder',
    'screenshot_folder',
    'status',
    'total_sessions',
    'total_time',
    'total_time_grouped',
    'updated_datetime',
  };
}
