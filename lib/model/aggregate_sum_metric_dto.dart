//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class AggregateSumMetricDTO {
  /// Returns a new [AggregateSumMetricDTO] instance.
  AggregateSumMetricDTO({
    this.defaultValue,
    required this.field,
  });

  String? defaultValue;

  String field;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AggregateSumMetricDTO &&
    other.defaultValue == defaultValue &&
    other.field == field;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultValue == null ? 0 : defaultValue!.hashCode) +
    (field.hashCode);

  @override
  String toString() => 'AggregateSumMetricDTO[defaultValue=$defaultValue, field=$field]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.defaultValue != null) {
      json[r'default_value'] = this.defaultValue;
    } else {
      json[r'default_value'] = null;
    }
      json[r'field'] = this.field;
    return json;
  }

  /// Returns a new [AggregateSumMetricDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateSumMetricDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'field'), 'Required key "AggregateSumMetricDTO[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "AggregateSumMetricDTO[field]" has a null value in JSON.');
        return true;
      }());

      return AggregateSumMetricDTO(
        defaultValue: mapValueOfType<String>(json, r'default_value'),
        field: mapValueOfType<String>(json, r'field')!,
      );
    }
    return null;
  }

  static List<AggregateSumMetricDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateSumMetricDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateSumMetricDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateSumMetricDTO> mapFromJson(dynamic json) {
    final map = <String, AggregateSumMetricDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateSumMetricDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateSumMetricDTO-objects as value to a dart map
  static Map<String, List<AggregateSumMetricDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AggregateSumMetricDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateSumMetricDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
  };
}
