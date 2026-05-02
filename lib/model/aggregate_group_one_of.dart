//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class AggregateGroupOneOf {
  /// Returns a new [AggregateGroupOneOf] instance.
  AggregateGroupOneOf({
    this.defaultValue,
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

  String field;

  AggregateGroupOneOfKindEnum kind;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AggregateGroupOneOf &&
    other.defaultValue == defaultValue &&
    other.field == field &&
    other.kind == kind;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultValue == null ? 0 : defaultValue!.hashCode) +
    (field.hashCode) +
    (kind.hashCode);

  @override
  String toString() => 'AggregateGroupOneOf[defaultValue=$defaultValue, field=$field, kind=$kind]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.defaultValue != null) {
      json[r'default_value'] = this.defaultValue;
    } else {
      json[r'default_value'] = null;
    }
      json[r'field'] = this.field;
      json[r'kind'] = this.kind;
    return json;
  }

  /// Returns a new [AggregateGroupOneOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateGroupOneOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'field'), 'Required key "AggregateGroupOneOf[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "AggregateGroupOneOf[field]" has a null value in JSON.');
        assert(json.containsKey(r'kind'), 'Required key "AggregateGroupOneOf[kind]" is missing from JSON.');
        assert(json[r'kind'] != null, 'Required key "AggregateGroupOneOf[kind]" has a null value in JSON.');
        return true;
      }());

      return AggregateGroupOneOf(
        defaultValue: mapValueOfType<String>(json, r'default_value'),
        field: mapValueOfType<String>(json, r'field')!,
        kind: AggregateGroupOneOfKindEnum.fromJson(json[r'kind'])!,
      );
    }
    return null;
  }

  static List<AggregateGroupOneOf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateGroupOneOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroupOneOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateGroupOneOf> mapFromJson(dynamic json) {
    final map = <String, AggregateGroupOneOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateGroupOneOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateGroupOneOf-objects as value to a dart map
  static Map<String, List<AggregateGroupOneOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AggregateGroupOneOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateGroupOneOf.listFromJson(entry.value, growable: growable,);
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


class AggregateGroupOneOfKindEnum {
  /// Instantiate a new enum with the provided [value].
  const AggregateGroupOneOfKindEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const field = AggregateGroupOneOfKindEnum._(r'Field');

  /// List of all possible values in this [enum][AggregateGroupOneOfKindEnum].
  static const values = <AggregateGroupOneOfKindEnum>[
    field,
  ];

  static AggregateGroupOneOfKindEnum? fromJson(dynamic value) => AggregateGroupOneOfKindEnumTypeTransformer().decode(value);

  static List<AggregateGroupOneOfKindEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateGroupOneOfKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroupOneOfKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AggregateGroupOneOfKindEnum] to String,
/// and [decode] dynamic data back to [AggregateGroupOneOfKindEnum].
class AggregateGroupOneOfKindEnumTypeTransformer {
  factory AggregateGroupOneOfKindEnumTypeTransformer() => _instance ??= const AggregateGroupOneOfKindEnumTypeTransformer._();

  const AggregateGroupOneOfKindEnumTypeTransformer._();

  String encode(AggregateGroupOneOfKindEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AggregateGroupOneOfKindEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AggregateGroupOneOfKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Field': return AggregateGroupOneOfKindEnum.field;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AggregateGroupOneOfKindEnumTypeTransformer] instance.
  static AggregateGroupOneOfKindEnumTypeTransformer? _instance;
}
