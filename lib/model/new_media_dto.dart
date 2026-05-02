//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class NewMediaDTO {
  /// Returns a new [NewMediaDTO] instance.
  NewMediaDTO({
    required this.media,
    required this.state,
  });

  NewMediaValue media;

  NewMediaStateDTO state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewMediaDTO &&
    other.media == media &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (media.hashCode) +
    (state.hashCode);

  @override
  String toString() => 'NewMediaDTO[media=$media, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'media'] = this.media;
      json[r'state'] = this.state;
    return json;
  }

  /// Returns a new [NewMediaDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewMediaDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'media'), 'Required key "NewMediaDTO[media]" is missing from JSON.');
        assert(json[r'media'] != null, 'Required key "NewMediaDTO[media]" has a null value in JSON.');
        assert(json.containsKey(r'state'), 'Required key "NewMediaDTO[state]" is missing from JSON.');
        assert(json[r'state'] != null, 'Required key "NewMediaDTO[state]" has a null value in JSON.');
        return true;
      }());

      return NewMediaDTO(
        media: NewMediaValue.fromJson(json[r'media'])!,
        state: NewMediaStateDTO.fromJson(json[r'state'])!,
      );
    }
    return null;
  }

  static List<NewMediaDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewMediaDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewMediaDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewMediaDTO> mapFromJson(dynamic json) {
    final map = <String, NewMediaDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewMediaDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewMediaDTO-objects as value to a dart map
  static Map<String, List<NewMediaDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewMediaDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewMediaDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'media',
    'state',
  };
}
