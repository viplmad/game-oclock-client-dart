part of n2t.game_oclock.client;

class GameFinishApi extends BaseApi {
  GameFinishApi([ApiClient? apiClient]) : super(apiClient);

  /// Performs an HTTP 'DELETE /api/v1/games/{id}/finishes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   Game finish date to be deleted
  Future<Response> deleteGameFinishWithHttpInfo(
    String id,
    DateDTO dateDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/finishes'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = dateDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   Game finish date to be deleted
  Future<void> deleteGameFinish(
    String id,
    DateDTO dateDTO,
  ) async {
    await deleteGameFinishWithHttpInfo(
      id,
      dateDTO,
    );
  }

  /// Performs an HTTP 'POST /api/v1/games/finished/review' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [DateTime] startDate (required):
  ///
  /// * [DateTime] endDate (required):
  Future<Response> getFinishedGamesReviewWithHttpInfo(
    DateTime startDate,
    DateTime endDate,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/finished/review';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'start_date', startDate));
    queryParams.addAll(_queryParams('', 'end_date', endDate));

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [DateTime] startDate (required):
  ///
  /// * [DateTime] endDate (required):
  Future<GamesFinishedReviewDTO> getFinishedGamesReview(
    DateTime startDate,
    DateTime endDate,
  ) async {
    final response = await getFinishedGamesReviewWithHttpInfo(
      startDate,
      endDate,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'GamesFinishedReviewDTO',
    ) as GamesFinishedReviewDTO;
  }

  /// Performs an HTTP 'POST /api/v1/games/finished/first' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] q:
  Future<Response> getFirstFinishedGamesWithHttpInfo(
    SearchDTO searchDTO, {
    DateTime? startDate,
    DateTime? endDate,
    String? q,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/finished/first';

    // ignore: prefer_final_locals
    Object? postBody = searchDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'start_date', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'end_date', endDate));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] q:
  Future<GameWithFinishPageResult> getFirstFinishedGames(
    SearchDTO searchDTO, {
    DateTime? startDate,
    DateTime? endDate,
    String? q,
  }) async {
    final response = await getFirstFinishedGamesWithHttpInfo(
      searchDTO,
      startDate: startDate,
      endDate: endDate,
      q: q,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'GameWithFinishPageResult',
    ) as GameWithFinishPageResult;
  }

  /// Performs an HTTP 'GET /api/v1/games/{id}/finishes/first' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<Response> getFirstGameFinishWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/finishes/first'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<DateTime> getFirstGameFinish(
    String id,
  ) async {
    final response = await getFirstGameFinishWithHttpInfo(
      id,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'DateTime',
    ) as DateTime;
  }

  /// Performs an HTTP 'GET /api/v1/games/{id}/finishes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<Response> getGameFinishesWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/finishes'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<List<DateTime>> getGameFinishes(
    String id,
  ) async {
    final response = await getGameFinishesWithHttpInfo(
      id,
    );
    await checkResponse(response);
    final responseBody = await _decodeBodyBytes(response);
    return (await apiClient.deserializeAsync(responseBody, 'List<DateTime>')
            as List)
        .cast<DateTime>()
        .toList(growable: false);
  }

  /// Performs an HTTP 'POST /api/v1/games/finished/last' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] q:
  Future<Response> getLastFinishedGamesWithHttpInfo(
    SearchDTO searchDTO, {
    DateTime? startDate,
    DateTime? endDate,
    String? q,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/finished/last';

    // ignore: prefer_final_locals
    Object? postBody = searchDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'start_date', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'end_date', endDate));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] q:
  Future<GameWithFinishPageResult> getLastFinishedGames(
    SearchDTO searchDTO, {
    DateTime? startDate,
    DateTime? endDate,
    String? q,
  }) async {
    final response = await getLastFinishedGamesWithHttpInfo(
      searchDTO,
      startDate: startDate,
      endDate: endDate,
      q: q,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'GameWithFinishPageResult',
    ) as GameWithFinishPageResult;
  }

  /// Performs an HTTP 'POST /api/v1/games/{id}/finishes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   Game finish date to be added
  Future<Response> postGameFinishWithHttpInfo(
    String id,
    DateDTO dateDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/finishes'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = dateDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [DateDTO] dateDTO (required):
  ///   Game finish date to be added
  Future<void> postGameFinish(
    String id,
    DateDTO dateDTO,
  ) async {
    await postGameFinishWithHttpInfo(
      id,
      dateDTO,
    );
  }
}
