# game_collection_client.api.GamesApi

## Load the API package
```dart
import 'package:game_collection_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteGame**](GamesApi.md#deletegame) | **DELETE** /api/v1/games/{id} | 
[**deleteGameCover**](GamesApi.md#deletegamecover) | **DELETE** /api/v1/games/{id}/cover | 
[**getGame**](GamesApi.md#getgame) | **GET** /api/v1/games/{id} | 
[**getGames**](GamesApi.md#getgames) | **POST** /api/v1/games/list | 
[**getPlatformGames**](GamesApi.md#getplatformgames) | **GET** /api/v1/platforms/{id}/games | 
[**getTagGames**](GamesApi.md#gettaggames) | **GET** /api/v1/tags/{id}/games | 
[**linkGamePlatform**](GamesApi.md#linkgameplatform) | **PUT** /api/v1/games/{id}/platforms/{other_id} | 
[**linkGameTag**](GamesApi.md#linkgametag) | **PUT** /api/v1/games/{id}/tags/{other_id} | 
[**postGame**](GamesApi.md#postgame) | **POST** /api/v1/games | 
[**postGameCover**](GamesApi.md#postgamecover) | **POST** /api/v1/games/{id}/cover | 
[**putGame**](GamesApi.md#putgame) | **PUT** /api/v1/games/{id} | 
[**putGameCover**](GamesApi.md#putgamecover) | **PUT** /api/v1/games/{id}/cover | 
[**unlinkGamePlatform**](GamesApi.md#unlinkgameplatform) | **DELETE** /api/v1/games/{id}/platforms/{other_id} | 
[**unlinkGameTag**](GamesApi.md#unlinkgametag) | **DELETE** /api/v1/games/{id}/tags/{other_id} | 


# **deleteGame**
> deleteGame(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final id = 56; // int | Game id

try {
    api_instance.deleteGame(id);
} catch (e) {
    print('Exception when calling GamesApi->deleteGame: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGameCover**
> deleteGameCover(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final id = 56; // int | Game id

try {
    api_instance.deleteGameCover(id);
} catch (e) {
    print('Exception when calling GamesApi->deleteGameCover: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGame**
> GameDTO getGame(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final id = 56; // int | Game id

try {
    final result = api_instance.getGame(id);
    print(result);
} catch (e) {
    print('Exception when calling GamesApi->getGame: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 

### Return type

[**GameDTO**](GameDTO.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGames**
> GamePageResult getGames(searchDTO, q)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final searchDTO = SearchDTO(); // SearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getGames(searchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling GamesApi->getGames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchDTO** | [**SearchDTO**](SearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**GamePageResult**](GamePageResult.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlatformGames**
> List<GameAvailableDTO> getPlatformGames(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final id = 56; // int | Platform id

try {
    final result = api_instance.getPlatformGames(id);
    print(result);
} catch (e) {
    print('Exception when calling GamesApi->getPlatformGames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Platform id | 

### Return type

[**List<GameAvailableDTO>**](GameAvailableDTO.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTagGames**
> List<GameDTO> getTagGames(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final id = 56; // int | Tag id

try {
    final result = api_instance.getTagGames(id);
    print(result);
} catch (e) {
    print('Exception when calling GamesApi->getTagGames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Tag id | 

### Return type

[**List<GameDTO>**](GameDTO.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkGamePlatform**
> linkGamePlatform(id, otherId, dateDTO)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final id = 56; // int | Game id
final otherId = 56; // int | Platform id
final dateDTO = DateDTO(); // DateDTO | Available date

try {
    api_instance.linkGamePlatform(id, otherId, dateDTO);
} catch (e) {
    print('Exception when calling GamesApi->linkGamePlatform: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 
 **otherId** | **int**| Platform id | 
 **dateDTO** | [**DateDTO**](DateDTO.md)| Available date | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkGameTag**
> linkGameTag(id, otherId)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final id = 56; // int | Game id
final otherId = 56; // int | Tag id

try {
    api_instance.linkGameTag(id, otherId);
} catch (e) {
    print('Exception when calling GamesApi->linkGameTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 
 **otherId** | **int**| Tag id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postGame**
> GameDTO postGame(newGameDTO)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final newGameDTO = NewGameDTO(); // NewGameDTO | Game to be created

try {
    final result = api_instance.postGame(newGameDTO);
    print(result);
} catch (e) {
    print('Exception when calling GamesApi->postGame: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newGameDTO** | [**NewGameDTO**](NewGameDTO.md)| Game to be created | 

### Return type

[**GameDTO**](GameDTO.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postGameCover**
> postGameCover(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final id = 56; // int | Game id

try {
    api_instance.postGameCover(id);
} catch (e) {
    print('Exception when calling GamesApi->postGameCover: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putGame**
> GameDTO putGame(id, newGameDTO)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final id = 56; // int | Game id
final newGameDTO = NewGameDTO(); // NewGameDTO | Game to be updated

try {
    final result = api_instance.putGame(id, newGameDTO);
    print(result);
} catch (e) {
    print('Exception when calling GamesApi->putGame: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 
 **newGameDTO** | [**NewGameDTO**](NewGameDTO.md)| Game to be updated | 

### Return type

[**GameDTO**](GameDTO.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putGameCover**
> putGameCover(id, body)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final id = 56; // int | Game id
final body = String(); // String | New game cover name

try {
    api_instance.putGameCover(id, body);
} catch (e) {
    print('Exception when calling GamesApi->putGameCover: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 
 **body** | **String**| New game cover name | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkGamePlatform**
> unlinkGamePlatform(id, otherId)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final id = 56; // int | Game id
final otherId = 56; // int | Platform id

try {
    api_instance.unlinkGamePlatform(id, otherId);
} catch (e) {
    print('Exception when calling GamesApi->unlinkGamePlatform: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 
 **otherId** | **int**| Platform id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkGameTag**
> unlinkGameTag(id, otherId)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GamesApi();
final id = 56; // int | Game id
final otherId = 56; // int | Tag id

try {
    api_instance.unlinkGameTag(id, otherId);
} catch (e) {
    print('Exception when calling GamesApi->unlinkGameTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 
 **otherId** | **int**| Tag id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

