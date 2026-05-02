//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class OrderDTO {
  /// Returns a new [OrderDTO] instance.
  OrderDTO({
    this.order,
  });

  /// Minimum value: 0
  int? order;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderDTO &&
    other.order == order;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (order == null ? 0 : order!.hashCode);

  @override
  String toString() => 'OrderDTO[order=$order]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    return json;
  }

  /// Returns a new [OrderDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return OrderDTO(
        order: mapValueOfType<int>(json, r'order'),
      );
    }
    return null;
  }

  static List<OrderDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderDTO> mapFromJson(dynamic json) {
    final map = <String, OrderDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderDTO-objects as value to a dart map
  static Map<String, List<OrderDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
