//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class LocationAvailableDTO {
  /// Returns a new [LocationAvailableDTO] instance.
  LocationAvailableDTO({
    required this.available,
    required this.location,
  });

  AvailableDTO available;

  LocationDTO location;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocationAvailableDTO &&
    other.available == available &&
    other.location == location;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available.hashCode) +
    (location.hashCode);

  @override
  String toString() => 'LocationAvailableDTO[available=$available, location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'available'] = this.available;
      json[r'location'] = this.location;
    return json;
  }

  /// Returns a new [LocationAvailableDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocationAvailableDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'available'), 'Required key "LocationAvailableDTO[available]" is missing from JSON.');
        assert(json[r'available'] != null, 'Required key "LocationAvailableDTO[available]" has a null value in JSON.');
        assert(json.containsKey(r'location'), 'Required key "LocationAvailableDTO[location]" is missing from JSON.');
        assert(json[r'location'] != null, 'Required key "LocationAvailableDTO[location]" has a null value in JSON.');
        return true;
      }());

      return LocationAvailableDTO(
        available: AvailableDTO.fromJson(json[r'available'])!,
        location: LocationDTO.fromJson(json[r'location'])!,
      );
    }
    return null;
  }

  static List<LocationAvailableDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocationAvailableDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocationAvailableDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocationAvailableDTO> mapFromJson(dynamic json) {
    final map = <String, LocationAvailableDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocationAvailableDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocationAvailableDTO-objects as value to a dart map
  static Map<String, List<LocationAvailableDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocationAvailableDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocationAvailableDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'available',
    'location',
  };
}
