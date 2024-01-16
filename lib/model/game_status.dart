part of n2t.game_oclock.client;

class GameStatus {
  /// Instantiate a new enum with the provided [value].
  const GameStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const lowPriority = GameStatus._(r'LowPriority');
  static const nextUp = GameStatus._(r'NextUp');
  static const playing = GameStatus._(r'Playing');
  static const played = GameStatus._(r'Played');
  static const wishlist = GameStatus._(r'Wishlist');

  /// List of all possible values in this [enum][GameStatus].
  static const values = <GameStatus>[
    lowPriority,
    nextUp,
    playing,
    played,
    wishlist,
  ];

  static GameStatus? fromJson(dynamic value) =>
      GameStatusTypeTransformer().decode(value);

  static List<GameStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GameStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GameStatus] to String,
/// and [decode] dynamic data back to [GameStatus].
class GameStatusTypeTransformer {
  factory GameStatusTypeTransformer() =>
      _instance ??= const GameStatusTypeTransformer._();

  const GameStatusTypeTransformer._();

  String encode(GameStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a GameStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GameStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LowPriority':
          return GameStatus.lowPriority;
        case r'NextUp':
          return GameStatus.nextUp;
        case r'Playing':
          return GameStatus.playing;
        case r'Played':
          return GameStatus.played;
        case r'Wishlist':
          return GameStatus.wishlist;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GameStatusTypeTransformer] instance.
  static GameStatusTypeTransformer? _instance;
}
