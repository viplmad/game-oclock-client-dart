//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class MultipleValuesFilterDTO {
  /// Returns a new [MultipleValuesFilterDTO] instance.
  MultipleValuesFilterDTO({
    this.chainOperator,
    required this.field,
    this.value = const [],
  });

  ChainOperatorType? chainOperator;

  String field;

  List<String> value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MultipleValuesFilterDTO &&
    other.chainOperator == chainOperator &&
    other.field == field &&
    _deepEquality.equals(other.value, value);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chainOperator == null ? 0 : chainOperator!.hashCode) +
    (field.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'MultipleValuesFilterDTO[chainOperator=$chainOperator, field=$field, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chainOperator != null) {
      json[r'chain_operator'] = this.chainOperator;
    } else {
      json[r'chain_operator'] = null;
    }
      json[r'field'] = this.field;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [MultipleValuesFilterDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MultipleValuesFilterDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'field'), 'Required key "MultipleValuesFilterDTO[field]" is missing from JSON.');
        assert(json[r'field'] != null, 'Required key "MultipleValuesFilterDTO[field]" has a null value in JSON.');
        assert(json.containsKey(r'value'), 'Required key "MultipleValuesFilterDTO[value]" is missing from JSON.');
        assert(json[r'value'] != null, 'Required key "MultipleValuesFilterDTO[value]" has a null value in JSON.');
        return true;
      }());

      return MultipleValuesFilterDTO(
        chainOperator: ChainOperatorType.fromJson(json[r'chain_operator']),
        field: mapValueOfType<String>(json, r'field')!,
        value: json[r'value'] is Iterable
            ? (json[r'value'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<MultipleValuesFilterDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MultipleValuesFilterDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MultipleValuesFilterDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MultipleValuesFilterDTO> mapFromJson(dynamic json) {
    final map = <String, MultipleValuesFilterDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MultipleValuesFilterDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MultipleValuesFilterDTO-objects as value to a dart map
  static Map<String, List<MultipleValuesFilterDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MultipleValuesFilterDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MultipleValuesFilterDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'value',
  };
}
