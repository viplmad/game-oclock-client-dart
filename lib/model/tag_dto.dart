//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class TagDTO extends PrimaryModel {
  /// Returns a new [TagDTO] instance.
  TagDTO({
    required this.addedDatetime,
    required super.id,
    required this.name,
    required this.updatedDatetime,
  });

  DateTime addedDatetime;

  String name;

  DateTime updatedDatetime;

  NewTagDTO newWith({
    String? name,
  }) {
    return NewTagDTO(
      name: name ?? this.name,
    );
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is TagDTO &&
    other.addedDatetime == addedDatetime &&
    other.id == id &&
    other.name == name &&
    other.updatedDatetime == updatedDatetime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addedDatetime.hashCode) +
    (id.hashCode) +
    (name.hashCode) +
    (updatedDatetime.hashCode);

  @override
  String toString() => 'TagDTO[addedDatetime=$addedDatetime, id=$id, name=$name, updatedDatetime=$updatedDatetime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'added_datetime'] = this.addedDatetime.toIso8601String();
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'updated_datetime'] = this.updatedDatetime.toIso8601String();
    return json;
  }

  /// Returns a new [TagDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TagDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TagDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TagDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TagDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', r'')!,
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        updatedDatetime: mapDateTime(json, r'updated_datetime', r'')!,
      );
    }
    return null;
  }

  static List<TagDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TagDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TagDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TagDTO> mapFromJson(dynamic json) {
    final map = <String, TagDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TagDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TagDTO-objects as value to a dart map
  static Map<String, List<TagDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TagDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TagDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'added_datetime',
    'id',
    'name',
    'updated_datetime',
  };
}
