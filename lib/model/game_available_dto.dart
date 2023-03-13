//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class GameAvailableDTO extends GameDTO {
  /// Returns a new [GameAvailableDTO] instance.
  GameAvailableDTO({
    required super.addedDatetime,
    required this.availableDate,
    required super.backup,
    super.coverFilename,
    super.coverUrl,
    required super.edition,
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

  DateTime availableDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameAvailableDTO &&
     other.addedDatetime == addedDatetime &&
     other.availableDate == availableDate &&
     other.backup == backup &&
     other.coverFilename == coverFilename &&
     other.coverUrl == coverUrl &&
     other.edition == edition &&
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
    (availableDate.hashCode) +
    (backup.hashCode) +
    (coverFilename == null ? 0 : coverFilename!.hashCode) +
    (coverUrl == null ? 0 : coverUrl!.hashCode) +
    (edition.hashCode) +
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
  String toString() => 'GameAvailableDTO[addedDatetime=$addedDatetime, availableDate=$availableDate, backup=$backup, coverFilename=$coverFilename, coverUrl=$coverUrl, edition=$edition, id=$id, name=$name, notes=$notes, rating=$rating, releaseYear=$releaseYear, saveFolder=$saveFolder, screenshotFolder=$screenshotFolder, status=$status, updatedDatetime=$updatedDatetime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'added_datetime'] = this.addedDatetime.toIso8601String();
      json[r'available_date'] = _dateFormatter.format(this.availableDate);
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

  /// Returns a new [GameAvailableDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameAvailableDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameAvailableDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameAvailableDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameAvailableDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', '')!,
        availableDate: mapDateTime(json, r'available_date', '')!,
        backup: mapValueOfType<bool>(json, r'backup')!,
        coverFilename: mapValueOfType<String>(json, r'cover_filename'),
        coverUrl: mapValueOfType<String>(json, r'cover_url'),
        edition: mapValueOfType<String>(json, r'edition')!,
        id: mapValueOfType<String>(json, r'id')!,
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

  static List<GameAvailableDTO>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameAvailableDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameAvailableDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameAvailableDTO> mapFromJson(dynamic json) {
    final map = <String, GameAvailableDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameAvailableDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameAvailableDTO-objects as value to a dart map
  static Map<String, List<GameAvailableDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameAvailableDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameAvailableDTO.listFromJson(entry.value, growable: growable,);
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
    'available_date',
    'backup',
    'edition',
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

