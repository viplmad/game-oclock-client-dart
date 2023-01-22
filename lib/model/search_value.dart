//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class SearchValue {
  /// Returns a new [SearchValue] instance.
  SearchValue({
    this.value,
    this.values,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  List<String>? values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchValue &&
     other.value == value &&
     other.values == values;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (value == null ? 0 : value!.hashCode) +
    (values == null? 0 : values!.hashCode);

  @override
  String toString() => 'SearchValue[value=$value, values=$values]';

  dynamic toJson() {
    if (this.value != null) {
      return this.value;
    } else if (this.values != null) {
      return this.values;
    }
    return null;
  }

  /// Returns a new [SearchValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchValue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchValue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchValue(
        value: mapValueOfType<String>(json, r'Value'),
        values: json[r'Values'] is List
            ? (json[r'Values'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<SearchValue>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchValue> mapFromJson(dynamic json) {
    final map = <String, SearchValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchValue-objects as value to a dart map
  static Map<String, List<SearchValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchValue>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchValue.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

