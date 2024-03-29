part of n2t.game_oclock.client;

class NewTagDTO {
  /// Returns a new [NewTagDTO] instance.
  NewTagDTO({
    this.name,
  });

  String? name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is NewTagDTO && other.name == name;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'NewTagDTO[name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [NewTagDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewTagDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NewTagDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NewTagDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewTagDTO(
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<NewTagDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NewTagDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewTagDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewTagDTO> mapFromJson(dynamic json) {
    final map = <String, NewTagDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewTagDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewTagDTO-objects as value to a dart map
  static Map<String, List<NewTagDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NewTagDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewTagDTO.listFromJson(
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
