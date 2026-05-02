//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class UserDTO {
  /// Returns a new [UserDTO] instance.
  UserDTO({
    required this.addedDatetime,
    required this.id,
    required this.role,
    required this.updatedDatetime,
    required this.username,
  });

  DateTime addedDatetime;

  String id;

  String role;

  DateTime updatedDatetime;

  String username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserDTO &&
    other.addedDatetime == addedDatetime &&
    other.id == id &&
    other.role == role &&
    other.updatedDatetime == updatedDatetime &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addedDatetime.hashCode) +
    (id.hashCode) +
    (role.hashCode) +
    (updatedDatetime.hashCode) +
    (username.hashCode);

  @override
  String toString() => 'UserDTO[addedDatetime=$addedDatetime, id=$id, role=$role, updatedDatetime=$updatedDatetime, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'added_datetime'] = this.addedDatetime.toUtc().toIso8601String();
      json[r'id'] = this.id;
      json[r'role'] = this.role;
      json[r'updated_datetime'] = this.updatedDatetime.toUtc().toIso8601String();
      json[r'username'] = this.username;
    return json;
  }

  /// Returns a new [UserDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'added_datetime'), 'Required key "UserDTO[added_datetime]" is missing from JSON.');
        assert(json[r'added_datetime'] != null, 'Required key "UserDTO[added_datetime]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "UserDTO[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "UserDTO[id]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "UserDTO[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "UserDTO[role]" has a null value in JSON.');
        assert(json.containsKey(r'updated_datetime'), 'Required key "UserDTO[updated_datetime]" is missing from JSON.');
        assert(json[r'updated_datetime'] != null, 'Required key "UserDTO[updated_datetime]" has a null value in JSON.');
        assert(json.containsKey(r'username'), 'Required key "UserDTO[username]" is missing from JSON.');
        assert(json[r'username'] != null, 'Required key "UserDTO[username]" has a null value in JSON.');
        return true;
      }());

      return UserDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', r'')!,
        id: mapValueOfType<String>(json, r'id')!,
        role: mapValueOfType<String>(json, r'role')!,
        updatedDatetime: mapDateTime(json, r'updated_datetime', r'')!,
        username: mapValueOfType<String>(json, r'username')!,
      );
    }
    return null;
  }

  static List<UserDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserDTO> mapFromJson(dynamic json) {
    final map = <String, UserDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserDTO-objects as value to a dart map
  static Map<String, List<UserDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'added_datetime',
    'id',
    'role',
    'updated_datetime',
    'username',
  };
}
