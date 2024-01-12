//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class PlatformType {
  /// Instantiate a new enum with the provided [value].
  const PlatformType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const physical = PlatformType._(r'Physical');
  static const digital = PlatformType._(r'Digital');

  /// List of all possible values in this [enum][PlatformType].
  static const values = <PlatformType>[
    physical,
    digital,
  ];

  static PlatformType? fromJson(dynamic value) => PlatformTypeTypeTransformer().decode(value);

  static List<PlatformType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlatformType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlatformType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PlatformType] to String,
/// and [decode] dynamic data back to [PlatformType].
class PlatformTypeTypeTransformer {
  factory PlatformTypeTypeTransformer() => _instance ??= const PlatformTypeTypeTransformer._();

  const PlatformTypeTypeTransformer._();

  String encode(PlatformType data) => data.value;

  /// Decodes a [dynamic value][data] to a PlatformType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlatformType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Physical': return PlatformType.physical;
        case r'Digital': return PlatformType.digital;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PlatformTypeTypeTransformer] instance.
  static PlatformTypeTypeTransformer? _instance;
}
