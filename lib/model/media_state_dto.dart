//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class MediaStateDTO {
  /// Returns a new [MediaStateDTO] instance.
  MediaStateDTO({
    required this.addedDatetime,
    required this.notes,
    required this.rating,
    required this.status,
    required this.updatedDatetime,
  });

  DateTime addedDatetime;

  String notes;

  /// Minimum value: 0
  int rating;

  MediaStatus status;

  DateTime updatedDatetime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MediaStateDTO &&
    other.addedDatetime == addedDatetime &&
    other.notes == notes &&
    other.rating == rating &&
    other.status == status &&
    other.updatedDatetime == updatedDatetime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addedDatetime.hashCode) +
    (notes.hashCode) +
    (rating.hashCode) +
    (status.hashCode) +
    (updatedDatetime.hashCode);

  @override
  String toString() => 'MediaStateDTO[addedDatetime=$addedDatetime, notes=$notes, rating=$rating, status=$status, updatedDatetime=$updatedDatetime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'added_datetime'] = this.addedDatetime.toIso8601String();
      json[r'notes'] = this.notes;
      json[r'rating'] = this.rating;
      json[r'status'] = this.status;
      json[r'updated_datetime'] = this.updatedDatetime.toIso8601String();
    return json;
  }

  /// Returns a new [MediaStateDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MediaStateDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'added_datetime'), 'Required key "MediaStateDTO[added_datetime]" is missing from JSON.');
        assert(json[r'added_datetime'] != null, 'Required key "MediaStateDTO[added_datetime]" has a null value in JSON.');
        assert(json.containsKey(r'notes'), 'Required key "MediaStateDTO[notes]" is missing from JSON.');
        assert(json[r'notes'] != null, 'Required key "MediaStateDTO[notes]" has a null value in JSON.');
        assert(json.containsKey(r'rating'), 'Required key "MediaStateDTO[rating]" is missing from JSON.');
        assert(json[r'rating'] != null, 'Required key "MediaStateDTO[rating]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "MediaStateDTO[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "MediaStateDTO[status]" has a null value in JSON.');
        assert(json.containsKey(r'updated_datetime'), 'Required key "MediaStateDTO[updated_datetime]" is missing from JSON.');
        assert(json[r'updated_datetime'] != null, 'Required key "MediaStateDTO[updated_datetime]" has a null value in JSON.');
        return true;
      }());

      return MediaStateDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', r'')!,
        notes: mapValueOfType<String>(json, r'notes')!,
        rating: mapValueOfType<int>(json, r'rating')!,
        status: MediaStatus.fromJson(json[r'status'])!,
        updatedDatetime: mapDateTime(json, r'updated_datetime', r'')!,
      );
    }
    return null;
  }

  static List<MediaStateDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MediaStateDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MediaStateDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MediaStateDTO> mapFromJson(dynamic json) {
    final map = <String, MediaStateDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MediaStateDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MediaStateDTO-objects as value to a dart map
  static Map<String, List<MediaStateDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MediaStateDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MediaStateDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'added_datetime',
    'notes',
    'rating',
    'status',
    'updated_datetime',
  };
}
