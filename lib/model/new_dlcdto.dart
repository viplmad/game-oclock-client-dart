part of n2t.game_oclock.client;

class NewDLCDTO {
  /// Returns a new [NewDLCDTO] instance.
  NewDLCDTO({
    this.baseGameId,
    this.name,
    this.releaseYear,
  });

  String? baseGameId;

  String? name;

  int? releaseYear;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewDLCDTO &&
          other.baseGameId == baseGameId &&
          other.name == name &&
          other.releaseYear == releaseYear;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (baseGameId == null ? 0 : baseGameId!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (releaseYear == null ? 0 : releaseYear!.hashCode);

  @override
  String toString() =>
      'NewDLCDTO[baseGameId=$baseGameId, name=$name, releaseYear=$releaseYear]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.baseGameId != null) {
      json[r'base_game_id'] = this.baseGameId;
    } else {
      json[r'base_game_id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.releaseYear != null) {
      json[r'release_year'] = this.releaseYear;
    } else {
      json[r'release_year'] = null;
    }
    return json;
  }

  /// Returns a new [NewDLCDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewDLCDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NewDLCDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NewDLCDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewDLCDTO(
        baseGameId: mapValueOfType<String>(json, r'base_game_id'),
        name: mapValueOfType<String>(json, r'name'),
        releaseYear: mapValueOfType<int>(json, r'release_year'),
      );
    }
    return null;
  }

  static List<NewDLCDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NewDLCDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewDLCDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewDLCDTO> mapFromJson(dynamic json) {
    final map = <String, NewDLCDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewDLCDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewDLCDTO-objects as value to a dart map
  static Map<String, List<NewDLCDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NewDLCDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewDLCDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
