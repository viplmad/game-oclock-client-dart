//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class GameWithLogDTO extends GameDTO {
  /// Returns a new [GameWithLogDTO] instance.
  GameWithLogDTO({
    required DateTime addedDatetime,
    required bool backup,
    String? coverFilename,
    required String edition,
    required int id,
    required this.logDatetime,
    required this.logTime,
    required String name,
    required String notes,
    required int rating,
    int? releaseYear,
    required String saveFolder,
    required String screenshotFolder,
    required GameStatus status,
    required DateTime updatedDatetime,
  }) : super(
            addedDatetime: addedDatetime,
            backup: backup,
            coverFilename: coverFilename,
            edition: edition,
            id: id,
            name: name,
            notes: notes,
            rating: rating,
            releaseYear: releaseYear,
            saveFolder: saveFolder,
            screenshotFolder: screenshotFolder,
            status: status,
            updatedDatetime: updatedDatetime);

  DateTime logDatetime;

  Duration logTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameWithLogDTO &&
          other.addedDatetime == addedDatetime &&
          other.backup == backup &&
          other.coverFilename == coverFilename &&
          other.edition == edition &&
          other.id == id &&
          other.logDatetime == logDatetime &&
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
      (edition.hashCode) +
      (id.hashCode) +
      (logDatetime.hashCode) +
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
      'GameWithLogDTO[addedDatetime=$addedDatetime, backup=$backup, coverFilename=$coverFilename, edition=$edition, id=$id, logDatetime=$logDatetime, logTime=$logTime, name=$name, notes=$notes, rating=$rating, releaseYear=$releaseYear, saveFolder=$saveFolder, screenshotFolder=$screenshotFolder, status=$status, updatedDatetime=$updatedDatetime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'added_datetime'] = this.addedDatetime.toUtc().toIso8601String();
    json[r'backup'] = this.backup;
    if (this.coverFilename != null) {
      json[r'cover_filename'] = this.coverFilename;
    } else {
      json[r'cover_filename'] = null;
    }
    json[r'edition'] = this.edition;
    json[r'id'] = this.id;
    json[r'log_datetime'] = this.logDatetime.toUtc().toIso8601String();
    json[r'log_time'] = this.logTime.toIso8601String();
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
    json[r'updated_datetime'] = this.updatedDatetime.toUtc().toIso8601String();
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
        addedDatetime: mapDateTime(json, r'added_datetime', '')!,
        backup: mapValueOfType<bool>(json, r'backup')!,
        coverFilename: mapValueOfType<String>(json, r'cover_filename'),
        edition: mapValueOfType<String>(json, r'edition')!,
        id: mapValueOfType<int>(json, r'id')!,
        logDatetime: mapDateTime(json, r'log_datetime', '')!,
        logTime: mapDuration(json, r'log_time')!,
        name: mapValueOfType<String>(json, r'name')!,
        notes: mapValueOfType<String>(json, r'notes')!,
        rating: mapValueOfType<int>(json, r'rating')!,
        releaseYear: mapValueOfType<int>(json, r'release_year'),
        saveFolder: mapValueOfType<String>(json, r'save_folder')!,
        screenshotFolder: mapValueOfType<String>(json, r'screenshot_folder')!,
        status: GameStatus.fromJson(json[r'status'])!,
        updatedDatetime: mapDateTime(json, r'updated_datetime', '')!,
      );
    }
    return null;
  }

  static List<GameWithLogDTO>? listFromJson(
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
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameWithLogDTO.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
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
    'log_datetime',
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
