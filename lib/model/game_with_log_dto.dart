part of n2t.game_oclock.client;

class GameWithLogDTO extends GameDTO {
  /// Returns a new [GameWithLogDTO] instance.
  GameWithLogDTO({
    required super.addedDatetime,
    required super.backup,
    super.coverFilename,
    super.coverUrl,
    required super.edition,
    required super.id,
    required this.logEndDatetime,
    required this.logStartDatetime,
    required this.logTime,
    required super.name,
    required super.notes,
    required super.rating,
    super.releaseYear,
    required super.saveFolder,
    required super.screenshotFolder,
    required super.status,
    required super.updatedDatetime,
  });

  DateTime logEndDatetime;

  DateTime logStartDatetime;

  Duration logTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameWithLogDTO &&
          other.addedDatetime == addedDatetime &&
          other.backup == backup &&
          other.coverFilename == coverFilename &&
          other.coverUrl == coverUrl &&
          other.edition == edition &&
          other.id == id &&
          other.logEndDatetime == logEndDatetime &&
          other.logStartDatetime == logStartDatetime &&
          other.logTime == logTime &&
          other.name == name &&
          other.notes == notes &&
          other.rating == rating &&
          other.releaseYear == releaseYear &&
          other.saveFolder == saveFolder &&
          other.screenshotFolder == screenshotFolder &&
          other.status == status &&
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
      (logEndDatetime.hashCode) +
      (logStartDatetime.hashCode) +
      (logTime.hashCode) +
      (name.hashCode) +
      (notes.hashCode) +
      (rating.hashCode) +
      (releaseYear == null ? 0 : releaseYear!.hashCode) +
      (saveFolder.hashCode) +
      (screenshotFolder.hashCode) +
      (status.hashCode) +
      (updatedDatetime.hashCode);

  @override
  String toString() =>
      'GameWithLogDTO[addedDatetime=$addedDatetime, backup=$backup, coverFilename=$coverFilename, coverUrl=$coverUrl, edition=$edition, id=$id, logEndDatetime=$logEndDatetime, logStartDatetime=$logStartDatetime, logTime=$logTime, name=$name, notes=$notes, rating=$rating, releaseYear=$releaseYear, saveFolder=$saveFolder, screenshotFolder=$screenshotFolder, status=$status, updatedDatetime=$updatedDatetime]';

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
    json[r'log_end_datetime'] = this.logEndDatetime.toIso8601String();
    json[r'log_start_datetime'] = this.logStartDatetime.toIso8601String();
    json[r'log_time'] = this.logTime;
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
    json[r'updated_datetime'] = this.updatedDatetime.toIso8601String();
    return json;
  }

  /// Returns a new [GameWithLogDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameWithLogDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GameWithLogDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GameWithLogDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameWithLogDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', r'')!,
        backup: mapValueOfType<bool>(json, r'backup')!,
        coverFilename: mapValueOfType<String>(json, r'cover_filename'),
        coverUrl: mapValueOfType<String>(json, r'cover_url'),
        edition: mapValueOfType<String>(json, r'edition')!,
        id: mapValueOfType<String>(json, r'id')!,
        logEndDatetime: mapDateTime(json, r'log_end_datetime', r'')!,
        logStartDatetime: mapDateTime(json, r'log_start_datetime', r'')!,
        logTime: mapDuration(json, r'log_time')!,
        name: mapValueOfType<String>(json, r'name')!,
        notes: mapValueOfType<String>(json, r'notes')!,
        rating: mapValueOfType<int>(json, r'rating')!,
        releaseYear: mapValueOfType<int>(json, r'release_year'),
        saveFolder: mapValueOfType<String>(json, r'save_folder')!,
        screenshotFolder: mapValueOfType<String>(json, r'screenshot_folder')!,
        status: GameStatus.fromJson(json[r'status'])!,
        updatedDatetime: mapDateTime(json, r'updated_datetime', r'')!,
      );
    }
    return null;
  }

  static List<GameWithLogDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GameWithLogDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameWithLogDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameWithLogDTO> mapFromJson(dynamic json) {
    final map = <String, GameWithLogDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameWithLogDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameWithLogDTO-objects as value to a dart map
  static Map<String, List<GameWithLogDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GameWithLogDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameWithLogDTO.listFromJson(
          entry.value,
          growable: growable,
        );
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
    'log_end_datetime',
    'log_start_datetime',
    'log_time',
    'name',
    'notes',
    'rating',
    'save_folder',
    'screenshot_folder',
    'status',
    'updated_datetime',
  };
}
