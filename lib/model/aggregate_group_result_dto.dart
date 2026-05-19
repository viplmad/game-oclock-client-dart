//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

abstract class AggregateGroupResultDTO<K, V> {
  /// Returns a new [AggregateGroupResultDTO] instance.
  AggregateGroupResultDTO({
    required this.key,
    required this.value,
  });

  K key;

  V value;
}

class AggregateGroupResultIntegerStringDurationDTO extends AggregateGroupResultDTO<int, List<AggregateGroupResultStringDurationDTO>> {
  /// Returns a new [AggregateGroupResultIntegerStringDurationDTO] instance.
  AggregateGroupResultIntegerStringDurationDTO({
    required super.key,
    required super.value,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AggregateGroupResultIntegerStringDurationDTO &&
          other.key == key &&
          other.value == value;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (key.hashCode) + (value.hashCode);

  @override
  String toString() => 'AggregateGroupResultIntegerStringDurationDTO[key=$key, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'key'] = this.key;
    json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [AggregateGroupResultIntegerStringDurationDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateGroupResultIntegerStringDurationDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'key'),
            'Required key "AggregateGroupResultIntegerStringDurationDTO[key]" is missing from JSON.');
        assert(json[r'key'] != null,
            'Required key "AggregateGroupResultIntegerStringDurationDTO[key]" has a null value in JSON.');
        assert(json.containsKey(r'value'),
            'Required key "AggregateGroupResultIntegerStringDurationDTO[value]" is missing from JSON.');
        assert(json[r'value'] != null,
            'Required key "AggregateGroupResultIntegerStringDurationDTO[value]" has a null value in JSON.');
        return true;
      }());

      return AggregateGroupResultIntegerStringDurationDTO(
        key: mapValueOfType<int>(json, r'key')!,
        value: AggregateGroupResultStringDurationDTO.listFromJson(json[r'value']),
      );
    }
    return null;
  }

  static List<AggregateGroupResultIntegerStringDurationDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AggregateGroupResultIntegerStringDurationDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroupResultIntegerStringDurationDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateGroupResultIntegerStringDurationDTO> mapFromJson(dynamic json) {
    final map = <String, AggregateGroupResultIntegerStringDurationDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateGroupResultIntegerStringDurationDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateGroupResultIntegerStringDurationDTO-objects as value to a dart map
  static Map<String, List<AggregateGroupResultIntegerStringDurationDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AggregateGroupResultIntegerStringDurationDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateGroupResultIntegerStringDurationDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'value',
  };
}

class AggregateGroupResultStringDurationDTO extends AggregateGroupResultDTO<String, Duration> {
  /// Returns a new [AggregateGroupResultStringDurationDTO] instance.
  AggregateGroupResultStringDurationDTO({
    required super.key,
    required super.value,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AggregateGroupResultStringDurationDTO &&
          other.key == key &&
          other.value == value;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (key.hashCode) + (value.hashCode);

  @override
  String toString() => 'AggregateGroupResultStringDurationDTO[key=$key, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'key'] = this.key;
    json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [AggregateGroupResultStringDurationDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateGroupResultStringDurationDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'key'),
            'Required key "AggregateGroupResultStringDurationDTO[key]" is missing from JSON.');
        assert(json[r'key'] != null,
            'Required key "AggregateGroupResultStringDurationDTO[key]" has a null value in JSON.');
        assert(json.containsKey(r'value'),
            'Required key "AggregateGroupResultStringDurationDTO[value]" is missing from JSON.');
        assert(json[r'value'] != null,
            'Required key "AggregateGroupResultStringDurationDTO[value]" has a null value in JSON.');
        return true;
      }());

      return AggregateGroupResultStringDurationDTO(
        key: mapValueOfType<String>(json, r'key')!,
        value: mapDuration(json, r'value')!,
      );
    }
    return null;
  }

  static List<AggregateGroupResultStringDurationDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AggregateGroupResultStringDurationDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroupResultStringDurationDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateGroupResultStringDurationDTO> mapFromJson(dynamic json) {
    final map = <String, AggregateGroupResultStringDurationDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateGroupResultStringDurationDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateGroupResultStringDurationDTO-objects as value to a dart map
  static Map<String, List<AggregateGroupResultStringDurationDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AggregateGroupResultStringDurationDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateGroupResultStringDurationDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'value',
  };
}

class AggregateGroupResultIntIntDTO extends AggregateGroupResultDTO<int, int> {
  /// Returns a new [AggregateGroupResultIntIntDTO] instance.
  AggregateGroupResultIntIntDTO({
    required super.key,
    required super.value,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AggregateGroupResultIntIntDTO &&
          other.key == key &&
          other.value == value;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (key.hashCode) + (value.hashCode);

  @override
  String toString() => 'AggregateGroupResultIntIntDTO[key=$key, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'key'] = this.key;
    json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [AggregateGroupResultIntIntDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AggregateGroupResultIntIntDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'key'),
            'Required key "AggregateGroupResultIntIntDTO[key]" is missing from JSON.');
        assert(json[r'key'] != null,
            'Required key "AggregateGroupResultIntIntDTO[key]" has a null value in JSON.');
        assert(json.containsKey(r'value'),
            'Required key "AggregateGroupResultIntIntDTO[value]" is missing from JSON.');
        assert(json[r'value'] != null,
            'Required key "AggregateGroupResultIntIntDTO[value]" has a null value in JSON.');
        return true;
      }());

      return AggregateGroupResultIntIntDTO(
        key: mapValueOfType<int>(json, r'key')!,
        value: mapValueOfType<int>(json, r'value')!,
      );
    }
    return null;
  }

  static List<AggregateGroupResultIntIntDTO> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AggregateGroupResultIntIntDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregateGroupResultIntIntDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AggregateGroupResultIntIntDTO> mapFromJson(dynamic json) {
    final map = <String, AggregateGroupResultIntIntDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AggregateGroupResultIntIntDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AggregateGroupResultIntIntDTO-objects as value to a dart map
  static Map<String, List<AggregateGroupResultIntIntDTO>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AggregateGroupResultIntIntDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AggregateGroupResultIntIntDTO.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'value',
  };
}
