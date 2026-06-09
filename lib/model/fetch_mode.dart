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
class FetchMode {
  /// Instantiate a new enum with the provided [value].
  const FetchMode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const onlyCalculate = FetchMode._(r'OnlyCalculate');
  static const onlyStored = FetchMode._(r'OnlyStored');
  static const forceCalculateAndStore = FetchMode._(r'ForceCalculateAndStore');
  static const storedOrCalculate = FetchMode._(r'StoredOrCalculate');

  /// List of all possible values in this [enum][FetchMode].
  static const values = <FetchMode>[
    onlyCalculate,
    onlyStored,
    forceCalculateAndStore,
    storedOrCalculate,
  ];

  static FetchMode? fromJson(dynamic value) => FetchModeTypeTransformer().decode(value);

  static List<FetchMode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FetchMode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FetchMode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FetchMode] to String,
/// and [decode] dynamic data back to [FetchMode].
class FetchModeTypeTransformer {
  factory FetchModeTypeTransformer() => _instance ??= const FetchModeTypeTransformer._();

  const FetchModeTypeTransformer._();

  String encode(FetchMode data) => data.value;

  /// Decodes a [dynamic value][data] to a FetchMode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FetchMode? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OnlyCalculate': return FetchMode.onlyCalculate;
        case r'OnlyStored': return FetchMode.onlyStored;
        case r'ForceCalculateAndStore': return FetchMode.forceCalculateAndStore;
        case r'StoredOrCalculate': return FetchMode.storedOrCalculate;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FetchModeTypeTransformer] instance.
  static FetchModeTypeTransformer? _instance;
}
