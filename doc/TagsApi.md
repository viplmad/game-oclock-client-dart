# game_oclock_client.api.TagsApi

## Load the API package
```dart
import 'package:game_oclock_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteTag**](TagsApi.md#deletetag) | **DELETE** /api/v1/tags/{id} | 
[**getGameTags**](TagsApi.md#getgametags) | **GET** /api/v1/games/{id}/tags | 
[**getTag**](TagsApi.md#gettag) | **GET** /api/v1/tags/{id} | 
[**getTags**](TagsApi.md#gettags) | **POST** /api/v1/tags/list | 
[**postTag**](TagsApi.md#posttag) | **POST** /api/v1/tags | 
[**putTag**](TagsApi.md#puttag) | **PUT** /api/v1/tags/{id} | 


# **deleteTag**
> deleteTag(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TagsApi();
final id = id_example; // String | Tag id

try {
    api_instance.deleteTag(id);
} catch (e) {
    print('Exception when calling TagsApi->deleteTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Tag id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGameTags**
> List<TagDTO> getGameTags(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TagsApi();
final id = id_example; // String | Game id

try {
    final result = api_instance.getGameTags(id);
    print(result);
} catch (e) {
    print('Exception when calling TagsApi->getGameTags: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Game id | 

### Return type

[**List<TagDTO>**](TagDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTag**
> TagDTO getTag(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TagsApi();
final id = id_example; // String | Tag id

try {
    final result = api_instance.getTag(id);
    print(result);
} catch (e) {
    print('Exception when calling TagsApi->getTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Tag id | 

### Return type

[**TagDTO**](TagDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTags**
> TagPageResult getTags(searchDTO, q)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TagsApi();
final searchDTO = SearchDTO(); // SearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getTags(searchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling TagsApi->getTags: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchDTO** | [**SearchDTO**](SearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**TagPageResult**](TagPageResult.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTag**
> TagDTO postTag(newTagDTO)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TagsApi();
final newTagDTO = NewTagDTO(); // NewTagDTO | Tag to be createad

try {
    final result = api_instance.postTag(newTagDTO);
    print(result);
} catch (e) {
    print('Exception when calling TagsApi->postTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newTagDTO** | [**NewTagDTO**](NewTagDTO.md)| Tag to be createad | 

### Return type

[**TagDTO**](TagDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putTag**
> putTag(id, newTagDTO)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TagsApi();
final id = id_example; // String | Tag id
final newTagDTO = NewTagDTO(); // NewTagDTO | Tag to be updated

try {
    api_instance.putTag(id, newTagDTO);
} catch (e) {
    print('Exception when calling TagsApi->putTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Tag id | 
 **newTagDTO** | [**NewTagDTO**](NewTagDTO.md)| Tag to be updated | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

