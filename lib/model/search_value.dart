part of n2t.game_oclock.client;

class SearchValue {
  /// Returns a new [SearchValue] instance.
  SearchValue({
    this.value,
    this.values,
  });

  String? value;

  List<String>? values;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchValue && other.value == value && other.values == values;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (value == null ? 0 : value!.hashCode) +
      (values == null ? 0 : values!.hashCode);

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
          assert(json.containsKey(key),
              'Required key "SearchValue[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SearchValue[$key]" has a null value in JSON.');
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

  static List<SearchValue> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
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
  static Map<String, List<SearchValue>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SearchValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchValue.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
