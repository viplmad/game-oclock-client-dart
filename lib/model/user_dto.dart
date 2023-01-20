//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class UserDTO extends PrimaryModel {
  /// Returns a new [UserDTO] instance.
  UserDTO({
    required this.addedDatetime,
    required super.id,
    required this.updatedDatetime,
    required this.username,
  });

  DateTime addedDatetime;

  DateTime updatedDatetime;

  String username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserDTO &&
     other.addedDatetime == addedDatetime &&
     other.id == id &&
     other.updatedDatetime == updatedDatetime &&
     other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addedDatetime.hashCode) +
    (id.hashCode) +
    (updatedDatetime.hashCode) +
    (username.hashCode);

  @override
  String toString() => 'UserDTO[addedDatetime=$addedDatetime, id=$id, updatedDatetime=$updatedDatetime, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'added_datetime'] = this.addedDatetime.toIso8601String();
      json[r'id'] = this.id;
      json[r'updated_datetime'] = this.updatedDatetime.toIso8601String();
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
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', '')!,
        id: mapValueOfType<int>(json, r'id')!,
        updatedDatetime: mapDateTime(json, r'updated_datetime', '')!,
        username: mapValueOfType<String>(json, r'username')!,
      );
    }
    return null;
  }

  static List<UserDTO>? listFromJson(dynamic json, {bool growable = false,}) {
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
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserDTO.listFromJson(entry.value, growable: growable,);
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
    'id',
    'updated_datetime',
    'username',
  };
}

