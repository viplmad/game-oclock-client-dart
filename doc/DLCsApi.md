# game_collection_client.api.DLCsApi

## Load the API package
```dart
import 'package:game_collection_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDlc**](DLCsApi.md#deletedlc) | **DELETE** /api/v1/dlcs/{id} | 
[**deleteDlcCover**](DLCsApi.md#deletedlccover) | **DELETE** /api/v1/dlcs/{id}/cover | 
[**getDlc**](DLCsApi.md#getdlc) | **GET** /api/v1/dlcs/{id} | 
[**getDlcBaseGame**](DLCsApi.md#getdlcbasegame) | **GET** /api/v1/dlcs/{id}/base-game | 
[**getDlcs**](DLCsApi.md#getdlcs) | **POST** /api/v1/dlcs/list | 
[**getGameDlcs**](DLCsApi.md#getgamedlcs) | **GET** /api/v1/games/{id}/dlcs | 
[**getPlatformDlcs**](DLCsApi.md#getplatformdlcs) | **GET** /api/v1/platforms/{id}/dlcs | 
[**linkDlcGame**](DLCsApi.md#linkdlcgame) | **PUT** /api/v1/dlcs/{id}/base-game/{other_id} | 
[**linkDlcPlatform**](DLCsApi.md#linkdlcplatform) | **PUT** /api/v1/dlcs/{id}/platforms/{other_id} | 
[**postDlc**](DLCsApi.md#postdlc) | **POST** /api/v1/dlcs | 
[**postDlcCover**](DLCsApi.md#postdlccover) | **POST** /api/v1/dlcs/{id}/cover | 
[**putDlc**](DLCsApi.md#putdlc) | **PUT** /api/v1/dlcs/{id} | 
[**putDlcCover**](DLCsApi.md#putdlccover) | **PUT** /api/v1/dlcs/{id}/cover | 
[**unlinkDlcGame**](DLCsApi.md#unlinkdlcgame) | **DELETE** /api/v1/dlcs/{id}/base-game | 
[**unlinkDlcPlatform**](DLCsApi.md#unlinkdlcplatform) | **DELETE** /api/v1/dlcs/{id}/platforms/{other_id} | 


# **deleteDlc**
> deleteDlc(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final id = 56; // int | DLC id

try {
    api_instance.deleteDlc(id);
} catch (e) {
    print('Exception when calling DLCsApi->deleteDlc: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDlcCover**
> deleteDlcCover(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final id = 56; // int | DLC id

try {
    api_instance.deleteDlcCover(id);
} catch (e) {
    print('Exception when calling DLCsApi->deleteDlcCover: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDlc**
> DLCDTO getDlc(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final id = 56; // int | DLC id

try {
    final result = api_instance.getDlc(id);
    print(result);
} catch (e) {
    print('Exception when calling DLCsApi->getDlc: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 

### Return type

[**DLCDTO**](DLCDTO.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDlcBaseGame**
> GameDTO getDlcBaseGame(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final id = 56; // int | DLC id

try {
    final result = api_instance.getDlcBaseGame(id);
    print(result);
} catch (e) {
    print('Exception when calling DLCsApi->getDlcBaseGame: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 

### Return type

[**GameDTO**](GameDTO.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDlcs**
> DLCPageResult getDlcs(searchDTO, q)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final searchDTO = SearchDTO(); // SearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getDlcs(searchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling DLCsApi->getDlcs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchDTO** | [**SearchDTO**](SearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**DLCPageResult**](DLCPageResult.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGameDlcs**
> List<DLCDTO> getGameDlcs(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final id = 56; // int | Game id

try {
    final result = api_instance.getGameDlcs(id);
    print(result);
} catch (e) {
    print('Exception when calling DLCsApi->getGameDlcs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Game id | 

### Return type

[**List<DLCDTO>**](DLCDTO.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlatformDlcs**
> List<DLCAvailableDTO> getPlatformDlcs(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final id = 56; // int | Platform id

try {
    final result = api_instance.getPlatformDlcs(id);
    print(result);
} catch (e) {
    print('Exception when calling DLCsApi->getPlatformDlcs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Platform id | 

### Return type

[**List<DLCAvailableDTO>**](DLCAvailableDTO.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkDlcGame**
> linkDlcGame(id, otherId)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final id = 56; // int | DLC id
final otherId = 56; // int | Game id

try {
    api_instance.linkDlcGame(id, otherId);
} catch (e) {
    print('Exception when calling DLCsApi->linkDlcGame: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 
 **otherId** | **int**| Game id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkDlcPlatform**
> linkDlcPlatform(id, otherId, dateDTO)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final id = 56; // int | DLC id
final otherId = 56; // int | Platform id
final dateDTO = DateDTO(); // DateDTO | Available date

try {
    api_instance.linkDlcPlatform(id, otherId, dateDTO);
} catch (e) {
    print('Exception when calling DLCsApi->linkDlcPlatform: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 
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

# **postDlc**
> DLCDTO postDlc(newDLCDTO)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final newDLCDTO = NewDLCDTO(); // NewDLCDTO | DLC to be createad

try {
    final result = api_instance.postDlc(newDLCDTO);
    print(result);
} catch (e) {
    print('Exception when calling DLCsApi->postDlc: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newDLCDTO** | [**NewDLCDTO**](NewDLCDTO.md)| DLC to be createad | 

### Return type

[**DLCDTO**](DLCDTO.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postDlcCover**
> postDlcCover(id, file)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final id = 56; // int | DLC id
final file = BINARY_DATA_HERE; // MultipartFile | 

try {
    api_instance.postDlcCover(id, file);
} catch (e) {
    print('Exception when calling DLCsApi->postDlcCover: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 
 **file** | **MultipartFile**|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putDlc**
> putDlc(id, newDLCDTO)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final id = 56; // int | DLC id
final newDLCDTO = NewDLCDTO(); // NewDLCDTO | DLC to be updated

try {
    api_instance.putDlc(id, newDLCDTO);
} catch (e) {
    print('Exception when calling DLCsApi->putDlc: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 
 **newDLCDTO** | [**NewDLCDTO**](NewDLCDTO.md)| DLC to be updated | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putDlcCover**
> putDlcCover(id, body)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final id = 56; // int | DLC id
final body = String(); // String | New dlc cover name

try {
    api_instance.putDlcCover(id, body);
} catch (e) {
    print('Exception when calling DLCsApi->putDlcCover: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 
 **body** | **String**| New dlc cover name | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkDlcGame**
> unlinkDlcGame(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final id = 56; // int | DLC id

try {
    api_instance.unlinkDlcGame(id);
} catch (e) {
    print('Exception when calling DLCsApi->unlinkDlcGame: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkDlcPlatform**
> unlinkDlcPlatform(id, otherId)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCsApi();
final id = 56; // int | DLC id
final otherId = 56; // int | Platform id

try {
    api_instance.unlinkDlcPlatform(id, otherId);
} catch (e) {
    print('Exception when calling DLCsApi->unlinkDlcPlatform: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 
 **otherId** | **int**| Platform id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

