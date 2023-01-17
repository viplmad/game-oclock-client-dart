//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class SearchValueOneOf1 {
  /// Returns a new [SearchValueOneOf1] instance.
  SearchValueOneOf1({
    this.values = const [],
  });

  List<String> values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchValueOneOf1 &&
     other.values == values;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (values.hashCode);

  @override
  String toString() => 'SearchValueOneOf1[values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'Values'] = this.values;
    return json;
  }

  /// Returns a new [SearchValueOneOf1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchValueOneOf1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchValueOneOf1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchValueOneOf1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchValueOneOf1(
        values: json[r'Values'] is List
            ? (json[r'Values'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<SearchValueOneOf1>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchValueOneOf1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchValueOneOf1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchValueOneOf1> mapFromJson(dynamic json) {
    final map = <String, SearchValueOneOf1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchValueOneOf1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchValueOneOf1-objects as value to a dart map
  static Map<String, List<SearchValueOneOf1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchValueOneOf1>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchValueOneOf1.listFromJson(entry.value, growable: growable,);
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

