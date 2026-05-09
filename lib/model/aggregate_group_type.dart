//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

/// Aggregate group
class AggregateGroupType {
  /// Instantiate a new enum with the provided [value].
  const AggregateGroupType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const field = AggregateGroupType._(r'Field');
  static const dateHistogram = AggregateGroupType._(r'DateHistogram');

  /// List of all possible values in this [enum][AggregateGroupType].
  static const values = <AggregateGroupType>[
    field,
    dateHistogram,
  ];

  static AggregateGroupType? fromJson(dynamic value) => AggregateGroupTypeTypeTransformer().decode(value);

  static List<AggregateGroupType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateGroupType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroupType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AggregateGroupType] to String,
/// and [decode] dynamic data back to [AggregateGroupType].
class AggregateGroupTypeTypeTransformer {
  factory AggregateGroupTypeTypeTransformer() => _instance ??= const AggregateGroupTypeTypeTransformer._();

  const AggregateGroupTypeTypeTransformer._();

  String encode(AggregateGroupType data) => data.value;

  /// Decodes a [dynamic value][data] to a AggregateGroupType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AggregateGroupType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Field': return AggregateGroupType.field;
        case r'DateHistogram': return AggregateGroupType.dateHistogram;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AggregateGroupTypeTypeTransformer] instance.
  static AggregateGroupTypeTypeTransformer? _instance;
}
