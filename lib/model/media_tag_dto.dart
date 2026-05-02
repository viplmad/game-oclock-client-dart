//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class MediaTagDTO {
  /// Returns a new [MediaTagDTO] instance.
  MediaTagDTO({
    required this.media,
    required this.tagged,
  });

  MediaDTO media;

  TaggedDTO tagged;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MediaTagDTO &&
    other.media == media &&
    other.tagged == tagged;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (media.hashCode) +
    (tagged.hashCode);

  @override
  String toString() => 'MediaTagDTO[media=$media, tagged=$tagged]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'media'] = this.media;
      json[r'tagged'] = this.tagged;
    return json;
  }

  /// Returns a new [MediaTagDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MediaTagDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'media'), 'Required key "MediaTagDTO[media]" is missing from JSON.');
        assert(json[r'media'] != null, 'Required key "MediaTagDTO[media]" has a null value in JSON.');
        assert(json.containsKey(r'tagged'), 'Required key "MediaTagDTO[tagged]" is missing from JSON.');
        assert(json[r'tagged'] != null, 'Required key "MediaTagDTO[tagged]" has a null value in JSON.');
        return true;
      }());

      return MediaTagDTO(
        media: MediaDTO.fromJson(json[r'media'])!,
        tagged: TaggedDTO.fromJson(json[r'tagged'])!,
      );
    }
    return null;
  }

  static List<MediaTagDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MediaTagDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MediaTagDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MediaTagDTO> mapFromJson(dynamic json) {
    final map = <String, MediaTagDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MediaTagDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MediaTagDTO-objects as value to a dart map
  static Map<String, List<MediaTagDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MediaTagDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MediaTagDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'media',
    'tagged',
  };
}
