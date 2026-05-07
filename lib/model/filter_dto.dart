//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class FilterDTO {
  /// Returns a new [FilterDTO] instance.
  FilterDTO({
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

  SearchValue? value;

  FilterDTOOperator_Enum operator_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterDTO &&
    other.chainOperator == chainOperator &&
    other.field == field &&
    other.value == value &&
    other.operator_ == operator_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chainOperator == null ? 0 : chainOperator!.hashCode) +
    (field.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (operator_.hashCode);

  @override
  String toString() => 'FilterDTO[chainOperator=$chainOperator, field=$field, value=$value, operator_=$operator_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chainOperator != null) {
      json[r'chain_operator'] = this.chainOperator;
    } else {
      json[r'chain_operator'] = null;
    }
      json[r'field'] = this.field;
    if(this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
      json[r'operator'] = this.operator_;
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
        assert(json.containsKey(r'field'), 'Required key "FilterDTO[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "FilterDTO[field]" has a null value in JSON.');
        assert(json.containsKey(r'value'), 'Required key "FilterDTO[value]" is missing from JSON.');
        assert(json[r'value'] != null, 'Required key "FilterDTO[value]" has a null value in JSON.');
        assert(json.containsKey(r'operator'), 'Required key "FilterDTO[operator]" is missing from JSON.');
        assert(json[r'operator'] != null, 'Required key "FilterDTO[operator]" has a null value in JSON.');
        return true;
      }());

      return FilterDTO(
        chainOperator: ChainOperatorType.fromJson(json[r'chain_operator']),
        field: mapValueOfType<String>(json, r'field')!,
        value: SearchValue.fromJson(json[r'value']),
        operator_: FilterDTOOperator_Enum.fromJson(json[r'operator'])!,
      );
    }
    return null;
  }

  static List<FilterDTO> listFromJson(dynamic json, {bool growable = false,}) {
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
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FilterDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'operator',
  };
}


class FilterDTOOperator_Enum {
  /// Instantiate a new enum with the provided [value].
  const FilterDTOOperator_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const eq = FilterDTOOperator_Enum._(r'Eq');
  static const notEq = FilterDTOOperator_Enum._(r'NotEq');
  static const gt = FilterDTOOperator_Enum._(r'Gt');
  static const gte = FilterDTOOperator_Enum._(r'Gte');
  static const lt = FilterDTOOperator_Enum._(r'Lt');
  static const lte = FilterDTOOperator_Enum._(r'Lte');
  static const in_ = FilterDTOOperator_Enum._(r'In');
  static const notIn = FilterDTOOperator_Enum._(r'NotIn');
  static const startsWith = FilterDTOOperator_Enum._(r'StartsWith');
  static const notStartsWith = FilterDTOOperator_Enum._(r'NotStartsWith');
  static const endsWith = FilterDTOOperator_Enum._(r'EndsWith');
  static const notEndsWith = FilterDTOOperator_Enum._(r'NotEndsWith');
  static const contains = FilterDTOOperator_Enum._(r'Contains');
  static const notContains = FilterDTOOperator_Enum._(r'NotContains');
  static const null_ = FilterDTOOperator_Enum._(r'Null');
  static const notNull = FilterDTOOperator_Enum._(r'NotNull');

  /// List of all possible values in this [enum][FilterDTOOperator_Enum].
  static const values = <FilterDTOOperator_Enum>[
    eq,
    notEq,
    gt,
    gte,
    lt,
    lte,
    in_,
    notIn,
    startsWith,
    notStartsWith,
    endsWith,
    notEndsWith,
    contains,
    notContains,
    null_,
    notNull,
  ];

  static FilterDTOOperator_Enum? fromJson(dynamic value) => FilterDTOOperator_EnumTypeTransformer().decode(value);

  static List<FilterDTOOperator_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterDTOOperator_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterDTOOperator_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FilterDTOOperator_Enum] to String,
/// and [decode] dynamic data back to [FilterDTOOperator_Enum].
class FilterDTOOperator_EnumTypeTransformer {
  factory FilterDTOOperator_EnumTypeTransformer() => _instance ??= const FilterDTOOperator_EnumTypeTransformer._();

  const FilterDTOOperator_EnumTypeTransformer._();

  String encode(FilterDTOOperator_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a FilterDTOOperator_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FilterDTOOperator_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Eq': return FilterDTOOperator_Enum.eq;
        case r'NotEq': return FilterDTOOperator_Enum.notEq;
        case r'Gt': return FilterDTOOperator_Enum.gt;
        case r'Gte': return FilterDTOOperator_Enum.gte;
        case r'Lt': return FilterDTOOperator_Enum.lt;
        case r'Lte': return FilterDTOOperator_Enum.lte;
        case r'In': return FilterDTOOperator_Enum.in_;
        case r'NotIn': return FilterDTOOperator_Enum.notIn;
        case r'StartsWith': return FilterDTOOperator_Enum.startsWith;
        case r'NotStartsWith': return FilterDTOOperator_Enum.notStartsWith;
        case r'EndsWith': return FilterDTOOperator_Enum.endsWith;
        case r'NotEndsWith': return FilterDTOOperator_Enum.notEndsWith;
        case r'Contains': return FilterDTOOperator_Enum.contains;
        case r'NotContains': return FilterDTOOperator_Enum.notContains;
        case r'Null': return FilterDTOOperator_Enum.null_;
        case r'NotNull': return FilterDTOOperator_Enum.notNull;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FilterDTOOperator_EnumTypeTransformer] instance.
  static FilterDTOOperator_EnumTypeTransformer? _instance;
}
