//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class DateDTO {
  /// Returns a new [DateDTO] instance.
  DateDTO({
    required this.date,
  });

  DateTime date;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DateDTO &&
    other.date == date;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date.hashCode);

  @override
  String toString() => 'DateDTO[date=$date]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'date'] = _dateFormatter.format(this.date);
    return json;
  }

  /// Returns a new [DateDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DateDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DateDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DateDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DateDTO(
        date: mapDateTime(json, r'date', r'')!,
      );
    }
    return null;
  }

  static List<DateDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DateDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DateDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DateDTO> mapFromJson(dynamic json) {
    final map = <String, DateDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DateDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DateDTO-objects as value to a dart map
  static Map<String, List<DateDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DateDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DateDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
  };
}
