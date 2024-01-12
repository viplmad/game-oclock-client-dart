//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class OperatorType {
  /// Instantiate a new enum with the provided [value].
  const OperatorType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const eq = OperatorType._(r'Eq');
  static const notEq = OperatorType._(r'NotEq');
  static const gt = OperatorType._(r'Gt');
  static const gte = OperatorType._(r'Gte');
  static const lt = OperatorType._(r'Lt');
  static const lte = OperatorType._(r'Lte');
  static const in_ = OperatorType._(r'In');
  static const notIn = OperatorType._(r'NotIn');
  static const startsWith = OperatorType._(r'StartsWith');
  static const notStartsWith = OperatorType._(r'NotStartsWith');
  static const endsWith = OperatorType._(r'EndsWith');
  static const notEndsWith = OperatorType._(r'NotEndsWith');
  static const contains = OperatorType._(r'Contains');
  static const notContains = OperatorType._(r'NotContains');

  /// List of all possible values in this [enum][OperatorType].
  static const values = <OperatorType>[
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
  ];

  static OperatorType? fromJson(dynamic value) => OperatorTypeTypeTransformer().decode(value);

  static List<OperatorType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OperatorType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OperatorType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OperatorType] to String,
/// and [decode] dynamic data back to [OperatorType].
class OperatorTypeTypeTransformer {
  factory OperatorTypeTypeTransformer() => _instance ??= const OperatorTypeTypeTransformer._();

  const OperatorTypeTypeTransformer._();

  String encode(OperatorType data) => data.value;

  /// Decodes a [dynamic value][data] to a OperatorType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OperatorType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Eq': return OperatorType.eq;
        case r'NotEq': return OperatorType.notEq;
        case r'Gt': return OperatorType.gt;
        case r'Gte': return OperatorType.gte;
        case r'Lt': return OperatorType.lt;
        case r'Lte': return OperatorType.lte;
        case r'In': return OperatorType.in_;
        case r'NotIn': return OperatorType.notIn;
        case r'StartsWith': return OperatorType.startsWith;
        case r'NotStartsWith': return OperatorType.notStartsWith;
        case r'EndsWith': return OperatorType.endsWith;
        case r'NotEndsWith': return OperatorType.notEndsWith;
        case r'Contains': return OperatorType.contains;
        case r'NotContains': return OperatorType.notContains;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OperatorTypeTypeTransformer] instance.
  static OperatorTypeTypeTransformer? _instance;
}
