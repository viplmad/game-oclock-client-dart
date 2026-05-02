//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class ExternalMediaIdDTO {
  /// Returns a new [ExternalMediaIdDTO] instance.
  ExternalMediaIdDTO({
    required this.id,
    required this.source_,
  });

  String id;

  String source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExternalMediaIdDTO &&
    other.id == id &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (source_.hashCode);

  @override
  String toString() => 'ExternalMediaIdDTO[id=$id, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'source'] = this.source_;
    return json;
  }

  /// Returns a new [ExternalMediaIdDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExternalMediaIdDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "ExternalMediaIdDTO[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ExternalMediaIdDTO[id]" has a null value in JSON.');
        assert(json.containsKey(r'source'), 'Required key "ExternalMediaIdDTO[source]" is missing from JSON.');
        assert(json[r'source'] != null, 'Required key "ExternalMediaIdDTO[source]" has a null value in JSON.');
        return true;
      }());

      return ExternalMediaIdDTO(
        id: mapValueOfType<String>(json, r'id')!,
        source_: mapValueOfType<String>(json, r'source')!,
      );
    }
    return null;
  }

  static List<ExternalMediaIdDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExternalMediaIdDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExternalMediaIdDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExternalMediaIdDTO> mapFromJson(dynamic json) {
    final map = <String, ExternalMediaIdDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExternalMediaIdDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExternalMediaIdDTO-objects as value to a dart map
  static Map<String, List<ExternalMediaIdDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExternalMediaIdDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExternalMediaIdDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'source',
  };
}
