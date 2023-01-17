//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class NewGameDTO {
  /// Returns a new [NewGameDTO] instance.
  NewGameDTO({
    this.backup,
    this.edition,
    this.name,
    this.notes,
    this.rating,
    this.releaseYear,
    this.saveFolder,
    this.screenshotFolder,
    this.status,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? backup;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? edition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? releaseYear;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? saveFolder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? screenshotFolder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GameStatus? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewGameDTO &&
     other.backup == backup &&
     other.edition == edition &&
     other.name == name &&
     other.notes == notes &&
     other.rating == rating &&
     other.releaseYear == releaseYear &&
     other.saveFolder == saveFolder &&
     other.screenshotFolder == screenshotFolder &&
     other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (backup == null ? 0 : backup!.hashCode) +
    (edition == null ? 0 : edition!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (notes == null ? 0 : notes!.hashCode) +
    (rating == null ? 0 : rating!.hashCode) +
    (releaseYear == null ? 0 : releaseYear!.hashCode) +
    (saveFolder == null ? 0 : saveFolder!.hashCode) +
    (screenshotFolder == null ? 0 : screenshotFolder!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'NewGameDTO[backup=$backup, edition=$edition, name=$name, notes=$notes, rating=$rating, releaseYear=$releaseYear, saveFolder=$saveFolder, screenshotFolder=$screenshotFolder, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.backup != null) {
      json[r'backup'] = this.backup;
    } else {
      json[r'backup'] = null;
    }
    if (this.edition != null) {
      json[r'edition'] = this.edition;
    } else {
      json[r'edition'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.notes != null) {
      json[r'notes'] = this.notes;
    } else {
      json[r'notes'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.releaseYear != null) {
      json[r'release_year'] = this.releaseYear;
    } else {
      json[r'release_year'] = null;
    }
    if (this.saveFolder != null) {
      json[r'save_folder'] = this.saveFolder;
    } else {
      json[r'save_folder'] = null;
    }
    if (this.screenshotFolder != null) {
      json[r'screenshot_folder'] = this.screenshotFolder;
    } else {
      json[r'screenshot_folder'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [NewGameDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewGameDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewGameDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewGameDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewGameDTO(
        backup: mapValueOfType<bool>(json, r'backup'),
        edition: mapValueOfType<String>(json, r'edition'),
        name: mapValueOfType<String>(json, r'name'),
        notes: mapValueOfType<String>(json, r'notes'),
        rating: mapValueOfType<int>(json, r'rating'),
        releaseYear: mapValueOfType<int>(json, r'release_year'),
        saveFolder: mapValueOfType<String>(json, r'save_folder'),
        screenshotFolder: mapValueOfType<String>(json, r'screenshot_folder'),
        status: GameStatus.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<NewGameDTO>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewGameDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewGameDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewGameDTO> mapFromJson(dynamic json) {
    final map = <String, NewGameDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewGameDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewGameDTO-objects as value to a dart map
  static Map<String, List<NewGameDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewGameDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewGameDTO.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

