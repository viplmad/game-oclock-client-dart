//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class SortDTO {
  /// Returns a new [SortDTO] instance.
  SortDTO({
    required this.field,
    required this.order,
  });

  String field;

  OrderType order;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SortDTO &&
     other.field == field &&
     other.order == order;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (field.hashCode) +
    (order.hashCode);

  @override
  String toString() => 'SortDTO[field=$field, order=$order]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field'] = this.field;
      json[r'order'] = this.order;
    return json;
  }

  /// Returns a new [SortDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SortDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SortDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SortDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SortDTO(
        field: mapValueOfType<String>(json, r'field')!,
        order: OrderType.fromJson(json[r'order'])!,
      );
    }
    return null;
  }

  static List<SortDTO>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SortDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SortDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SortDTO> mapFromJson(dynamic json) {
    final map = <String, SortDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SortDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SortDTO-objects as value to a dart map
  static Map<String, List<SortDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SortDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SortDTO.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
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

