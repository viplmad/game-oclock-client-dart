//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class NewPlatformDTO {
  /// Returns a new [NewPlatformDTO] instance.
  NewPlatformDTO({
    this.name,
    this.type,
  });

  String? name;

  PlatformType? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewPlatformDTO &&
     other.name == name &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'NewPlatformDTO[name=$name, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [NewPlatformDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewPlatformDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewPlatformDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewPlatformDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewPlatformDTO(
        name: mapValueOfType<String>(json, r'name'),
        type: PlatformType.fromJson(json[r'type']),
      );
    }
    return null;
  }

  static List<NewPlatformDTO>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewPlatformDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewPlatformDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewPlatformDTO> mapFromJson(dynamic json) {
    final map = <String, NewPlatformDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewPlatformDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewPlatformDTO-objects as value to a dart map
  static Map<String, List<NewPlatformDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewPlatformDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewPlatformDTO.listFromJson(entry.value, growable: growable,);
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

