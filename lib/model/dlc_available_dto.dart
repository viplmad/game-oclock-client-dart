//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class DLCAvailableDTO extends DLCDTO {
  /// Returns a new [DLCAvailableDTO] instance.
  DLCAvailableDTO({
    required super.addedDatetime,
    required this.availableDate,
    super.baseGameId,
    super.coverFilename,
    super.coverUrl,
    required super.id,
    required super.name,
    super.releaseYear,
    required super.updatedDatetime,
  });

  DateTime availableDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DLCAvailableDTO &&
    other.addedDatetime == addedDatetime &&
    other.availableDate == availableDate &&
    other.baseGameId == baseGameId &&
    other.coverFilename == coverFilename &&
    other.coverUrl == coverUrl &&
    other.id == id &&
    other.name == name &&
    other.releaseYear == releaseYear &&
    other.updatedDatetime == updatedDatetime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addedDatetime.hashCode) +
    (availableDate.hashCode) +
    (baseGameId == null ? 0 : baseGameId!.hashCode) +
    (coverFilename == null ? 0 : coverFilename!.hashCode) +
    (coverUrl == null ? 0 : coverUrl!.hashCode) +
    (id.hashCode) +
    (name.hashCode) +
    (releaseYear == null ? 0 : releaseYear!.hashCode) +
    (updatedDatetime.hashCode);

  @override
  String toString() => 'DLCAvailableDTO[addedDatetime=$addedDatetime, availableDate=$availableDate, baseGameId=$baseGameId, coverFilename=$coverFilename, coverUrl=$coverUrl, id=$id, name=$name, releaseYear=$releaseYear, updatedDatetime=$updatedDatetime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'added_datetime'] = this.addedDatetime.toIso8601String();
      json[r'available_date'] = _dateFormatter.format(this.availableDate);
    if (this.baseGameId != null) {
      json[r'base_game_id'] = this.baseGameId;
    } else {
      json[r'base_game_id'] = null;
    }
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
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.releaseYear != null) {
      json[r'release_year'] = this.releaseYear;
    } else {
      json[r'release_year'] = null;
    }
      json[r'updated_datetime'] = this.updatedDatetime.toIso8601String();
    return json;
  }

  /// Returns a new [DLCAvailableDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DLCAvailableDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DLCAvailableDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DLCAvailableDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DLCAvailableDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', r'')!,
        availableDate: mapDateTime(json, r'available_date', r'')!,
        baseGameId: mapValueOfType<String>(json, r'base_game_id'),
        coverFilename: mapValueOfType<String>(json, r'cover_filename'),
        coverUrl: mapValueOfType<String>(json, r'cover_url'),
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        releaseYear: mapValueOfType<int>(json, r'release_year'),
        updatedDatetime: mapDateTime(json, r'updated_datetime', r'')!,
      );
    }
    return null;
  }

  static List<DLCAvailableDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DLCAvailableDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DLCAvailableDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DLCAvailableDTO> mapFromJson(dynamic json) {
    final map = <String, DLCAvailableDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DLCAvailableDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DLCAvailableDTO-objects as value to a dart map
  static Map<String, List<DLCAvailableDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DLCAvailableDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DLCAvailableDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'added_datetime',
    'available_date',
    'id',
    'name',
    'updated_datetime',
  };
}
