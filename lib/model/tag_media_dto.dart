//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class TagMediaDTO {
  /// Returns a new [TagMediaDTO] instance.
  TagMediaDTO({
    required this.tag,
    required this.tagged,
  });

  TagDTO tag;

  TaggedDTO tagged;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TagMediaDTO &&
    other.tag == tag &&
    other.tagged == tagged;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tag.hashCode) +
    (tagged.hashCode);

  @override
  String toString() => 'TagMediaDTO[tag=$tag, tagged=$tagged]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tag'] = this.tag;
      json[r'tagged'] = this.tagged;
    return json;
  }

  /// Returns a new [TagMediaDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TagMediaDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'tag'), 'Required key "TagMediaDTO[tag]" is missing from JSON.');
        assert(json[r'tag'] != null, 'Required key "TagMediaDTO[tag]" has a null value in JSON.');
        assert(json.containsKey(r'tagged'), 'Required key "TagMediaDTO[tagged]" is missing from JSON.');
        assert(json[r'tagged'] != null, 'Required key "TagMediaDTO[tagged]" has a null value in JSON.');
        return true;
      }());

      return TagMediaDTO(
        tag: TagDTO.fromJson(json[r'tag'])!,
        tagged: TaggedDTO.fromJson(json[r'tagged'])!,
      );
    }
    return null;
  }

  static List<TagMediaDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TagMediaDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TagMediaDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TagMediaDTO> mapFromJson(dynamic json) {
    final map = <String, TagMediaDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TagMediaDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TagMediaDTO-objects as value to a dart map
  static Map<String, List<TagMediaDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TagMediaDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TagMediaDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tag',
    'tagged',
  };
}
