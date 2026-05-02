//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class FilterDTOOneOf6 {
  /// Returns a new [FilterDTOOneOf6] instance.
  FilterDTOOneOf6({
    this.chainOperator,
    required this.field,
    this.value = const [],
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

  List<String> value;

  FilterDTOOneOf6Operator_Enum operator_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterDTOOneOf6 &&
    other.chainOperator == chainOperator &&
    other.field == field &&
    _deepEquality.equals(other.value, value) &&
    other.operator_ == operator_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chainOperator == null ? 0 : chainOperator!.hashCode) +
    (field.hashCode) +
    (value.hashCode) +
    (operator_.hashCode);

  @override
  String toString() => 'FilterDTOOneOf6[chainOperator=$chainOperator, field=$field, value=$value, operator_=$operator_]';

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

  /// Returns a new [FilterDTOOneOf6] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterDTOOneOf6? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'field'), 'Required key "FilterDTOOneOf6[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "FilterDTOOneOf6[field]" has a null value in JSON.');
        assert(json.containsKey(r'value'), 'Required key "FilterDTOOneOf6[value]" is missing from JSON.');
        assert(json[r'value'] != null, 'Required key "FilterDTOOneOf6[value]" has a null value in JSON.');
        assert(json.containsKey(r'operator'), 'Required key "FilterDTOOneOf6[operator]" is missing from JSON.');
        assert(json[r'operator'] != null, 'Required key "FilterDTOOneOf6[operator]" has a null value in JSON.');
        return true;
      }());

      return FilterDTOOneOf6(
        chainOperator: ChainOperatorType.fromJson(json[r'chain_operator']),
        field: mapValueOfType<String>(json, r'field')!,
        value: json[r'value'] is Iterable
            ? (json[r'value'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        operator_: FilterDTOOneOf6Operator_Enum.fromJson(json[r'operator'])!,
      );
    }
    return null;
  }

  static List<FilterDTOOneOf6> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterDTOOneOf6>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterDTOOneOf6.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilterDTOOneOf6> mapFromJson(dynamic json) {
    final map = <String, FilterDTOOneOf6>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterDTOOneOf6.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilterDTOOneOf6-objects as value to a dart map
  static Map<String, List<FilterDTOOneOf6>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilterDTOOneOf6>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FilterDTOOneOf6.listFromJson(entry.value, growable: growable,);
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


class FilterDTOOneOf6Operator_Enum {
  /// Instantiate a new enum with the provided [value].
  const FilterDTOOneOf6Operator_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const in_ = FilterDTOOneOf6Operator_Enum._(r'In');

  /// List of all possible values in this [enum][FilterDTOOneOf6Operator_Enum].
  static const values = <FilterDTOOneOf6Operator_Enum>[
    in_,
  ];

  static FilterDTOOneOf6Operator_Enum? fromJson(dynamic value) => FilterDTOOneOf6Operator_EnumTypeTransformer().decode(value);

  static List<FilterDTOOneOf6Operator_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterDTOOneOf6Operator_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterDTOOneOf6Operator_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FilterDTOOneOf6Operator_Enum] to String,
/// and [decode] dynamic data back to [FilterDTOOneOf6Operator_Enum].
class FilterDTOOneOf6Operator_EnumTypeTransformer {
  factory FilterDTOOneOf6Operator_EnumTypeTransformer() => _instance ??= const FilterDTOOneOf6Operator_EnumTypeTransformer._();

  const FilterDTOOneOf6Operator_EnumTypeTransformer._();

  String encode(FilterDTOOneOf6Operator_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a FilterDTOOneOf6Operator_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FilterDTOOneOf6Operator_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'In': return FilterDTOOneOf6Operator_Enum.in_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FilterDTOOneOf6Operator_EnumTypeTransformer] instance.
  static FilterDTOOneOf6Operator_EnumTypeTransformer? _instance;
}
