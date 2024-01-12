//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class GameFinishedReviewDTO extends GameDTO {
  /// Returns a new [GameFinishedReviewDTO] instance.
  GameFinishedReviewDTO({
    required super.addedDatetime,
    required super.backup,
    super.coverFilename,
    super.coverUrl,
    required super.edition,
    required DateTime firstFinish,
    required this.firstFinished,
    required super.id,
    required this.lastFinish,
    required super.name,
    required super.notes,
    required super.rating,
    super.releaseYear,
    required super.saveFolder,
    required super.screenshotFolder,
    required super.status,
    required this.totalFinished,
    this.totalFinishedGrouped = const {},
    required super.updatedDatetime,
  }) {
    super.firstFinish = firstFinish;
  }

  bool firstFinished;

  DateTime lastFinish;

  int totalFinished;

  Map<int, int> totalFinishedGrouped;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameFinishedReviewDTO &&
    other.addedDatetime == addedDatetime &&
    other.backup == backup &&
    other.coverFilename == coverFilename &&
    other.coverUrl == coverUrl &&
    other.edition == edition &&
    other.firstFinish == firstFinish &&
    other.firstFinished == firstFinished &&
    other.id == id &&
    other.lastFinish == lastFinish &&
    other.name == name &&
    other.notes == notes &&
    other.rating == rating &&
    other.releaseYear == releaseYear &&
    other.saveFolder == saveFolder &&
    other.screenshotFolder == screenshotFolder &&
    other.status == status &&
    other.totalFinished == totalFinished &&
    _deepEquality.equals(other.totalFinishedGrouped, totalFinishedGrouped) &&
    other.updatedDatetime == updatedDatetime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addedDatetime.hashCode) +
    (backup.hashCode) +
    (coverFilename == null ? 0 : coverFilename!.hashCode) +
    (coverUrl == null ? 0 : coverUrl!.hashCode) +
    (edition.hashCode) +
    (firstFinish.hashCode) +
    (firstFinished.hashCode) +
    (id.hashCode) +
    (lastFinish.hashCode) +
    (name.hashCode) +
    (notes.hashCode) +
    (rating.hashCode) +
    (releaseYear == null ? 0 : releaseYear!.hashCode) +
    (saveFolder.hashCode) +
    (screenshotFolder.hashCode) +
    (status.hashCode) +
    (totalFinished.hashCode) +
    (totalFinishedGrouped.hashCode) +
    (updatedDatetime.hashCode);

  @override
  String toString() => 'GameFinishedReviewDTO[addedDatetime=$addedDatetime, backup=$backup, coverFilename=$coverFilename, coverUrl=$coverUrl, edition=$edition, firstFinish=$firstFinish, firstFinished=$firstFinished, id=$id, lastFinish=$lastFinish, name=$name, notes=$notes, rating=$rating, releaseYear=$releaseYear, saveFolder=$saveFolder, screenshotFolder=$screenshotFolder, status=$status, totalFinished=$totalFinished, totalFinishedGrouped=$totalFinishedGrouped, updatedDatetime=$updatedDatetime]';

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
      json[r'first_finish'] = _dateFormatter.format(this.firstFinish!);
      json[r'first_finished'] = this.firstFinished;
      json[r'id'] = this.id;
      json[r'last_finish'] = _dateFormatter.format(this.lastFinish);
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
      json[r'total_finished'] = this.totalFinished;
      json[r'total_finished_grouped'] = this.totalFinishedGrouped;
      json[r'updated_datetime'] = this.updatedDatetime.toIso8601String();
    return json;
  }

  /// Returns a new [GameFinishedReviewDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameFinishedReviewDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameFinishedReviewDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameFinishedReviewDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameFinishedReviewDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', r'')!,
        backup: mapValueOfType<bool>(json, r'backup')!,
        coverFilename: mapValueOfType<String>(json, r'cover_filename'),
        coverUrl: mapValueOfType<String>(json, r'cover_url'),
        edition: mapValueOfType<String>(json, r'edition')!,
        firstFinish: mapDateTime(json, r'first_finish', r'')!,
        firstFinished: mapValueOfType<bool>(json, r'first_finished')!,
        id: mapValueOfType<String>(json, r'id')!,
        lastFinish: mapDateTime(json, r'last_finish', r'')!,
        name: mapValueOfType<String>(json, r'name')!,
        notes: mapValueOfType<String>(json, r'notes')!,
        rating: mapValueOfType<int>(json, r'rating')!,
        releaseYear: mapValueOfType<int>(json, r'release_year'),
        saveFolder: mapValueOfType<String>(json, r'save_folder')!,
        screenshotFolder: mapValueOfType<String>(json, r'screenshot_folder')!,
        status: GameStatus.fromJson(json[r'status'])!,
        totalFinished: mapValueOfType<int>(json, r'total_finished')!,
        totalFinishedGrouped: mapMapOfType(json, r'total_finished_grouped', (k) => int.parse('$k'), (v) => mapValueOfType<int>({'temp': v}, 'temp')!)!,
        updatedDatetime: mapDateTime(json, r'updated_datetime', r'')!,
      );
    }
    return null;
  }

  static List<GameFinishedReviewDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameFinishedReviewDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameFinishedReviewDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameFinishedReviewDTO> mapFromJson(dynamic json) {
    final map = <String, GameFinishedReviewDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameFinishedReviewDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameFinishedReviewDTO-objects as value to a dart map
  static Map<String, List<GameFinishedReviewDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameFinishedReviewDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameFinishedReviewDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'added_datetime',
    'backup',
    'edition',
    'first_finish',
    'first_finished',
    'id',
    'last_finish',
    'name',
    'notes',
    'rating',
    'save_folder',
    'screenshot_folder',
    'status',
    'total_finished',
    'total_finished_grouped',
    'updated_datetime',
  };
}
