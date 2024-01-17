part of n2t.game_oclock.client;

class GameLogsApi extends BaseApi {
  GameLogsApi([ApiClient? apiClient]) : super(apiClient);

  /// Performs an HTTP 'DELETE /api/v1/games/{id}/logs' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [DateTimeDTO] dateTimeDTO (required):
  ///   Game log datetime to be deleted
  Future<Response> deleteGameLogWithHttpInfo(
    String id,
    DateTimeDTO dateTimeDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/logs'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = dateTimeDTO;

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
  /// * [DateTimeDTO] dateTimeDTO (required):
  ///   Game log datetime to be deleted
  Future<void> deleteGameLog(
    String id,
    DateTimeDTO dateTimeDTO,
  ) async {
    final response = await deleteGameLogWithHttpInfo(
      id,
      dateTimeDTO,
    );
    await checkEmptyResponse(response);
  }

  /// Performs an HTTP 'POST /api/v1/games/played/first' operation and returns the [Response].
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
  Future<Response> getFirstPlayedGamesWithHttpInfo(
    SearchDTO searchDTO, {
    DateTime? startDate,
    DateTime? endDate,
    String? q,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/played/first';

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
  Future<GameWithLogPageResult> getFirstPlayedGames(
    SearchDTO searchDTO, {
    DateTime? startDate,
    DateTime? endDate,
    String? q,
  }) async {
    final response = await getFirstPlayedGamesWithHttpInfo(
      searchDTO,
      startDate: startDate,
      endDate: endDate,
      q: q,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'GameWithLogPageResult',
    ) as GameWithLogPageResult;
  }

  /// Performs an HTTP 'GET /api/v1/games/{id}/logs' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<Response> getGameLogsWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/logs'.replaceAll('{id}', id);

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
  Future<List<GameLogDTO>> getGameLogs(
    String id,
  ) async {
    final response = await getGameLogsWithHttpInfo(
      id,
    );
    await checkResponse(response);
    final responseBody = await _decodeBodyBytes(response);
    return (await apiClient.deserializeAsync(responseBody, 'List<GameLogDTO>')
            as List)
        .cast<GameLogDTO>()
        .toList(growable: false);
  }

  /// Performs an HTTP 'POST /api/v1/games/played/last' operation and returns the [Response].
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
  Future<Response> getLastPlayedGamesWithHttpInfo(
    SearchDTO searchDTO, {
    DateTime? startDate,
    DateTime? endDate,
    String? q,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/played/last';

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
  Future<GameWithLogPageResult> getLastPlayedGames(
    SearchDTO searchDTO, {
    DateTime? startDate,
    DateTime? endDate,
    String? q,
  }) async {
    final response = await getLastPlayedGamesWithHttpInfo(
      searchDTO,
      startDate: startDate,
      endDate: endDate,
      q: q,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'GameWithLogPageResult',
    ) as GameWithLogPageResult;
  }

  /// Performs an HTTP 'POST /api/v1/games/played' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [DateTime] startDate (required):
  ///
  /// * [DateTime] endDate (required):
  Future<Response> getPlayedGamesWithHttpInfo(
    DateTime startDate,
    DateTime endDate,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/played';

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
  Future<List<GameWithLogsDTO>> getPlayedGames(
    DateTime startDate,
    DateTime endDate,
  ) async {
    final response = await getPlayedGamesWithHttpInfo(
      startDate,
      endDate,
    );
    await checkResponse(response);
    final responseBody = await _decodeBodyBytes(response);
    return (await apiClient.deserializeAsync(
            responseBody, 'List<GameWithLogsDTO>') as List)
        .cast<GameWithLogsDTO>()
        .toList(growable: false);
  }

  /// Performs an HTTP 'POST /api/v1/games/played/review' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [DateTime] startDate (required):
  ///
  /// * [DateTime] endDate (required):
  Future<Response> getPlayedGamesReviewWithHttpInfo(
    DateTime startDate,
    DateTime endDate,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/played/review';

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
  Future<GamesPlayedReviewDTO> getPlayedGamesReview(
    DateTime startDate,
    DateTime endDate,
  ) async {
    final response = await getPlayedGamesReviewWithHttpInfo(
      startDate,
      endDate,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'GamesPlayedReviewDTO',
    ) as GamesPlayedReviewDTO;
  }

  /// Performs an HTTP 'GET /api/v1/games/{id}/logs/total' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<Response> getTotalGameLogsWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/logs/total'.replaceAll('{id}', id);

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
  Future<Duration> getTotalGameLogs(
    String id,
  ) async {
    final response = await getTotalGameLogsWithHttpInfo(
      id,
    );
    await checkResponse(response);
    return await apiClient.deserializeAsync(
      await _decodeBodyBytes(response),
      'Duration',
    ) as Duration;
  }

  /// Performs an HTTP 'POST /api/v1/games/{id}/logs' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  ///
  /// * [NewGameLogDTO] newGameLogDTO (required):
  ///   Game log to be added
  Future<Response> postGameLogWithHttpInfo(
    String id,
    NewGameLogDTO newGameLogDTO,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/logs'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = newGameLogDTO;

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
  /// * [NewGameLogDTO] newGameLogDTO (required):
  ///   Game log to be added
  Future<void> postGameLog(
    String id,
    NewGameLogDTO newGameLogDTO,
  ) async {
    final response = await postGameLogWithHttpInfo(
      id,
      newGameLogDTO,
    );
    await checkEmptyResponse(response);
  }
}
