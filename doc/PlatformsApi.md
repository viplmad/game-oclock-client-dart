# game_oclock_client.api.PlatformsApi

## Load the API package
```dart
import 'package:game_oclock_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePlatform**](PlatformsApi.md#deleteplatform) | **DELETE** /api/v1/platforms/{id} | 
[**deletePlatformIcon**](PlatformsApi.md#deleteplatformicon) | **DELETE** /api/v1/platforms/{id}/icon | 
[**getDlcPlatforms**](PlatformsApi.md#getdlcplatforms) | **GET** /api/v1/dlcs/{id}/platforms | 
[**getGamePlatforms**](PlatformsApi.md#getgameplatforms) | **GET** /api/v1/games/{id}/platforms | 
[**getPlatform**](PlatformsApi.md#getplatform) | **GET** /api/v1/platforms/{id} | 
[**getPlatforms**](PlatformsApi.md#getplatforms) | **POST** /api/v1/platforms/list | 
[**postPlatform**](PlatformsApi.md#postplatform) | **POST** /api/v1/platforms | 
[**postPlatformIcon**](PlatformsApi.md#postplatformicon) | **POST** /api/v1/platforms/{id}/icon | 
[**putPlatform**](PlatformsApi.md#putplatform) | **PUT** /api/v1/platforms/{id} | 
[**putPlatformIcon**](PlatformsApi.md#putplatformicon) | **PUT** /api/v1/platforms/{id}/icon | 


# **deletePlatform**
> deletePlatform(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PlatformsApi();
final id = id_example; // String | Platform id

try {
    api_instance.deletePlatform(id);
} catch (e) {
    print('Exception when calling PlatformsApi->deletePlatform: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Platform id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePlatformIcon**
> deletePlatformIcon(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PlatformsApi();
final id = id_example; // String | Platform id

try {
    api_instance.deletePlatformIcon(id);
} catch (e) {
    print('Exception when calling PlatformsApi->deletePlatformIcon: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Platform id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDlcPlatforms**
> List<PlatformAvailableDTO> getDlcPlatforms(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PlatformsApi();
final id = id_example; // String | DLC id

try {
    final result = api_instance.getDlcPlatforms(id);
    print(result);
} catch (e) {
    print('Exception when calling PlatformsApi->getDlcPlatforms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| DLC id | 

### Return type

[**List<PlatformAvailableDTO>**](PlatformAvailableDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGamePlatforms**
> List<PlatformAvailableDTO> getGamePlatforms(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PlatformsApi();
final id = id_example; // String | Game id

try {
    final result = api_instance.getGamePlatforms(id);
    print(result);
} catch (e) {
    print('Exception when calling PlatformsApi->getGamePlatforms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Game id | 

### Return type

[**List<PlatformAvailableDTO>**](PlatformAvailableDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlatform**
> PlatformDTO getPlatform(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PlatformsApi();
final id = id_example; // String | Platform id

try {
    final result = api_instance.getPlatform(id);
    print(result);
} catch (e) {
    print('Exception when calling PlatformsApi->getPlatform: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Platform id | 

### Return type

[**PlatformDTO**](PlatformDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlatforms**
> PlatformPageResult getPlatforms(searchDTO, q)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PlatformsApi();
final searchDTO = SearchDTO(); // SearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getPlatforms(searchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling PlatformsApi->getPlatforms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchDTO** | [**SearchDTO**](SearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**PlatformPageResult**](PlatformPageResult.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPlatform**
> PlatformDTO postPlatform(newPlatformDTO)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PlatformsApi();
final newPlatformDTO = NewPlatformDTO(); // NewPlatformDTO | Platform to be createad

try {
    final result = api_instance.postPlatform(newPlatformDTO);
    print(result);
} catch (e) {
    print('Exception when calling PlatformsApi->postPlatform: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newPlatformDTO** | [**NewPlatformDTO**](NewPlatformDTO.md)| Platform to be createad | 

### Return type

[**PlatformDTO**](PlatformDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPlatformIcon**
> postPlatformIcon(id, file)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PlatformsApi();
final id = id_example; // String | Platform id
final file = BINARY_DATA_HERE; // MultipartFile | 

try {
    api_instance.postPlatformIcon(id, file);
} catch (e) {
    print('Exception when calling PlatformsApi->postPlatformIcon: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Platform id | 
 **file** | **MultipartFile**|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPlatform**
> putPlatform(id, newPlatformDTO)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PlatformsApi();
final id = id_example; // String | Platform id
final newPlatformDTO = NewPlatformDTO(); // NewPlatformDTO | Platform to be updated

try {
    api_instance.putPlatform(id, newPlatformDTO);
} catch (e) {
    print('Exception when calling PlatformsApi->putPlatform: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Platform id | 
 **newPlatformDTO** | [**NewPlatformDTO**](NewPlatformDTO.md)| Platform to be updated | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPlatformIcon**
> putPlatformIcon(id, body)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PlatformsApi();
final id = id_example; // String | Platform id
final body = String(); // String | New platform icon name

try {
    api_instance.putPlatformIcon(id, body);
} catch (e) {
    print('Exception when calling PlatformsApi->putPlatformIcon: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Platform id | 
 **body** | **String**| New platform icon name | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

