//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class ExternalMediaDataDTO {
  /// Returns a new [ExternalMediaDataDTO] instance.
  ExternalMediaDataDTO({
    required this.edition,
    this.genres = const [],
    this.id,
    this.imageUrl,
    required this.kind,
    this.parentId,
    this.parentOrder,
    this.releaseDate,
    this.series = const [],
    required this.title,
  });

  String edition;

  List<String> genres;

  String? id;

  String? imageUrl;

  MediaType kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentId;

  /// Minimum value: 0
  int? parentOrder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? releaseDate;

  List<String> series;

  String title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExternalMediaDataDTO &&
    other.edition == edition &&
    _deepEquality.equals(other.genres, genres) &&
    other.id == id &&
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
    (edition.hashCode) +
    (genres.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (kind.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (parentOrder == null ? 0 : parentOrder!.hashCode) +
    (releaseDate == null ? 0 : releaseDate!.hashCode) +
    (series.hashCode) +
    (title.hashCode);

  @override
  String toString() => 'ExternalMediaDataDTO[edition=$edition, genres=$genres, id=$id, imageUrl=$imageUrl, kind=$kind, parentId=$parentId, parentOrder=$parentOrder, releaseDate=$releaseDate, series=$series, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'edition'] = this.edition;
      json[r'genres'] = this.genres;
      json[r'id'] = this.id;
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
      json[r'kind'] = this.kind;
    if (this.parentId != null) {
      json[r'parent_id'] = this.parentId;
    } else {
      json[r'parent_id'] = null;
    }
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
      json[r'title'] = this.title;
    return json;
  }

  /// Returns a new [ExternalMediaDataDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExternalMediaDataDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'edition'), 'Required key "ExternalMediaDataDTO[edition]" is missing from JSON.');
        assert(json[r'edition'] != null, 'Required key "ExternalMediaDataDTO[edition]" has a null value in JSON.');
        assert(json.containsKey(r'genres'), 'Required key "ExternalMediaDataDTO[genres]" is missing from JSON.');
        assert(json[r'genres'] != null, 'Required key "ExternalMediaDataDTO[genres]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "ExternalMediaDataDTO[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ExternalMediaDataDTO[id]" has a null value in JSON.');
        assert(json.containsKey(r'kind'), 'Required key "ExternalMediaDataDTO[kind]" is missing from JSON.');
        assert(json[r'kind'] != null, 'Required key "ExternalMediaDataDTO[kind]" has a null value in JSON.');
        assert(json.containsKey(r'series'), 'Required key "ExternalMediaDataDTO[series]" is missing from JSON.');
        assert(json[r'series'] != null, 'Required key "ExternalMediaDataDTO[series]" has a null value in JSON.');
        assert(json.containsKey(r'title'), 'Required key "ExternalMediaDataDTO[title]" is missing from JSON.');
        assert(json[r'title'] != null, 'Required key "ExternalMediaDataDTO[title]" has a null value in JSON.');
        return true;
      }());

      return ExternalMediaDataDTO(
        edition: mapValueOfType<String>(json, r'edition')!,
        genres: json[r'genres'] is Iterable
            ? (json[r'genres'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        id: mapValueOfType<String>(json, r'id')!,
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        kind: MediaType.fromJson(json[r'kind'])!,
        parentId: mapValueOfType<String>(json, r'parent_id'),
        parentOrder: mapValueOfType<int>(json, r'parent_order'),
        releaseDate: mapDateTime(json, r'release_date', r''),
        series: json[r'series'] is Iterable
            ? (json[r'series'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        title: mapValueOfType<String>(json, r'title')!,
      );
    }
    return null;
  }

  static List<ExternalMediaDataDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExternalMediaDataDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExternalMediaDataDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExternalMediaDataDTO> mapFromJson(dynamic json) {
    final map = <String, ExternalMediaDataDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExternalMediaDataDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExternalMediaDataDTO-objects as value to a dart map
  static Map<String, List<ExternalMediaDataDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExternalMediaDataDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExternalMediaDataDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'edition',
    'genres',
    'id',
    'kind',
    'series',
    'title',
  };
}
