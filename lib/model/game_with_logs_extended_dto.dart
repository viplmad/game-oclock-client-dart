//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class GameWithLogsExtendedDTO extends GameWithLogsDTO {
  /// Returns a new [GameWithLogsExtendedDTO] instance.
  GameWithLogsExtendedDTO({
    required super.addedDatetime,
    required super.backup,
    super.coverFilename,
    super.coverUrl,
    required super.edition,
    required super.id,
    super.logs = const [],
    required this.longestSession,
    required this.longestStreak,
    required super.name,
    required super.notes,
    required super.rating,
    super.releaseYear,
    required super.saveFolder,
    required super.screenshotFolder,
    required super.status,
    this.streaks = const [],
    required this.totalTime,
    required super.updatedDatetime,
  });

  GameLogDTO longestSession;

  GameStreakDTO longestStreak;

  List<GameStreakDTO> streaks;

  Duration? totalTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameWithLogsExtendedDTO &&
    other.addedDatetime == addedDatetime &&
    other.backup == backup &&
    other.coverFilename == coverFilename &&
    other.coverUrl == coverUrl &&
    other.edition == edition &&
    other.id == id &&
    _deepEquality.equals(other.logs, logs) &&
    other.longestSession == longestSession &&
    other.longestStreak == longestStreak &&
    other.name == name &&
    other.notes == notes &&
    other.rating == rating &&
    other.releaseYear == releaseYear &&
    other.saveFolder == saveFolder &&
    other.screenshotFolder == screenshotFolder &&
    other.status == status &&
    _deepEquality.equals(other.streaks, streaks) &&
    other.totalTime == totalTime &&
    other.updatedDatetime == updatedDatetime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addedDatetime.hashCode) +
    (backup.hashCode) +
    (coverFilename == null ? 0 : coverFilename!.hashCode) +
    (coverUrl == null ? 0 : coverUrl!.hashCode) +
    (edition.hashCode) +
    (id.hashCode) +
    (logs.hashCode) +
    (longestSession.hashCode) +
    (longestStreak.hashCode) +
    (name.hashCode) +
    (notes.hashCode) +
    (rating.hashCode) +
    (releaseYear == null ? 0 : releaseYear!.hashCode) +
    (saveFolder.hashCode) +
    (screenshotFolder.hashCode) +
    (status.hashCode) +
    (streaks.hashCode) +
    (totalTime.hashCode) +
    (updatedDatetime.hashCode);

  @override
  String toString() => 'GameWithLogsExtendedDTO[addedDatetime=$addedDatetime, backup=$backup, coverFilename=$coverFilename, coverUrl=$coverUrl, edition=$edition, id=$id, logs=$logs, longestSession=$longestSession, longestStreak=$longestStreak, name=$name, notes=$notes, rating=$rating, releaseYear=$releaseYear, saveFolder=$saveFolder, screenshotFolder=$screenshotFolder, status=$status, streaks=$streaks, totalTime=$totalTime, updatedDatetime=$updatedDatetime]';

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
      json[r'id'] = this.id;
      json[r'logs'] = this.logs;
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
      json[r'streaks'] = this.streaks;
    if (this.totalTime != null) {
      json[r'total_time'] = this.totalTime!.toIso8601String();
    } else {
      json[r'total_time'] = null;
    }
      json[r'updated_datetime'] = this.updatedDatetime.toIso8601String();
    return json;
  }

  /// Returns a new [GameWithLogsExtendedDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameWithLogsExtendedDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameWithLogsExtendedDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameWithLogsExtendedDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameWithLogsExtendedDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', r'')!,
        backup: mapValueOfType<bool>(json, r'backup')!,
        coverFilename: mapValueOfType<String>(json, r'cover_filename'),
        coverUrl: mapValueOfType<String>(json, r'cover_url'),
        edition: mapValueOfType<String>(json, r'edition')!,
        id: mapValueOfType<String>(json, r'id')!,
        logs: GameLogDTO.listFromJson(json[r'logs']),
        longestSession: GameLogDTO.fromJson(json[r'longest_session'])!,
        longestStreak: GameStreakDTO.fromJson(json[r'longest_streak'])!,
        name: mapValueOfType<String>(json, r'name')!,
        notes: mapValueOfType<String>(json, r'notes')!,
        rating: mapValueOfType<int>(json, r'rating')!,
        releaseYear: mapValueOfType<int>(json, r'release_year'),
        saveFolder: mapValueOfType<String>(json, r'save_folder')!,
        screenshotFolder: mapValueOfType<String>(json, r'screenshot_folder')!,
        status: GameStatus.fromJson(json[r'status'])!,
        streaks: GameStreakDTO.listFromJson(json[r'streaks']),
        totalTime: mapDuration(json, r'total_time')!,
        updatedDatetime: mapDateTime(json, r'updated_datetime', r'')!,
      );
    }
    return null;
  }

  static List<GameWithLogsExtendedDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameWithLogsExtendedDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameWithLogsExtendedDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameWithLogsExtendedDTO> mapFromJson(dynamic json) {
    final map = <String, GameWithLogsExtendedDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameWithLogsExtendedDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameWithLogsExtendedDTO-objects as value to a dart map
  static Map<String, List<GameWithLogsExtendedDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameWithLogsExtendedDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameWithLogsExtendedDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'added_datetime',
    'backup',
    'edition',
    'id',
    'logs',
    'longest_session',
    'longest_streak',
    'name',
    'notes',
    'rating',
    'save_folder',
    'screenshot_folder',
    'status',
    'streaks',
    'total_time',
    'updated_datetime',
  };
}
