# game_collection_client.api.GameFinishApi

## Load the API package
```dart
import 'package:game_collection_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteGameFinish**](GameFinishApi.md#deletegamefinish) | **DELETE** /api/v1/games/{id}/finishes | 
[**getFirstFinishedGames**](GameFinishApi.md#getfirstfinishedgames) | **POST** /api/v1/games/finished/first | 
[**getFirstGameFinish**](GameFinishApi.md#getfirstgamefinish) | **GET** /api/v1/games/{id}/finishes/first | 
[**getGameFinishes**](GameFinishApi.md#getgamefinishes) | **GET** /api/v1/games/{id}/finishes | 
[**getLastFinishedGames**](GameFinishApi.md#getlastfinishedgames) | **POST** /api/v1/games/finished/last | 
[**postGameFinish**](GameFinishApi.md#postgamefinish) | **POST** /api/v1/games/{id}/finishes | 


# **deleteGameFinish**
> deleteGameFinish(id, body)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GameFinishApi();
final id = 56; // int | Game id
final body = String(); // String | Game finish date to be deleted

try {
    api_instance.deleteGameFinish(id, body);
} catch (e) {
    print('Exception when calling GameFinishApi->deleteGameFinish: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 
 **body** | **String**| Game finish date to be deleted | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFirstFinishedGames**
> GameWithFinishPageResult getFirstFinishedGames(searchDTO, startDate, endDate, q)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GameFinishApi();
final searchDTO = SearchDTO(); // SearchDTO | Query
final startDate = startDate_example; // String | 
final endDate = endDate_example; // String | 
final q = q_example; // String | 

try {
    final result = api_instance.getFirstFinishedGames(searchDTO, startDate, endDate, q);
    print(result);
} catch (e) {
    print('Exception when calling GameFinishApi->getFirstFinishedGames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchDTO** | [**SearchDTO**](SearchDTO.md)| Query | 
 **startDate** | **String**|  | [optional] 
 **endDate** | **String**|  | [optional] 
 **q** | **String**|  | [optional] 

### Return type

[**GameWithFinishPageResult**](GameWithFinishPageResult.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFirstGameFinish**
> String getFirstGameFinish(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GameFinishApi();
final id = 56; // int | Game id

try {
    final result = api_instance.getFirstGameFinish(id);
    print(result);
} catch (e) {
    print('Exception when calling GameFinishApi->getFirstGameFinish: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 

### Return type

**String**

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGameFinishes**
> List<String> getGameFinishes(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GameFinishApi();
final id = 56; // int | Game id

try {
    final result = api_instance.getGameFinishes(id);
    print(result);
} catch (e) {
    print('Exception when calling GameFinishApi->getGameFinishes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 

### Return type

**List<String>**

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLastFinishedGames**
> GameWithFinishPageResult getLastFinishedGames(searchDTO, startDate, endDate, q)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GameFinishApi();
final searchDTO = SearchDTO(); // SearchDTO | Query
final startDate = startDate_example; // String | 
final endDate = endDate_example; // String | 
final q = q_example; // String | 

try {
    final result = api_instance.getLastFinishedGames(searchDTO, startDate, endDate, q);
    print(result);
} catch (e) {
    print('Exception when calling GameFinishApi->getLastFinishedGames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchDTO** | [**SearchDTO**](SearchDTO.md)| Query | 
 **startDate** | **String**|  | [optional] 
 **endDate** | **String**|  | [optional] 
 **q** | **String**|  | [optional] 

### Return type

[**GameWithFinishPageResult**](GameWithFinishPageResult.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postGameFinish**
> postGameFinish(id, body)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GameFinishApi();
final id = 56; // int | Game id
final body = String(); // String | Game finish date to be added

try {
    api_instance.postGameFinish(id, body);
} catch (e) {
    print('Exception when calling GameFinishApi->postGameFinish: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 
 **body** | **String**| Game finish date to be added | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

