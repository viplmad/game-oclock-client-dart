# game_oclock_client.api.GamesApi

## Load the API package
```dart
import 'package:game_oclock_client/api.dart';
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
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GamesApi();
final id = id_example; // String | Game id

try {
    api_instance.deleteGame(id);
} catch (e) {
    print('Exception when calling GamesApi->deleteGame: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Game id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGameCover**
> deleteGameCover(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GamesApi();
final id = id_example; // String | Game id

try {
    api_instance.deleteGameCover(id);
} catch (e) {
    print('Exception when calling GamesApi->deleteGameCover: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Game id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGame**
> GameDTO getGame(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GamesApi();
final id = id_example; // String | Game id

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
 **id** | **String**| Game id | 

### Return type

[**GameDTO**](GameDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGames**
> GamePageResult getGames(searchDTO, q)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlatformGames**
> List<GameAvailableDTO> getPlatformGames(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GamesApi();
final id = id_example; // String | Platform id

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
 **id** | **String**| Platform id | 

### Return type

[**List<GameAvailableDTO>**](GameAvailableDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTagGames**
> List<GameDTO> getTagGames(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GamesApi();
final id = id_example; // String | Tag id

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
 **id** | **String**| Tag id | 

### Return type

[**List<GameDTO>**](GameDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkGamePlatform**
> linkGamePlatform(id, otherId, dateDTO)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GamesApi();
final id = id_example; // String | Game id
final otherId = otherId_example; // String | Platform id
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
 **id** | **String**| Game id | 
 **otherId** | **String**| Platform id | 
 **dateDTO** | [**DateDTO**](DateDTO.md)| Available date | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkGameTag**
> linkGameTag(id, otherId)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GamesApi();
final id = id_example; // String | Game id
final otherId = otherId_example; // String | Tag id

try {
    api_instance.linkGameTag(id, otherId);
} catch (e) {
    print('Exception when calling GamesApi->linkGameTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Game id | 
 **otherId** | **String**| Tag id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postGame**
> GameDTO postGame(newGameDTO)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postGameCover**
> postGameCover(id, file)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GamesApi();
final id = id_example; // String | Game id
final file = BINARY_DATA_HERE; // MultipartFile | 

try {
    api_instance.postGameCover(id, file);
} catch (e) {
    print('Exception when calling GamesApi->postGameCover: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Game id | 
 **file** | **MultipartFile**|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putGame**
> putGame(id, newGameDTO)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GamesApi();
final id = id_example; // String | Game id
final newGameDTO = NewGameDTO(); // NewGameDTO | Game to be updated

try {
    api_instance.putGame(id, newGameDTO);
} catch (e) {
    print('Exception when calling GamesApi->putGame: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Game id | 
 **newGameDTO** | [**NewGameDTO**](NewGameDTO.md)| Game to be updated | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putGameCover**
> putGameCover(id, body)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GamesApi();
final id = id_example; // String | Game id
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
 **id** | **String**| Game id | 
 **body** | **String**| New game cover name | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkGamePlatform**
> unlinkGamePlatform(id, otherId)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GamesApi();
final id = id_example; // String | Game id
final otherId = otherId_example; // String | Platform id

try {
    api_instance.unlinkGamePlatform(id, otherId);
} catch (e) {
    print('Exception when calling GamesApi->unlinkGamePlatform: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Game id | 
 **otherId** | **String**| Platform id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkGameTag**
> unlinkGameTag(id, otherId)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GamesApi();
final id = id_example; // String | Game id
final otherId = otherId_example; // String | Tag id

try {
    api_instance.unlinkGameTag(id, otherId);
} catch (e) {
    print('Exception when calling GamesApi->unlinkGameTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Game id | 
 **otherId** | **String**| Tag id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

