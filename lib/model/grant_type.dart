//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;


class GrantType {
  /// Instantiate a new enum with the provided [value].
  const GrantType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const password = GrantType._(r'password');
  static const refreshToken = GrantType._(r'refresh_token');

  /// List of all possible values in this [enum][GrantType].
  static const values = <GrantType>[
    password,
    refreshToken,
  ];

  static GrantType? fromJson(dynamic value) => GrantTypeTypeTransformer().decode(value);

  static List<GrantType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GrantType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GrantType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GrantType] to String,
/// and [decode] dynamic data back to [GrantType].
class GrantTypeTypeTransformer {
  factory GrantTypeTypeTransformer() => _instance ??= const GrantTypeTypeTransformer._();

  const GrantTypeTypeTransformer._();

  String encode(GrantType data) => data.value;

  /// Decodes a [dynamic value][data] to a GrantType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GrantType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'password': return GrantType.password;
        case r'refresh_token': return GrantType.refreshToken;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GrantTypeTypeTransformer] instance.
  static GrantTypeTypeTransformer? _instance;
}
