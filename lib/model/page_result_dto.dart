//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_oclock.client;

class PageResultDTO<T extends Object> {
  /// Returns a new [PageResultDTO] instance.
  PageResultDTO({
    this.data = const [],
    required this.page,
    required this.size,
  });

  /// List of elements in the current page
  List<T> data;

  /// Current page number (starting from 1)
  ///
  /// Minimum value: 0
  int page;

  /// Number of items per page
  ///
  /// Minimum value: 0
  int size;
}