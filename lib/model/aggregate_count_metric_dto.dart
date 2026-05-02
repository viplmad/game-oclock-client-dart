//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class AggregateCountMetricDTO {
  /// Returns a new [AggregateCountMetricDTO] instance.
  AggregateCountMetricDTO({
    this.defaultValue,
    this.distinct,
    required this.field,
  });

  String? defaultValue;

  bool? distinct;

  String field;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AggregateCountMetricDTO &&
    other.defaultValue == defaultValue &&
    other.distinct == distinct &&
    other.field == field;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultValue == null ? 0 : defaultValue!.hashCode) +
    (distinct == null ? 0 : distinct!.hashCode) +
    (field.hashCode);

  @override
  String toString() => 'AggregateCountMetricDTO[defaultValue=$defaultValue, distinct=$distinct, field=$field]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.defaultValue != null) {
      json[r'default_value'] = this.defaultValue;
    } else {
      json[r'default_value'] = null;
    }
    if (this.distinct != null) {
      json[r'distinct'] = this.distinct;
    } else {
      json[r'distinct'] = null;
    }
      json[r'field'] = this.field;
    return json;
  }

  /// Returns a new [AggregateCountMetricDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateCountMetricDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'field'), 'Required key "AggregateCountMetricDTO[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "AggregateCountMetricDTO[field]" has a null value in JSON.');
        return true;
      }());

      return AggregateCountMetricDTO(
        defaultValue: mapValueOfType<String>(json, r'default_value'),
        distinct: mapValueOfType<bool>(json, r'distinct'),
        field: mapValueOfType<String>(json, r'field')!,
      );
    }
    return null;
  }

  static List<AggregateCountMetricDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateCountMetricDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateCountMetricDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateCountMetricDTO> mapFromJson(dynamic json) {
    final map = <String, AggregateCountMetricDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateCountMetricDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateCountMetricDTO-objects as value to a dart map
  static Map<String, List<AggregateCountMetricDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AggregateCountMetricDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateCountMetricDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
  };
}
