//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class NewMediaStateDTO {
  /// Returns a new [NewMediaStateDTO] instance.
  NewMediaStateDTO({
    this.notes,
    this.rating,
    this.status,
  });

  String? notes;

  /// Minimum value: 0
  int? rating;

  MediaStatus? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewMediaStateDTO &&
    other.notes == notes &&
    other.rating == rating &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notes == null ? 0 : notes!.hashCode) +
    (rating == null ? 0 : rating!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'NewMediaStateDTO[notes=$notes, rating=$rating, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notes != null) {
      json[r'notes'] = this.notes;
    } else {
      json[r'notes'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [NewMediaStateDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewMediaStateDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return NewMediaStateDTO(
        notes: mapValueOfType<String>(json, r'notes'),
        rating: mapValueOfType<int>(json, r'rating'),
        status: MediaStatus.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<NewMediaStateDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewMediaStateDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewMediaStateDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewMediaStateDTO> mapFromJson(dynamic json) {
    final map = <String, NewMediaStateDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewMediaStateDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewMediaStateDTO-objects as value to a dart map
  static Map<String, List<NewMediaStateDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewMediaStateDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewMediaStateDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
