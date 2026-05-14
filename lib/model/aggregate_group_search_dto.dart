//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class AggregateGroupSearchDTO {
  /// Returns a new [AggregateGroupSearchDTO] instance.
  AggregateGroupSearchDTO({
    required this.aggr,
    this.filter = const [],
    required this.group,
    this.size,
    this.sort,
  });

  AggregateMetricDTO aggr;

  List<FilterDTO>? filter;

  AggregateGroupDTO group;

  /// Minimum value: 0
  int? size;

  AggregateGroupSortDTO? sort;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AggregateGroupSearchDTO &&
    other.aggr == aggr &&
    _deepEquality.equals(other.filter, filter) &&
    other.group == group &&
    other.size == size &&
    other.sort == sort;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aggr.hashCode) +
    (filter == null ? 0 : filter!.hashCode) +
    (group.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (sort == null ? 0 : sort!.hashCode);

  @override
  String toString() => 'AggregateGroupSearchDTO[aggr=$aggr, filter=$filter, group=$group, size=$size, sort=$sort]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'aggr'] = this.aggr;
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
      json[r'group'] = this.group;
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

  /// Returns a new [AggregateGroupSearchDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateGroupSearchDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'aggr'), 'Required key "AggregateGroupSearchDTO[aggr]" is missing from JSON.');
        assert(json[r'aggr'] != null, 'Required key "AggregateGroupSearchDTO[aggr]" has a null value in JSON.');
        assert(json.containsKey(r'group'), 'Required key "AggregateGroupSearchDTO[group]" is missing from JSON.');
        assert(json[r'group'] != null, 'Required key "AggregateGroupSearchDTO[group]" has a null value in JSON.');
        return true;
      }());

      return AggregateGroupSearchDTO(
        aggr: AggregateMetricDTO.fromJson(json[r'aggr'])!,
        filter: FilterDTO.listFromJson(json[r'filter']),
        group: AggregateGroupDTO.fromJson(json[r'group'])!,
        size: mapValueOfType<int>(json, r'size'),
        sort: AggregateGroupSortDTO.fromJson(json[r'sort']),
      );
    }
    return null;
  }

  static List<AggregateGroupSearchDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateGroupSearchDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroupSearchDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateGroupSearchDTO> mapFromJson(dynamic json) {
    final map = <String, AggregateGroupSearchDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateGroupSearchDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateGroupSearchDTO-objects as value to a dart map
  static Map<String, List<AggregateGroupSearchDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AggregateGroupSearchDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateGroupSearchDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'aggr',
    'group',
  };
}
