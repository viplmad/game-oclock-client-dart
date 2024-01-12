//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class DateTimeDTO {
  /// Returns a new [DateTimeDTO] instance.
  DateTimeDTO({
    required this.datetime,
  });

  DateTime datetime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DateTimeDTO &&
    other.datetime == datetime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (datetime.hashCode);

  @override
  String toString() => 'DateTimeDTO[datetime=$datetime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'datetime'] = this.datetime.toIso8601String();
    return json;
  }

  /// Returns a new [DateTimeDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DateTimeDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DateTimeDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DateTimeDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DateTimeDTO(
        datetime: mapDateTime(json, r'datetime', r'')!,
      );
    }
    return null;
  }

  static List<DateTimeDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DateTimeDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DateTimeDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DateTimeDTO> mapFromJson(dynamic json) {
    final map = <String, DateTimeDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DateTimeDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DateTimeDTO-objects as value to a dart map
  static Map<String, List<DateTimeDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DateTimeDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DateTimeDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'datetime',
  };
}
