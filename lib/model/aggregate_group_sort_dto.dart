//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class AggregateGroupSortDTO {
  /// Returns a new [AggregateGroupSortDTO] instance.
  AggregateGroupSortDTO({
    required this.field,
    required this.order,
  });

  AggregateGroupSortType field;

  OrderType order;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AggregateGroupSortDTO &&
    other.field == field &&
    other.order == order;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (field.hashCode) +
    (order.hashCode);

  @override
  String toString() => 'AggregateGroupSortDTO[field=$field, order=$order]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field'] = this.field;
      json[r'order'] = this.order;
    return json;
  }

  /// Returns a new [AggregateGroupSortDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateGroupSortDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'field'), 'Required key "AggregateGroupSortDTO[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "AggregateGroupSortDTO[field]" has a null value in JSON.');
        assert(json.containsKey(r'order'), 'Required key "AggregateGroupSortDTO[order]" is missing from JSON.');
        assert(json[r'order'] != null, 'Required key "AggregateGroupSortDTO[order]" has a null value in JSON.');
        return true;
      }());

      return AggregateGroupSortDTO(
        field: AggregateGroupSortType.fromJson(json[r'field'])!,
        order: OrderType.fromJson(json[r'order'])!,
      );
    }
    return null;
  }

  static List<AggregateGroupSortDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregateGroupSortDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroupSortDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateGroupSortDTO> mapFromJson(dynamic json) {
    final map = <String, AggregateGroupSortDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateGroupSortDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateGroupSortDTO-objects as value to a dart map
  static Map<String, List<AggregateGroupSortDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AggregateGroupSortDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateGroupSortDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'order',
  };
}
