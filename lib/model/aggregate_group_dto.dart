//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class AggregateGroupDTO {
  /// Returns a new [AggregateGroupDTO] instance.
  AggregateGroupDTO({
    this.defaultValue,
    required this.field,
    this.interval,
    required this.kind,
  });

  String? defaultValue;

  String field;

  DateHistogramInterval? interval;

  AggregateGroupType kind;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AggregateGroupDTO &&
    other.defaultValue == defaultValue &&
    other.field == field &&
    other.interval == interval &&
    other.kind == kind;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultValue == null ? 0 : defaultValue!.hashCode) +
    (field.hashCode) +
    (interval == null ? 0 : interval!.hashCode) +
    (kind.hashCode);

  @override
  String toString() => 'AggregateGroupDTO[defaultValue=$defaultValue, field=$field, interval=$interval, kind=$kind]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.defaultValue != null) {
      json[r'default_value'] = this.defaultValue;
    } else {
      json[r'default_value'] = null;
    }
      json[r'field'] = this.field;
    if (this.interval != null) {
      json[r'interval'] = this.interval;
    } else {
      json[r'interval'] = null;
    }
      json[r'kind'] = this.kind;
    return json;
  }

  /// Returns a new [AggregateGroupDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateGroupDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'field'), 'Required key "AggregateGroupDTO[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "AggregateGroupDTO[field]" has a null value in JSON.');
        assert(json.containsKey(r'kind'), 'Required key "AggregateGroupDTO[kind]" is missing from JSON.');
        assert(json[r'kind'] != null, 'Required key "AggregateGroupDTO[kind]" has a null value in JSON.');
        return true;
      }());

      return AggregateGroupDTO(
        defaultValue: mapValueOfType<String>(json, r'default_value'),
        field: mapValueOfType<String>(json, r'field')!,
        interval: DateHistogramInterval.fromJson(json[r'interval']),
        kind: AggregateGroupType.fromJson(json[r'kind'])!,
      );
    }
    return null;
  }

  static List<AggregateGroupDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateGroupDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroupDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateGroupDTO> mapFromJson(dynamic json) {
    final map = <String, AggregateGroupDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateGroupDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateGroupDTO-objects as value to a dart map
  static Map<String, List<AggregateGroupDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AggregateGroupDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateGroupDTO.listFromJson(entry.value, growable: growable,);
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
