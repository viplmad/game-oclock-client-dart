//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class AggregateResultDTOOneOf1 {
  /// Returns a new [AggregateResultDTOOneOf1] instance.
  AggregateResultDTOOneOf1({
    required this.duration,
  });

  String duration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AggregateResultDTOOneOf1 &&
    other.duration == duration;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (duration.hashCode);

  @override
  String toString() => 'AggregateResultDTOOneOf1[duration=$duration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'Duration'] = this.duration;
    return json;
  }

  /// Returns a new [AggregateResultDTOOneOf1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateResultDTOOneOf1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'Duration'), 'Required key "AggregateResultDTOOneOf1[Duration]" is missing from JSON.');
        assert(json[r'Duration'] != null, 'Required key "AggregateResultDTOOneOf1[Duration]" has a null value in JSON.');
        return true;
      }());

      return AggregateResultDTOOneOf1(
        duration: mapValueOfType<String>(json, r'Duration')!,
      );
    }
    return null;
  }

  static List<AggregateResultDTOOneOf1> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateResultDTOOneOf1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateResultDTOOneOf1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateResultDTOOneOf1> mapFromJson(dynamic json) {
    final map = <String, AggregateResultDTOOneOf1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateResultDTOOneOf1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateResultDTOOneOf1-objects as value to a dart map
  static Map<String, List<AggregateResultDTOOneOf1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AggregateResultDTOOneOf1>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateResultDTOOneOf1.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Duration',
  };
}
