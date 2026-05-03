//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class PageResultDTOSessionStreakDTO {
  /// Returns a new [PageResultDTOSessionStreakDTO] instance.
  PageResultDTOSessionStreakDTO({
    this.data = const [],
    required this.page,
    required this.size,
  });

  /// List of elements in the current page
  List<SessionStreakDTO> data;

  /// Current page number (starting from 1)
  ///
  /// Minimum value: 0
  int page;

  /// Number of items per page
  ///
  /// Minimum value: 0
  int size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PageResultDTOSessionStreakDTO &&
    _deepEquality.equals(other.data, data) &&
    other.page == page &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (page.hashCode) +
    (size.hashCode);

  @override
  String toString() => 'PageResultDTOSessionStreakDTO[data=$data, page=$page, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'page'] = this.page;
      json[r'size'] = this.size;
    return json;
  }

  /// Returns a new [PageResultDTOSessionStreakDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PageResultDTOSessionStreakDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'data'), 'Required key "PageResultDTOSessionStreakDTO[data]" is missing from JSON.');
        assert(json[r'data'] != null, 'Required key "PageResultDTOSessionStreakDTO[data]" has a null value in JSON.');
        assert(json.containsKey(r'page'), 'Required key "PageResultDTOSessionStreakDTO[page]" is missing from JSON.');
        assert(json[r'page'] != null, 'Required key "PageResultDTOSessionStreakDTO[page]" has a null value in JSON.');
        assert(json.containsKey(r'size'), 'Required key "PageResultDTOSessionStreakDTO[size]" is missing from JSON.');
        assert(json[r'size'] != null, 'Required key "PageResultDTOSessionStreakDTO[size]" has a null value in JSON.');
        return true;
      }());

      return PageResultDTOSessionStreakDTO(
        data: SessionStreakDTO.listFromJson(json[r'data']),
        page: mapValueOfType<int>(json, r'page')!,
        size: mapValueOfType<int>(json, r'size')!,
      );
    }
    return null;
  }

  static List<PageResultDTOSessionStreakDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PageResultDTOSessionStreakDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PageResultDTOSessionStreakDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PageResultDTOSessionStreakDTO> mapFromJson(dynamic json) {
    final map = <String, PageResultDTOSessionStreakDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PageResultDTOSessionStreakDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PageResultDTOSessionStreakDTO-objects as value to a dart map
  static Map<String, List<PageResultDTOSessionStreakDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PageResultDTOSessionStreakDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PageResultDTOSessionStreakDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'page',
    'size',
  };
}
