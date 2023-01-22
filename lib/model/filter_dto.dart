//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class FilterDTO {
  /// Returns a new [FilterDTO] instance.
  FilterDTO({
    this.chainOperator,
    required this.field,
    required this.operator_,
    required this.value,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ChainOperatorType? chainOperator;

  String field;

  OperatorType operator_;

  SearchValue value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterDTO &&
     other.chainOperator == chainOperator &&
     other.field == field &&
     other.operator_ == operator_ &&
     other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chainOperator == null ? 0 : chainOperator!.hashCode) +
    (field.hashCode) +
    (operator_.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'FilterDTO[chainOperator=$chainOperator, field=$field, operator_=$operator_, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chainOperator != null) {
      json[r'chain_operator'] = this.chainOperator;
    }
      json[r'field'] = this.field;
      json[r'operator'] = this.operator_;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [FilterDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FilterDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FilterDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FilterDTO(
        chainOperator: ChainOperatorType.fromJson(json[r'chain_operator']),
        field: mapValueOfType<String>(json, r'field')!,
        operator_: OperatorType.fromJson(json[r'operator'])!,
        value: SearchValue.fromJson(json[r'value'])!,
      );
    }
    return null;
  }

  static List<FilterDTO>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilterDTO> mapFromJson(dynamic json) {
    final map = <String, FilterDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilterDTO-objects as value to a dart map
  static Map<String, List<FilterDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilterDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterDTO.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'operator',
    'value',
  };
}

