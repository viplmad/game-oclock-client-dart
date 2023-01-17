//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class NewPasswordDTO {
  /// Returns a new [NewPasswordDTO] instance.
  NewPasswordDTO({
    required this.password,
  });

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewPasswordDTO &&
     other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (password.hashCode);

  @override
  String toString() => 'NewPasswordDTO[password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'password'] = this.password;
    return json;
  }

  /// Returns a new [NewPasswordDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewPasswordDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewPasswordDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewPasswordDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewPasswordDTO(
        password: mapValueOfType<String>(json, r'password')!,
      );
    }
    return null;
  }

  static List<NewPasswordDTO>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewPasswordDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewPasswordDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewPasswordDTO> mapFromJson(dynamic json) {
    final map = <String, NewPasswordDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewPasswordDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewPasswordDTO-objects as value to a dart map
  static Map<String, List<NewPasswordDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewPasswordDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewPasswordDTO.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'password',
  };
}

