//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class MediaAvailableDTO {
  /// Returns a new [MediaAvailableDTO] instance.
  MediaAvailableDTO({
    required this.available,
    required this.media,
  });

  AvailableDTO available;

  MediaDTO media;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MediaAvailableDTO &&
    other.available == available &&
    other.media == media;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available.hashCode) +
    (media.hashCode);

  @override
  String toString() => 'MediaAvailableDTO[available=$available, media=$media]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'available'] = this.available;
      json[r'media'] = this.media;
    return json;
  }

  /// Returns a new [MediaAvailableDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MediaAvailableDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'available'), 'Required key "MediaAvailableDTO[available]" is missing from JSON.');
        assert(json[r'available'] != null, 'Required key "MediaAvailableDTO[available]" has a null value in JSON.');
        assert(json.containsKey(r'media'), 'Required key "MediaAvailableDTO[media]" is missing from JSON.');
        assert(json[r'media'] != null, 'Required key "MediaAvailableDTO[media]" has a null value in JSON.');
        return true;
      }());

      return MediaAvailableDTO(
        available: AvailableDTO.fromJson(json[r'available'])!,
        media: MediaDTO.fromJson(json[r'media'])!,
      );
    }
    return null;
  }

  static List<MediaAvailableDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MediaAvailableDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MediaAvailableDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MediaAvailableDTO> mapFromJson(dynamic json) {
    final map = <String, MediaAvailableDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MediaAvailableDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MediaAvailableDTO-objects as value to a dart map
  static Map<String, List<MediaAvailableDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MediaAvailableDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MediaAvailableDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'available',
    'media',
  };
}
