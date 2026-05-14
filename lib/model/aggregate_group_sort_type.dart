//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class AggregateGroupSortType {
  /// Instantiate a new enum with the provided [value].
  const AggregateGroupSortType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const group = AggregateGroupSortType._(r'Group');
  static const metric = AggregateGroupSortType._(r'Metric');

  /// List of all possible values in this [enum][AggregateGroupSortType].
  static const values = <AggregateGroupSortType>[
    group,
    metric,
  ];

  static AggregateGroupSortType? fromJson(dynamic value) => AggregateGroupSortTypeTypeTransformer().decode(value);

  static List<AggregateGroupSortType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateGroupSortType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroupSortType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AggregateGroupSortType] to String,
/// and [decode] dynamic data back to [AggregateGroupSortType].
class AggregateGroupSortTypeTypeTransformer {
  factory AggregateGroupSortTypeTypeTransformer() => _instance ??= const AggregateGroupSortTypeTypeTransformer._();

  const AggregateGroupSortTypeTypeTransformer._();

  String encode(AggregateGroupSortType data) => data.value;

  /// Decodes a [dynamic value][data] to a AggregateGroupSortType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AggregateGroupSortType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Group': return AggregateGroupSortType.group;
        case r'Metric': return AggregateGroupSortType.metric;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AggregateGroupSortTypeTypeTransformer] instance.
  static AggregateGroupSortTypeTypeTransformer? _instance;
}
