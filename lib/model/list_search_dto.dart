//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class ListSearchDTO {
  /// Returns a new [ListSearchDTO] instance.
  ListSearchDTO({
    this.filter = const [],
    this.page,
    this.size,
    this.sort = const [],
  });

  List<FilterDTO>? filter;

  /// Minimum value: 0
  int? page;

  /// Minimum value: 0
  int? size;

  List<SortDTO>? sort;

  ListSearchDTO copyWith({
    final List<FilterDTO>? filter,
    final int? page,
    final int? size,
    final List<SortDTO>? sort,
  }) {
    return ListSearchDTO(
      filter: filter ?? this.filter,
      page: page ?? this.page,
      size: size ?? this.size,
      sort: sort ?? this.sort,
    );
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListSearchDTO &&
    _deepEquality.equals(other.filter, filter) &&
    other.page == page &&
    other.size == size &&
    _deepEquality.equals(other.sort, sort);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filter == null ? 0 : filter!.hashCode) +
    (page == null ? 0 : page!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (sort == null ? 0 : sort!.hashCode);

  @override
  String toString() => 'ListSearchDTO[filter=$filter, page=$page, size=$size, sort=$sort]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
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
    if (this.sort != null) {
      json[r'sort'] = this.sort;
    } else {
      json[r'sort'] = null;
    }
    return json;
  }

  /// Returns a new [ListSearchDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListSearchDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ListSearchDTO(
        filter: FilterDTO.listFromJson(json[r'filter']),
        page: mapValueOfType<int>(json, r'page'),
        size: mapValueOfType<int>(json, r'size'),
        sort: SortDTO.listFromJson(json[r'sort']),
      );
    }
    return null;
  }

  static List<ListSearchDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListSearchDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListSearchDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListSearchDTO> mapFromJson(dynamic json) {
    final map = <String, ListSearchDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListSearchDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListSearchDTO-objects as value to a dart map
  static Map<String, List<ListSearchDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListSearchDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListSearchDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
