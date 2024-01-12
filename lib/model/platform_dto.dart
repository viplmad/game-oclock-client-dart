//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class PlatformDTO extends PrimaryModel {
  /// Returns a new [PlatformDTO] instance.
  PlatformDTO({
    required this.addedDatetime,
    this.iconFilename,
    this.iconUrl,
    required super.id,
    required this.name,
    this.type,
    required this.updatedDatetime,
  });

  DateTime addedDatetime;

  String? iconFilename;

  String? iconUrl;

  String name;

  PlatformType? type;

  DateTime updatedDatetime;

  NewPlatformDTO newWith({
    String? name,
    PlatformType? type,
  }) {
    return NewPlatformDTO(
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }

  PlatformAvailableDTO withAvailableDate(DateTime date) {
    return PlatformAvailableDTO(
        addedDatetime: addedDatetime,
        availableDate: date,
        id: id,
        name: name,
        updatedDatetime: updatedDatetime);
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlatformDTO &&
    other.addedDatetime == addedDatetime &&
    other.iconFilename == iconFilename &&
    other.iconUrl == iconUrl &&
    other.id == id &&
    other.name == name &&
    other.type == type &&
    other.updatedDatetime == updatedDatetime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addedDatetime.hashCode) +
    (iconFilename == null ? 0 : iconFilename!.hashCode) +
    (iconUrl == null ? 0 : iconUrl!.hashCode) +
    (id.hashCode) +
    (name.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (updatedDatetime.hashCode);

  @override
  String toString() => 'PlatformDTO[addedDatetime=$addedDatetime, iconFilename=$iconFilename, iconUrl=$iconUrl, id=$id, name=$name, type=$type, updatedDatetime=$updatedDatetime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'added_datetime'] = this.addedDatetime.toIso8601String();
    if (this.iconFilename != null) {
      json[r'icon_filename'] = this.iconFilename;
    } else {
      json[r'icon_filename'] = null;
    }
    if (this.iconUrl != null) {
      json[r'icon_url'] = this.iconUrl;
    } else {
      json[r'icon_url'] = null;
    }
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
      json[r'updated_datetime'] = this.updatedDatetime.toIso8601String();
    return json;
  }

  /// Returns a new [PlatformDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlatformDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlatformDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlatformDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlatformDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', r'')!,
        iconFilename: mapValueOfType<String>(json, r'icon_filename'),
        iconUrl: mapValueOfType<String>(json, r'icon_url'),
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        type: PlatformType.fromJson(json[r'type']),
        updatedDatetime: mapDateTime(json, r'updated_datetime', r'')!,
      );
    }
    return null;
  }

  static List<PlatformDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlatformDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlatformDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlatformDTO> mapFromJson(dynamic json) {
    final map = <String, PlatformDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlatformDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlatformDTO-objects as value to a dart map
  static Map<String, List<PlatformDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlatformDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlatformDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'added_datetime',
    'id',
    'name',
    'updated_datetime',
  };
}
