//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class PotentialMediaDTO {
  /// Returns a new [PotentialMediaDTO] instance.
  PotentialMediaDTO({
    required this.external_,
    required this.media,
    this.state,
  });

  ExternalMediaIdDTO external_;

  ExternalMediaDataDTO media;

  MediaStateDTO? state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PotentialMediaDTO &&
    other.external_ == external_ &&
    other.media == media &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (external_.hashCode) +
    (media.hashCode) +
    (state == null ? 0 : state!.hashCode);

  @override
  String toString() => 'PotentialMediaDTO[external_=$external_, media=$media, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'external'] = this.external_;
      json[r'media'] = this.media;
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    return json;
  }

  /// Returns a new [PotentialMediaDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PotentialMediaDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'external'), 'Required key "PotentialMediaDTO[external]" is missing from JSON.');
        assert(json[r'external'] != null, 'Required key "PotentialMediaDTO[external]" has a null value in JSON.');
        assert(json.containsKey(r'media'), 'Required key "PotentialMediaDTO[media]" is missing from JSON.');
        assert(json[r'media'] != null, 'Required key "PotentialMediaDTO[media]" has a null value in JSON.');
        return true;
      }());

      return PotentialMediaDTO(
        external_: ExternalMediaIdDTO.fromJson(json[r'external'])!,
        media: ExternalMediaDataDTO.fromJson(json[r'media'])!,
        state: MediaStateDTO.fromJson(json[r'state']),
      );
    }
    return null;
  }

  static List<PotentialMediaDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PotentialMediaDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PotentialMediaDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PotentialMediaDTO> mapFromJson(dynamic json) {
    final map = <String, PotentialMediaDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PotentialMediaDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PotentialMediaDTO-objects as value to a dart map
  static Map<String, List<PotentialMediaDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PotentialMediaDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PotentialMediaDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'external',
    'media',
  };
}
