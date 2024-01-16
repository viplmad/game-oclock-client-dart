part of n2t.game_oclock.client;

class GameWithFinishPageResult extends PageResultDTO<GameWithFinishDTO> {
  /// Returns a new [GameWithFinishPageResult] instance.
  GameWithFinishPageResult({
    super.data = const [],
    required super.page,
    required super.size,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameWithFinishPageResult &&
          _deepEquality.equals(other.data, data) &&
          other.page == page &&
          other.size == size;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (data.hashCode) + (page.hashCode) + (size.hashCode);

  @override
  String toString() =>
      'GameWithFinishPageResult[data=$data, page=$page, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'data'] = this.data;
    json[r'page'] = this.page;
    json[r'size'] = this.size;
    return json;
  }

  /// Returns a new [GameWithFinishPageResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameWithFinishPageResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GameWithFinishPageResult[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GameWithFinishPageResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameWithFinishPageResult(
        data: GameWithFinishDTO.listFromJson(json[r'data']),
        page: mapValueOfType<int>(json, r'page')!,
        size: mapValueOfType<int>(json, r'size')!,
      );
    }
    return null;
  }

  static List<GameWithFinishPageResult> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GameWithFinishPageResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameWithFinishPageResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameWithFinishPageResult> mapFromJson(dynamic json) {
    final map = <String, GameWithFinishPageResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameWithFinishPageResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameWithFinishPageResult-objects as value to a dart map
  static Map<String, List<GameWithFinishPageResult>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GameWithFinishPageResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameWithFinishPageResult.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'page',
    'size',
  };
}
