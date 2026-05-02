//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class FilterDTOOneOf10 {
  /// Returns a new [FilterDTOOneOf10] instance.
  FilterDTOOneOf10({
    this.chainOperator,
    required this.field,
    required this.value,
    required this.operator_,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ChainOperatorType? chainOperator;

  String field;

  String value;

  FilterDTOOneOf10Operator_Enum operator_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterDTOOneOf10 &&
    other.chainOperator == chainOperator &&
    other.field == field &&
    other.value == value &&
    other.operator_ == operator_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chainOperator == null ? 0 : chainOperator!.hashCode) +
    (field.hashCode) +
    (value.hashCode) +
    (operator_.hashCode);

  @override
  String toString() => 'FilterDTOOneOf10[chainOperator=$chainOperator, field=$field, value=$value, operator_=$operator_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chainOperator != null) {
      json[r'chain_operator'] = this.chainOperator;
    } else {
      json[r'chain_operator'] = null;
    }
      json[r'field'] = this.field;
      json[r'value'] = this.value;
      json[r'operator'] = this.operator_;
    return json;
  }

  /// Returns a new [FilterDTOOneOf10] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterDTOOneOf10? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'field'), 'Required key "FilterDTOOneOf10[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "FilterDTOOneOf10[field]" has a null value in JSON.');
        assert(json.containsKey(r'value'), 'Required key "FilterDTOOneOf10[value]" is missing from JSON.');
        assert(json[r'value'] != null, 'Required key "FilterDTOOneOf10[value]" has a null value in JSON.');
        assert(json.containsKey(r'operator'), 'Required key "FilterDTOOneOf10[operator]" is missing from JSON.');
        assert(json[r'operator'] != null, 'Required key "FilterDTOOneOf10[operator]" has a null value in JSON.');
        return true;
      }());

      return FilterDTOOneOf10(
        chainOperator: ChainOperatorType.fromJson(json[r'chain_operator']),
        field: mapValueOfType<String>(json, r'field')!,
        value: mapValueOfType<String>(json, r'value')!,
        operator_: FilterDTOOneOf10Operator_Enum.fromJson(json[r'operator'])!,
      );
    }
    return null;
  }

  static List<FilterDTOOneOf10> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterDTOOneOf10>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterDTOOneOf10.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilterDTOOneOf10> mapFromJson(dynamic json) {
    final map = <String, FilterDTOOneOf10>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterDTOOneOf10.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilterDTOOneOf10-objects as value to a dart map
  static Map<String, List<FilterDTOOneOf10>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilterDTOOneOf10>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FilterDTOOneOf10.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'value',
    'operator',
  };
}


class FilterDTOOneOf10Operator_Enum {
  /// Instantiate a new enum with the provided [value].
  const FilterDTOOneOf10Operator_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const endsWith = FilterDTOOneOf10Operator_Enum._(r'EndsWith');

  /// List of all possible values in this [enum][FilterDTOOneOf10Operator_Enum].
  static const values = <FilterDTOOneOf10Operator_Enum>[
    endsWith,
  ];

  static FilterDTOOneOf10Operator_Enum? fromJson(dynamic value) => FilterDTOOneOf10Operator_EnumTypeTransformer().decode(value);

  static List<FilterDTOOneOf10Operator_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterDTOOneOf10Operator_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterDTOOneOf10Operator_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FilterDTOOneOf10Operator_Enum] to String,
/// and [decode] dynamic data back to [FilterDTOOneOf10Operator_Enum].
class FilterDTOOneOf10Operator_EnumTypeTransformer {
  factory FilterDTOOneOf10Operator_EnumTypeTransformer() => _instance ??= const FilterDTOOneOf10Operator_EnumTypeTransformer._();

  const FilterDTOOneOf10Operator_EnumTypeTransformer._();

  String encode(FilterDTOOneOf10Operator_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a FilterDTOOneOf10Operator_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FilterDTOOneOf10Operator_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EndsWith': return FilterDTOOneOf10Operator_Enum.endsWith;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FilterDTOOneOf10Operator_EnumTypeTransformer] instance.
  static FilterDTOOneOf10Operator_EnumTypeTransformer? _instance;
}
