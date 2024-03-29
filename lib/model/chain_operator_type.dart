part of n2t.game_oclock.client;

class ChainOperatorType {
  /// Instantiate a new enum with the provided [value].
  const ChainOperatorType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const and = ChainOperatorType._(r'And');
  static const or = ChainOperatorType._(r'Or');

  /// List of all possible values in this [enum][ChainOperatorType].
  static const values = <ChainOperatorType>[
    and,
    or,
  ];

  static ChainOperatorType? fromJson(dynamic value) =>
      ChainOperatorTypeTypeTransformer().decode(value);

  static List<ChainOperatorType> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ChainOperatorType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChainOperatorType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ChainOperatorType] to String,
/// and [decode] dynamic data back to [ChainOperatorType].
class ChainOperatorTypeTypeTransformer {
  factory ChainOperatorTypeTypeTransformer() =>
      _instance ??= const ChainOperatorTypeTypeTransformer._();

  const ChainOperatorTypeTypeTransformer._();

  String encode(ChainOperatorType data) => data.value;

  /// Decodes a [dynamic value][data] to a ChainOperatorType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ChainOperatorType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'And':
          return ChainOperatorType.and;
        case r'Or':
          return ChainOperatorType.or;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ChainOperatorTypeTypeTransformer] instance.
  static ChainOperatorTypeTypeTransformer? _instance;
}
