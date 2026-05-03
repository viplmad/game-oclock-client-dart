//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class NewManualMediaDTO {
  /// Returns a new [NewManualMediaDTO] instance.
  NewManualMediaDTO({
    this.edition,
    this.genres = const [],
    this.imageUrl,
    this.kind,
    required this.parentId,
    this.parentOrder,
    this.releaseDate,
    this.series = const [],
    this.title,
  });

  String? edition;

  List<String> genres;

  String? imageUrl;

  MediaType? kind;

  String parentId;

  /// Minimum value: 0
  int? parentOrder;

  DateTime? releaseDate;

  List<String> series;

  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewManualMediaDTO &&
    other.edition == edition &&
    _deepEquality.equals(other.genres, genres) &&
    other.imageUrl == imageUrl &&
    other.kind == kind &&
    other.parentId == parentId &&
    other.parentOrder == parentOrder &&
    other.releaseDate == releaseDate &&
    _deepEquality.equals(other.series, series) &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (edition == null ? 0 : edition!.hashCode) +
    (genres.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (parentId.hashCode) +
    (parentOrder == null ? 0 : parentOrder!.hashCode) +
    (releaseDate == null ? 0 : releaseDate!.hashCode) +
    (series.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'NewManualMediaDTO[edition=$edition, genres=$genres, imageUrl=$imageUrl, kind=$kind, parentId=$parentId, parentOrder=$parentOrder, releaseDate=$releaseDate, series=$series, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.edition != null) {
      json[r'edition'] = this.edition;
    } else {
      json[r'edition'] = null;
    }
      json[r'genres'] = this.genres;
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
      json[r'parent_id'] = this.parentId;
    if (this.parentOrder != null) {
      json[r'parent_order'] = this.parentOrder;
    } else {
      json[r'parent_order'] = null;
    }
    if (this.releaseDate != null) {
      json[r'release_date'] = this.releaseDate!.toIso8601String();
    } else {
      json[r'release_date'] = null;
    }
      json[r'series'] = this.series;
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [NewManualMediaDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewManualMediaDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'genres'), 'Required key "NewManualMediaDTO[genres]" is missing from JSON.');
        assert(json[r'genres'] != null, 'Required key "NewManualMediaDTO[genres]" has a null value in JSON.');
        assert(json.containsKey(r'parent_id'), 'Required key "NewManualMediaDTO[parent_id]" is missing from JSON.');
        assert(json[r'parent_id'] != null, 'Required key "NewManualMediaDTO[parent_id]" has a null value in JSON.');
        assert(json.containsKey(r'series'), 'Required key "NewManualMediaDTO[series]" is missing from JSON.');
        assert(json[r'series'] != null, 'Required key "NewManualMediaDTO[series]" has a null value in JSON.');
        return true;
      }());

      return NewManualMediaDTO(
        edition: mapValueOfType<String>(json, r'edition'),
        genres: json[r'genres'] is Iterable
            ? (json[r'genres'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        kind: MediaType.fromJson(json[r'kind']),
        parentId: mapValueOfType<String>(json, r'parent_id')!,
        parentOrder: mapValueOfType<int>(json, r'parent_order'),
        releaseDate: mapDateTime(json, r'release_date', r''),
        series: json[r'series'] is Iterable
            ? (json[r'series'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<NewManualMediaDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewManualMediaDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewManualMediaDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewManualMediaDTO> mapFromJson(dynamic json) {
    final map = <String, NewManualMediaDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewManualMediaDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewManualMediaDTO-objects as value to a dart map
  static Map<String, List<NewManualMediaDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewManualMediaDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewManualMediaDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'genres',
    'parent_id',
    'series',
  };
}
