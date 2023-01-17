//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class PlatformAvailableDTO extends PlatformDTO {
  /// Returns a new [PlatformAvailableDTO] instance.
  PlatformAvailableDTO({
    required DateTime addedDatetime,
    required this.availableDate,
    String? iconFilename,
    required int id,
    required String name,
    PlatformType? type,
    required DateTime updatedDatetime,
  }) : super(
            addedDatetime: addedDatetime,
            iconFilename: iconFilename,
            id: id,
            name: name,
            type: type,
            updatedDatetime: updatedDatetime);

  DateTime availableDate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlatformAvailableDTO &&
          other.addedDatetime == addedDatetime &&
          other.availableDate == availableDate &&
          other.iconFilename == iconFilename &&
          other.id == id &&
          other.name == name &&
          other.type == type &&
          other.updatedDatetime == updatedDatetime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (addedDatetime.hashCode) +
      (availableDate.hashCode) +
      (iconFilename == null ? 0 : iconFilename!.hashCode) +
      (id.hashCode) +
      (name.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (updatedDatetime.hashCode);

  @override
  String toString() =>
      'PlatformAvailableDTO[addedDatetime=$addedDatetime, availableDate=$availableDate, iconFilename=$iconFilename, id=$id, name=$name, type=$type, updatedDatetime=$updatedDatetime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'added_datetime'] = this.addedDatetime.toUtc().toIso8601String();
    json[r'available_date'] = _dateFormatter.format(this.availableDate.toUtc());
    if (this.iconFilename != null) {
      json[r'icon_filename'] = this.iconFilename;
    } else {
      json[r'icon_filename'] = null;
    }
    json[r'id'] = this.id;
    json[r'name'] = this.name;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    json[r'updated_datetime'] = this.updatedDatetime.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PlatformAvailableDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlatformAvailableDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PlatformAvailableDTO[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PlatformAvailableDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlatformAvailableDTO(
        addedDatetime: mapDateTime(json, r'added_datetime', '')!,
        availableDate: mapDateTime(json, r'available_date', '')!,
        iconFilename: mapValueOfType<String>(json, r'icon_filename'),
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        type: PlatformType.fromJson(json[r'type']),
        updatedDatetime: mapDateTime(json, r'updated_datetime', '')!,
      );
    }
    return null;
  }

  static List<PlatformAvailableDTO>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PlatformAvailableDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlatformAvailableDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlatformAvailableDTO> mapFromJson(dynamic json) {
    final map = <String, PlatformAvailableDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlatformAvailableDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlatformAvailableDTO-objects as value to a dart map
  static Map<String, List<PlatformAvailableDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PlatformAvailableDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlatformAvailableDTO.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'added_datetime',
    'available_date',
    'id',
    'name',
    'updated_datetime',
  };
}
