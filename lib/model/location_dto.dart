//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class LocationDTO {
  /// Returns a new [LocationDTO] instance.
  LocationDTO({
    required this.addedDatetime,
    required this.id,
    this.imageUrl,
    required this.name,
    required this.updatedDatetime,
  });

  DateTime addedDatetime;

  String id;

  String? imageUrl;

  String name;

  DateTime updatedDatetime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocationDTO &&
    other.addedDatetime == addedDatetime &&
    other.id == id &&
    other.imageUrl == imageUrl &&
    other.name == name &&
    other.updatedDatetime == updatedDatetime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addedDatetime.hashCode) +
    (id.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (name.hashCode) +
    (updatedDatetime.hashCode);

  @override
  String toString() => 'LocationDTO[addedDatetime=$addedDatetime, id=$id, imageUrl=$imageUrl, name=$name, updatedDatetime=$updatedDatetime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'added_datetime'] = this.addedDatetime.toIso8601String();
      json[r'id'] = this.id;
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
      json[r'name'] = this.name;
      json[r'updated_datetime'] = this.updatedDatetime.toIso8601String();
    return json;
  }

  /// Returns a new [LocationDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocationDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'added_datetime'), 'Required key "LocationDTO[added_datetime]" is missing from JSON.');
        assert(json[r'added_datetime'] != null, 'Required key "LocationDTO[added_datetime]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "LocationDTO[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "LocationDTO[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "LocationDTO[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "LocationDTO[name]" has a null value in JSON.');
        assert(json.containsKey(r'updated_datetime'), 'Required key "LocationDTO[updated_datetime]" is missing from JSON.');
        assert(json[r'updated_datetime'] != null, 'Required key "LocationDTO[updated_datetime]" has a null value in JSON.');
        return true;
      }());

      return LocationDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', r'')!,
        id: mapValueOfType<String>(json, r'id')!,
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        name: mapValueOfType<String>(json, r'name')!,
        updatedDatetime: mapDateTime(json, r'updated_datetime', r'')!,
      );
    }
    return null;
  }

  static List<LocationDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocationDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocationDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocationDTO> mapFromJson(dynamic json) {
    final map = <String, LocationDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocationDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocationDTO-objects as value to a dart map
  static Map<String, List<LocationDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocationDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocationDTO.listFromJson(entry.value, growable: growable,);
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
