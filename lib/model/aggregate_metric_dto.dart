//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class AggregateMetricDTO {
  /// Returns a new [AggregateMetricDTO] instance.
  AggregateMetricDTO({
    this.defaultValue,
    this.distinct,
    required this.field,
    required this.kind,
  });

  String? defaultValue;

  bool? distinct;

  String field;

  AggregateMetricType kind;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AggregateMetricDTO &&
    other.defaultValue == defaultValue &&
    other.distinct == distinct &&
    other.field == field &&
    other.kind == kind;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultValue == null ? 0 : defaultValue!.hashCode) +
    (distinct == null ? 0 : distinct!.hashCode) +
    (field.hashCode) +
    (kind.hashCode);

  @override
  String toString() => 'AggregateMetricDTO[defaultValue=$defaultValue, distinct=$distinct, field=$field, kind=$kind]';

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
      json[r'kind'] = this.kind;
    return json;
  }

  /// Returns a new [AggregateMetricDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateMetricDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'field'), 'Required key "AggregateMetricDTO[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "AggregateMetricDTO[field]" has a null value in JSON.');
        assert(json.containsKey(r'kind'), 'Required key "AggregateMetricDTO[kind]" is missing from JSON.');
        assert(json[r'kind'] != null, 'Required key "AggregateMetricDTO[kind]" has a null value in JSON.');
        return true;
      }());

      return AggregateMetricDTO(
        defaultValue: mapValueOfType<String>(json, r'default_value'),
        distinct: mapValueOfType<bool>(json, r'distinct'),
        field: mapValueOfType<String>(json, r'field')!,
        kind: AggregateMetricType.fromJson(json[r'kind'])!,
      );
    }
    return null;
  }

  static List<AggregateMetricDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateMetricDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateMetricDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateMetricDTO> mapFromJson(dynamic json) {
    final map = <String, AggregateMetricDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateMetricDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateMetricDTO-objects as value to a dart map
  static Map<String, List<AggregateMetricDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AggregateMetricDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateMetricDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'kind',
  };
}
