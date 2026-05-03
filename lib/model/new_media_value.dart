//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class NewMediaValue {
  /// Returns a new [NewMediaValue] instance.
  NewMediaValue({
    this.edition,
    this.genres = const [],
    this.imageUrl,
    this.kind,
    required this.parentId,
    this.parentOrder,
    this.releaseDate,
    this.series = const [],
    this.title,
    required this.id,
    required this.source_,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? edition;

  List<String> genres;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MediaType? kind;

  String parentId;

  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parentOrder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? releaseDate;

  List<String> series;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  String id;

  String source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewMediaValue &&
    other.edition == edition &&
    _deepEquality.equals(other.genres, genres) &&
    other.imageUrl == imageUrl &&
    other.kind == kind &&
    other.parentId == parentId &&
    other.parentOrder == parentOrder &&
    other.releaseDate == releaseDate &&
    _deepEquality.equals(other.series, series) &&
    other.title == title &&
    other.id == id &&
    other.source_ == source_;

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
    (title == null ? 0 : title!.hashCode) +
    (id.hashCode) +
    (source_.hashCode);

  @override
  String toString() => 'NewMediaValue[edition=$edition, genres=$genres, imageUrl=$imageUrl, kind=$kind, parentId=$parentId, parentOrder=$parentOrder, releaseDate=$releaseDate, series=$series, title=$title, id=$id, source_=$source_]';

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
      json[r'id'] = this.id;
      json[r'source'] = this.source_;
    return json;
  }

  /// Returns a new [NewMediaValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewMediaValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'genres'), 'Required key "NewMediaValue[genres]" is missing from JSON.');
        assert(json[r'genres'] != null, 'Required key "NewMediaValue[genres]" has a null value in JSON.');
        assert(json.containsKey(r'parent_id'), 'Required key "NewMediaValue[parent_id]" is missing from JSON.');
        assert(json[r'parent_id'] != null, 'Required key "NewMediaValue[parent_id]" has a null value in JSON.');
        assert(json.containsKey(r'series'), 'Required key "NewMediaValue[series]" is missing from JSON.');
        assert(json[r'series'] != null, 'Required key "NewMediaValue[series]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "NewMediaValue[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "NewMediaValue[id]" has a null value in JSON.');
        assert(json.containsKey(r'source'), 'Required key "NewMediaValue[source]" is missing from JSON.');
        assert(json[r'source'] != null, 'Required key "NewMediaValue[source]" has a null value in JSON.');
        return true;
      }());

      return NewMediaValue(
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
        id: mapValueOfType<String>(json, r'id')!,
        source_: mapValueOfType<String>(json, r'source')!,
      );
    }
    return null;
  }

  static List<NewMediaValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewMediaValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewMediaValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewMediaValue> mapFromJson(dynamic json) {
    final map = <String, NewMediaValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewMediaValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewMediaValue-objects as value to a dart map
  static Map<String, List<NewMediaValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewMediaValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewMediaValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'genres',
    'parent_id',
    'series',
    'id',
    'source',
  };
}
