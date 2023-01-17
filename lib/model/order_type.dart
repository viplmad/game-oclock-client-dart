//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;


class OrderType {
  /// Instantiate a new enum with the provided [value].
  const OrderType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = OrderType._(r'Asc');
  static const desc = OrderType._(r'Desc');

  /// List of all possible values in this [enum][OrderType].
  static const values = <OrderType>[
    asc,
    desc,
  ];

  static OrderType? fromJson(dynamic value) => OrderTypeTypeTransformer().decode(value);

  static List<OrderType>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderType] to String,
/// and [decode] dynamic data back to [OrderType].
class OrderTypeTypeTransformer {
  factory OrderTypeTypeTransformer() => _instance ??= const OrderTypeTypeTransformer._();

  const OrderTypeTypeTransformer._();

  String encode(OrderType data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Asc': return OrderType.asc;
        case r'Desc': return OrderType.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderTypeTypeTransformer] instance.
  static OrderTypeTypeTransformer? _instance;
}

