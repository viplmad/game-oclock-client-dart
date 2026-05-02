//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class AggregateGroup {
  /// Returns a new [AggregateGroup] instance.
  AggregateGroup({
    this.defaultValue,
    required this.field,
    required this.kind,
    required this.interval,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultValue;

  String field;

  AggregateGroupKindEnum kind;

  DateHistogramInterval interval;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AggregateGroup &&
    other.defaultValue == defaultValue &&
    other.field == field &&
    other.kind == kind &&
    other.interval == interval;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultValue == null ? 0 : defaultValue!.hashCode) +
    (field.hashCode) +
    (kind.hashCode) +
    (interval.hashCode);

  @override
  String toString() => 'AggregateGroup[defaultValue=$defaultValue, field=$field, kind=$kind, interval=$interval]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.defaultValue != null) {
      json[r'default_value'] = this.defaultValue;
    } else {
      json[r'default_value'] = null;
    }
      json[r'field'] = this.field;
      json[r'kind'] = this.kind;
      json[r'interval'] = this.interval;
    return json;
  }

  /// Returns a new [AggregateGroup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateGroup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'field'), 'Required key "AggregateGroup[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "AggregateGroup[field]" has a null value in JSON.');
        assert(json.containsKey(r'kind'), 'Required key "AggregateGroup[kind]" is missing from JSON.');
        assert(json[r'kind'] != null, 'Required key "AggregateGroup[kind]" has a null value in JSON.');
        assert(json.containsKey(r'interval'), 'Required key "AggregateGroup[interval]" is missing from JSON.');
        assert(json[r'interval'] != null, 'Required key "AggregateGroup[interval]" has a null value in JSON.');
        return true;
      }());

      return AggregateGroup(
        defaultValue: mapValueOfType<String>(json, r'default_value'),
        field: mapValueOfType<String>(json, r'field')!,
        kind: AggregateGroupKindEnum.fromJson(json[r'kind'])!,
        interval: DateHistogramInterval.fromJson(json[r'interval'])!,
      );
    }
    return null;
  }

  static List<AggregateGroup> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateGroup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateGroup> mapFromJson(dynamic json) {
    final map = <String, AggregateGroup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateGroup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateGroup-objects as value to a dart map
  static Map<String, List<AggregateGroup>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AggregateGroup>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateGroup.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'kind',
    'interval',
  };
}


class AggregateGroupKindEnum {
  /// Instantiate a new enum with the provided [value].
  const AggregateGroupKindEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const dateHistogram = AggregateGroupKindEnum._(r'DateHistogram');

  /// List of all possible values in this [enum][AggregateGroupKindEnum].
  static const values = <AggregateGroupKindEnum>[
    dateHistogram,
  ];

  static AggregateGroupKindEnum? fromJson(dynamic value) => AggregateGroupKindEnumTypeTransformer().decode(value);

  static List<AggregateGroupKindEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateGroupKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroupKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AggregateGroupKindEnum] to String,
/// and [decode] dynamic data back to [AggregateGroupKindEnum].
class AggregateGroupKindEnumTypeTransformer {
  factory AggregateGroupKindEnumTypeTransformer() => _instance ??= const AggregateGroupKindEnumTypeTransformer._();

  const AggregateGroupKindEnumTypeTransformer._();

  String encode(AggregateGroupKindEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AggregateGroupKindEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AggregateGroupKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DateHistogram': return AggregateGroupKindEnum.dateHistogram;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AggregateGroupKindEnumTypeTransformer] instance.
  static AggregateGroupKindEnumTypeTransformer? _instance;
}
