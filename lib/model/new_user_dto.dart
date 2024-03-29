part of n2t.game_oclock.client;

class NewUserDTO {
  /// Returns a new [NewUserDTO] instance.
  NewUserDTO({
    required this.username,
  });

  String username;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewUserDTO && other.username == username;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (username.hashCode);

  @override
  String toString() => 'NewUserDTO[username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'username'] = this.username;
    return json;
  }

  /// Returns a new [NewUserDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewUserDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NewUserDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NewUserDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewUserDTO(
        username: mapValueOfType<String>(json, r'username')!,
      );
    }
    return null;
  }

  static List<NewUserDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NewUserDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewUserDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewUserDTO> mapFromJson(dynamic json) {
    final map = <String, NewUserDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewUserDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewUserDTO-objects as value to a dart map
  static Map<String, List<NewUserDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NewUserDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewUserDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
  };
}
