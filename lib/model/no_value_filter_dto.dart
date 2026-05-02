//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class NoValueFilterDTO {
  /// Returns a new [NoValueFilterDTO] instance.
  NoValueFilterDTO({
    this.chainOperator,
    required this.field,
  });

  ChainOperatorType? chainOperator;

  String field;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NoValueFilterDTO &&
    other.chainOperator == chainOperator &&
    other.field == field;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chainOperator == null ? 0 : chainOperator!.hashCode) +
    (field.hashCode);

  @override
  String toString() => 'NoValueFilterDTO[chainOperator=$chainOperator, field=$field]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chainOperator != null) {
      json[r'chain_operator'] = this.chainOperator;
    } else {
      json[r'chain_operator'] = null;
    }
      json[r'field'] = this.field;
    return json;
  }

  /// Returns a new [NoValueFilterDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NoValueFilterDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'field'), 'Required key "NoValueFilterDTO[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "NoValueFilterDTO[field]" has a null value in JSON.');
        return true;
      }());

      return NoValueFilterDTO(
        chainOperator: ChainOperatorType.fromJson(json[r'chain_operator']),
        field: mapValueOfType<String>(json, r'field')!,
      );
    }
    return null;
  }

  static List<NoValueFilterDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NoValueFilterDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NoValueFilterDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NoValueFilterDTO> mapFromJson(dynamic json) {
    final map = <String, NoValueFilterDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NoValueFilterDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NoValueFilterDTO-objects as value to a dart map
  static Map<String, List<NoValueFilterDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NoValueFilterDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NoValueFilterDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
  };
}
