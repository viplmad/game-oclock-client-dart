//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;


class DateHistogramInterval {
  /// Instantiate a new enum with the provided [value].
  const DateHistogramInterval._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const year = DateHistogramInterval._(r'Year');
  static const month = DateHistogramInterval._(r'Month');
  static const weekday = DateHistogramInterval._(r'Weekday');
  static const day = DateHistogramInterval._(r'Day');
  static const hour = DateHistogramInterval._(r'Hour');
  static const minute = DateHistogramInterval._(r'Minute');

  /// List of all possible values in this [enum][DateHistogramInterval].
  static const values = <DateHistogramInterval>[
    year,
    month,
    weekday,
    day,
    hour,
    minute,
  ];

  static DateHistogramInterval? fromJson(dynamic value) => DateHistogramIntervalTypeTransformer().decode(value);

  static List<DateHistogramInterval> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DateHistogramInterval>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DateHistogramInterval.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DateHistogramInterval] to String,
/// and [decode] dynamic data back to [DateHistogramInterval].
class DateHistogramIntervalTypeTransformer {
  factory DateHistogramIntervalTypeTransformer() => _instance ??= const DateHistogramIntervalTypeTransformer._();

  const DateHistogramIntervalTypeTransformer._();

  String encode(DateHistogramInterval data) => data.value;

  /// Decodes a [dynamic value][data] to a DateHistogramInterval.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DateHistogramInterval? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Year': return DateHistogramInterval.year;
        case r'Month': return DateHistogramInterval.month;
        case r'Weekday': return DateHistogramInterval.weekday;
        case r'Day': return DateHistogramInterval.day;
        case r'Hour': return DateHistogramInterval.hour;
        case r'Minute': return DateHistogramInterval.minute;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DateHistogramIntervalTypeTransformer] instance.
  static DateHistogramIntervalTypeTransformer? _instance;
}
