//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class AggregateGroupOneOf1 {
  /// Returns a new [AggregateGroupOneOf1] instance.
  AggregateGroupOneOf1({
    this.defaultValue,
    required this.field,
    required this.interval,
    required this.kind,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultValue;

  String field;

  DateHistogramInterval interval;

  AggregateGroupOneOf1KindEnum kind;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AggregateGroupOneOf1 &&
    other.defaultValue == defaultValue &&
    other.field == field &&
    other.interval == interval &&
    other.kind == kind;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultValue == null ? 0 : defaultValue!.hashCode) +
    (field.hashCode) +
    (interval.hashCode) +
    (kind.hashCode);

  @override
  String toString() => 'AggregateGroupOneOf1[defaultValue=$defaultValue, field=$field, interval=$interval, kind=$kind]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.defaultValue != null) {
      json[r'default_value'] = this.defaultValue;
    } else {
      json[r'default_value'] = null;
    }
      json[r'field'] = this.field;
      json[r'interval'] = this.interval;
      json[r'kind'] = this.kind;
    return json;
  }

  /// Returns a new [AggregateGroupOneOf1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateGroupOneOf1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'field'), 'Required key "AggregateGroupOneOf1[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "AggregateGroupOneOf1[field]" has a null value in JSON.');
        assert(json.containsKey(r'interval'), 'Required key "AggregateGroupOneOf1[interval]" is missing from JSON.');
        assert(json[r'interval'] != null, 'Required key "AggregateGroupOneOf1[interval]" has a null value in JSON.');
        assert(json.containsKey(r'kind'), 'Required key "AggregateGroupOneOf1[kind]" is missing from JSON.');
        assert(json[r'kind'] != null, 'Required key "AggregateGroupOneOf1[kind]" has a null value in JSON.');
        return true;
      }());

      return AggregateGroupOneOf1(
        defaultValue: mapValueOfType<String>(json, r'default_value'),
        field: mapValueOfType<String>(json, r'field')!,
        interval: DateHistogramInterval.fromJson(json[r'interval'])!,
        kind: AggregateGroupOneOf1KindEnum.fromJson(json[r'kind'])!,
      );
    }
    return null;
  }

  static List<AggregateGroupOneOf1> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateGroupOneOf1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroupOneOf1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateGroupOneOf1> mapFromJson(dynamic json) {
    final map = <String, AggregateGroupOneOf1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateGroupOneOf1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateGroupOneOf1-objects as value to a dart map
  static Map<String, List<AggregateGroupOneOf1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AggregateGroupOneOf1>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateGroupOneOf1.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'interval',
    'kind',
  };
}


class AggregateGroupOneOf1KindEnum {
  /// Instantiate a new enum with the provided [value].
  const AggregateGroupOneOf1KindEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const dateHistogram = AggregateGroupOneOf1KindEnum._(r'DateHistogram');

  /// List of all possible values in this [enum][AggregateGroupOneOf1KindEnum].
  static const values = <AggregateGroupOneOf1KindEnum>[
    dateHistogram,
  ];

  static AggregateGroupOneOf1KindEnum? fromJson(dynamic value) => AggregateGroupOneOf1KindEnumTypeTransformer().decode(value);

  static List<AggregateGroupOneOf1KindEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateGroupOneOf1KindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroupOneOf1KindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AggregateGroupOneOf1KindEnum] to String,
/// and [decode] dynamic data back to [AggregateGroupOneOf1KindEnum].
class AggregateGroupOneOf1KindEnumTypeTransformer {
  factory AggregateGroupOneOf1KindEnumTypeTransformer() => _instance ??= const AggregateGroupOneOf1KindEnumTypeTransformer._();

  const AggregateGroupOneOf1KindEnumTypeTransformer._();

  String encode(AggregateGroupOneOf1KindEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AggregateGroupOneOf1KindEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AggregateGroupOneOf1KindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DateHistogram': return AggregateGroupOneOf1KindEnum.dateHistogram;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AggregateGroupOneOf1KindEnumTypeTransformer] instance.
  static AggregateGroupOneOf1KindEnumTypeTransformer? _instance;
}
