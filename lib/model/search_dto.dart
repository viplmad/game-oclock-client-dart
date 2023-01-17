//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class SearchDTO {
  /// Returns a new [SearchDTO] instance.
  SearchDTO({
    this.filter = const [],
    this.page,
    this.size,
    this.sort = const [],
  });

  List<FilterDTO> filter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? page;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  List<SortDTO> sort;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchDTO &&
     other.filter == filter &&
     other.page == page &&
     other.size == size &&
     other.sort == sort;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filter.hashCode) +
    (page == null ? 0 : page!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (sort.hashCode);

  @override
  String toString() => 'SearchDTO[filter=$filter, page=$page, size=$size, sort=$sort]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filter'] = this.filter;
    if (this.page != null) {
      json[r'page'] = this.page;
    } else {
      json[r'page'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
      json[r'sort'] = this.sort;
    return json;
  }

  /// Returns a new [SearchDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchDTO(
        filter: FilterDTO.listFromJson(json[r'filter']) ?? const [],
        page: mapValueOfType<int>(json, r'page'),
        size: mapValueOfType<int>(json, r'size'),
        sort: SortDTO.listFromJson(json[r'sort']) ?? const [],
      );
    }
    return null;
  }

  static List<SearchDTO>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchDTO> mapFromJson(dynamic json) {
    final map = <String, SearchDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchDTO-objects as value to a dart map
  static Map<String, List<SearchDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchDTO.listFromJson(entry.value, growable: growable,);
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

