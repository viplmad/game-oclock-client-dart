//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class AggregateMetricOneOf {
  /// Returns a new [AggregateMetricOneOf] instance.
  AggregateMetricOneOf({
    this.defaultValue,
    this.distinct,
    required this.field,
    required this.kind,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? distinct;

  String field;

  AggregateMetricOneOfKindEnum kind;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AggregateMetricOneOf &&
    other.defaultValue == defaultValue &&
    other.distinct == distinct &&
    other.field == field &&
    other.kind == kind;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultValue == null ? 0 : defaultValue!.hashCode) +
    (distinct == null ? 0 : distinct!.hashCode) +
    (field.hashCode) +
    (kind.hashCode);

  @override
  String toString() => 'AggregateMetricOneOf[defaultValue=$defaultValue, distinct=$distinct, field=$field, kind=$kind]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.defaultValue != null) {
      json[r'default_value'] = this.defaultValue;
    } else {
      json[r'default_value'] = null;
    }
    if (this.distinct != null) {
      json[r'distinct'] = this.distinct;
    } else {
      json[r'distinct'] = null;
    }
      json[r'field'] = this.field;
      json[r'kind'] = this.kind;
    return json;
  }

  /// Returns a new [AggregateMetricOneOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateMetricOneOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'field'), 'Required key "AggregateMetricOneOf[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "AggregateMetricOneOf[field]" has a null value in JSON.');
        assert(json.containsKey(r'kind'), 'Required key "AggregateMetricOneOf[kind]" is missing from JSON.');
        assert(json[r'kind'] != null, 'Required key "AggregateMetricOneOf[kind]" has a null value in JSON.');
        return true;
      }());

      return AggregateMetricOneOf(
        defaultValue: mapValueOfType<String>(json, r'default_value'),
        distinct: mapValueOfType<bool>(json, r'distinct'),
        field: mapValueOfType<String>(json, r'field')!,
        kind: AggregateMetricOneOfKindEnum.fromJson(json[r'kind'])!,
      );
    }
    return null;
  }

  static List<AggregateMetricOneOf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateMetricOneOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateMetricOneOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateMetricOneOf> mapFromJson(dynamic json) {
    final map = <String, AggregateMetricOneOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateMetricOneOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateMetricOneOf-objects as value to a dart map
  static Map<String, List<AggregateMetricOneOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AggregateMetricOneOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateMetricOneOf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'kind',
  };
}


class AggregateMetricOneOfKindEnum {
  /// Instantiate a new enum with the provided [value].
  const AggregateMetricOneOfKindEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const count = AggregateMetricOneOfKindEnum._(r'Count');

  /// List of all possible values in this [enum][AggregateMetricOneOfKindEnum].
  static const values = <AggregateMetricOneOfKindEnum>[
    count,
  ];

  static AggregateMetricOneOfKindEnum? fromJson(dynamic value) => AggregateMetricOneOfKindEnumTypeTransformer().decode(value);

  static List<AggregateMetricOneOfKindEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateMetricOneOfKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateMetricOneOfKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AggregateMetricOneOfKindEnum] to String,
/// and [decode] dynamic data back to [AggregateMetricOneOfKindEnum].
class AggregateMetricOneOfKindEnumTypeTransformer {
  factory AggregateMetricOneOfKindEnumTypeTransformer() => _instance ??= const AggregateMetricOneOfKindEnumTypeTransformer._();

  const AggregateMetricOneOfKindEnumTypeTransformer._();

  String encode(AggregateMetricOneOfKindEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AggregateMetricOneOfKindEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AggregateMetricOneOfKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Count': return AggregateMetricOneOfKindEnum.count;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AggregateMetricOneOfKindEnumTypeTransformer] instance.
  static AggregateMetricOneOfKindEnumTypeTransformer? _instance;
}
