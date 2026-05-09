//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

/// Aggregate metric
class AggregateMetricType {
  /// Instantiate a new enum with the provided [value].
  const AggregateMetricType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const count = AggregateMetricType._(r'Count');
  static const sum = AggregateMetricType._(r'Sum');

  /// List of all possible values in this [enum][AggregateMetricType].
  static const values = <AggregateMetricType>[
    count,
    sum,
  ];

  static AggregateMetricType? fromJson(dynamic value) => AggregateMetricTypeTypeTransformer().decode(value);

  static List<AggregateMetricType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateMetricType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateMetricType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AggregateMetricType] to String,
/// and [decode] dynamic data back to [AggregateMetricType].
class AggregateMetricTypeTypeTransformer {
  factory AggregateMetricTypeTypeTransformer() => _instance ??= const AggregateMetricTypeTypeTransformer._();

  const AggregateMetricTypeTypeTransformer._();

  String encode(AggregateMetricType data) => data.value;

  /// Decodes a [dynamic value][data] to a AggregateMetricType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AggregateMetricType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Count': return AggregateMetricType.count;
        case r'Sum': return AggregateMetricType.sum;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AggregateMetricTypeTypeTransformer] instance.
  static AggregateMetricTypeTypeTransformer? _instance;
}
