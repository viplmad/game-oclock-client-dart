//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class MediaSessionDTO {
  /// Returns a new [MediaSessionDTO] instance.
  MediaSessionDTO({
    required this.media,
    required this.session,
  });

  MediaDTO media;

  SessionDTO session;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MediaSessionDTO &&
    other.media == media &&
    other.session == session;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (media.hashCode) +
    (session.hashCode);

  @override
  String toString() => 'MediaSessionDTO[media=$media, session=$session]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'media'] = this.media;
      json[r'session'] = this.session;
    return json;
  }

  /// Returns a new [MediaSessionDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MediaSessionDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'media'), 'Required key "MediaSessionDTO[media]" is missing from JSON.');
        assert(json[r'media'] != null, 'Required key "MediaSessionDTO[media]" has a null value in JSON.');
        assert(json.containsKey(r'session'), 'Required key "MediaSessionDTO[session]" is missing from JSON.');
        assert(json[r'session'] != null, 'Required key "MediaSessionDTO[session]" has a null value in JSON.');
        return true;
      }());

      return MediaSessionDTO(
        media: MediaDTO.fromJson(json[r'media'])!,
        session: SessionDTO.fromJson(json[r'session'])!,
      );
    }
    return null;
  }

  static List<MediaSessionDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MediaSessionDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MediaSessionDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MediaSessionDTO> mapFromJson(dynamic json) {
    final map = <String, MediaSessionDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MediaSessionDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MediaSessionDTO-objects as value to a dart map
  static Map<String, List<MediaSessionDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MediaSessionDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MediaSessionDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'media',
    'session',
  };
}
