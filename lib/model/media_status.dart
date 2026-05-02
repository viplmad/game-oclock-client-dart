//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class MediaStatus {
  /// Instantiate a new enum with the provided [value].
  const MediaStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const planning = MediaStatus._(r'Planning');
  static const inProgress = MediaStatus._(r'InProgress');
  static const paused = MediaStatus._(r'Paused');
  static const dropped = MediaStatus._(r'Dropped');
  static const completed = MediaStatus._(r'Completed');

  /// List of all possible values in this [enum][MediaStatus].
  static const values = <MediaStatus>[
    planning,
    inProgress,
    paused,
    dropped,
    completed,
  ];

  static MediaStatus? fromJson(dynamic value) => MediaStatusTypeTransformer().decode(value);

  static List<MediaStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MediaStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MediaStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MediaStatus] to String,
/// and [decode] dynamic data back to [MediaStatus].
class MediaStatusTypeTransformer {
  factory MediaStatusTypeTransformer() => _instance ??= const MediaStatusTypeTransformer._();

  const MediaStatusTypeTransformer._();

  String encode(MediaStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a MediaStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MediaStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Planning': return MediaStatus.planning;
        case r'InProgress': return MediaStatus.inProgress;
        case r'Paused': return MediaStatus.paused;
        case r'Dropped': return MediaStatus.dropped;
        case r'Completed': return MediaStatus.completed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MediaStatusTypeTransformer] instance.
  static MediaStatusTypeTransformer? _instance;
}
