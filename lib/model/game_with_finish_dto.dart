part of n2t.game_oclock.client;

class GameWithFinishDTO extends GameDTO {
  /// Returns a new [GameWithFinishDTO] instance.
  GameWithFinishDTO({
    required super.addedDatetime,
    required super.backup,
    super.coverFilename,
    super.coverUrl,
    required super.edition,
    required this.finishDate,
    required super.id,
    required super.name,
    required super.notes,
    required super.rating,
    super.releaseYear,
    required super.saveFolder,
    required super.screenshotFolder,
    required super.status,
    required super.updatedDatetime,
  });

  DateTime finishDate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameWithFinishDTO &&
          other.addedDatetime == addedDatetime &&
          other.backup == backup &&
          other.coverFilename == coverFilename &&
          other.coverUrl == coverUrl &&
          other.edition == edition &&
          other.finishDate == finishDate &&
          other.id == id &&
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
      (finishDate.hashCode) +
      (id.hashCode) +
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
      'GameWithFinishDTO[addedDatetime=$addedDatetime, backup=$backup, coverFilename=$coverFilename, coverUrl=$coverUrl, edition=$edition, finishDate=$finishDate, id=$id, name=$name, notes=$notes, rating=$rating, releaseYear=$releaseYear, saveFolder=$saveFolder, screenshotFolder=$screenshotFolder, status=$status, updatedDatetime=$updatedDatetime]';

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
    json[r'finish_date'] = _dateFormatter.format(this.finishDate);
    json[r'id'] = this.id;
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

  /// Returns a new [GameWithFinishDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameWithFinishDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GameWithFinishDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GameWithFinishDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameWithFinishDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', r'')!,
        backup: mapValueOfType<bool>(json, r'backup')!,
        coverFilename: mapValueOfType<String>(json, r'cover_filename'),
        coverUrl: mapValueOfType<String>(json, r'cover_url'),
        edition: mapValueOfType<String>(json, r'edition')!,
        finishDate: mapDateTime(json, r'finish_date', r'')!,
        id: mapValueOfType<String>(json, r'id')!,
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

  static List<GameWithFinishDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GameWithFinishDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameWithFinishDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameWithFinishDTO> mapFromJson(dynamic json) {
    final map = <String, GameWithFinishDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameWithFinishDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameWithFinishDTO-objects as value to a dart map
  static Map<String, List<GameWithFinishDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GameWithFinishDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameWithFinishDTO.listFromJson(
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
    'finish_date',
    'id',
    'name',
    'notes',
    'rating',
    'save_folder',
    'screenshot_folder',
    'status',
    'updated_datetime',
  };
}
