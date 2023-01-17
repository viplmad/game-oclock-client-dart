//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;

class PasswordChangeDTO {
  /// Returns a new [PasswordChangeDTO] instance.
  PasswordChangeDTO({
    required this.currentPassword,
    required this.newPassword,
  });

  String currentPassword;

  String newPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasswordChangeDTO &&
     other.currentPassword == currentPassword &&
     other.newPassword == newPassword;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currentPassword.hashCode) +
    (newPassword.hashCode);

  @override
  String toString() => 'PasswordChangeDTO[currentPassword=$currentPassword, newPassword=$newPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'current_password'] = this.currentPassword;
      json[r'new_password'] = this.newPassword;
    return json;
  }

  /// Returns a new [PasswordChangeDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasswordChangeDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PasswordChangeDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PasswordChangeDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PasswordChangeDTO(
        currentPassword: mapValueOfType<String>(json, r'current_password')!,
        newPassword: mapValueOfType<String>(json, r'new_password')!,
      );
    }
    return null;
  }

  static List<PasswordChangeDTO>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PasswordChangeDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PasswordChangeDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PasswordChangeDTO> mapFromJson(dynamic json) {
    final map = <String, PasswordChangeDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PasswordChangeDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PasswordChangeDTO-objects as value to a dart map
  static Map<String, List<PasswordChangeDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PasswordChangeDTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PasswordChangeDTO.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'current_password',
    'new_password',
  };
}

