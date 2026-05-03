# game_oclock_client.api.MediasApi

## Load the API package
```dart
import 'package:game_oclock_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aggregateDeviceMedias**](MediasApi.md#aggregatedevicemedias) | **POST** /api/v1/devices/{id}/medias/aggregate | Aggregate medias where a session has been on a specified device
[**aggregateLocationMedias**](MediasApi.md#aggregatelocationmedias) | **POST** /api/v1/locations/{id}/medias/aggregate | Aggregate all medias avaiable in a location
[**aggregateMedias**](MediasApi.md#aggregatemedias) | **POST** /api/v1/medias/aggregate | Aggregate medias
[**aggregateTagMedias**](MediasApi.md#aggregatetagmedias) | **POST** /api/v1/tags/{id}/medias/aggregate | Aggregate all medias with specified tag
[**createMedia**](MediasApi.md#createmedia) | **POST** /api/v1/medias | Create a media
[**deleteMedia**](MediasApi.md#deletemedia) | **DELETE** /api/v1/medias/{id} | Delete a media
[**getDeviceMedias**](MediasApi.md#getdevicemedias) | **POST** /api/v1/devices/{id}/medias/list | Get medias where a session has been on a specified device
[**getLocationMedias**](MediasApi.md#getlocationmedias) | **POST** /api/v1/locations/{id}/medias/list | Get all medias avaiable in a location
[**getMedia**](MediasApi.md#getmedia) | **GET** /api/v1/medias/{id} | Get a media
[**getMedias**](MediasApi.md#getmedias) | **POST** /api/v1/medias/list | Search medias
[**getTagMedias**](MediasApi.md#gettagmedias) | **POST** /api/v1/tags/{id}/medias/list | Get all medias with specified tag
[**linkMediaLocation**](MediasApi.md#linkmedialocation) | **PUT** /api/v1/medias/{id}/locations/{other_id} | Add a location as available to a media
[**linkMediaTag**](MediasApi.md#linkmediatag) | **PUT** /api/v1/medias/{id}/tags/{other_id} | Add a tag to a media
[**linkParentMedia**](MediasApi.md#linkparentmedia) | **PUT** /api/v1/medias/{id}/parent/{other_id} | Add a media as parent of another
[**searchExternalMedias**](MediasApi.md#searchexternalmedias) | **POST** /api/v1/medias/search | 
[**syncMedia**](MediasApi.md#syncmedia) | **PUT** /api/v1/medias/{id}/sync | Sync a media
[**unlinkMediaLocation**](MediasApi.md#unlinkmedialocation) | **DELETE** /api/v1/medias/{id}/locations/{other_id} | Remove a location as available from a media
[**unlinkMediaTag**](MediasApi.md#unlinkmediatag) | **DELETE** /api/v1/medias/{id}/tags/{other_id} | Remove tag from a media
[**unlinkParentMedia**](MediasApi.md#unlinkparentmedia) | **DELETE** /api/v1/medias/{id}/parent | Remove a media parent
[**updateMedia**](MediasApi.md#updatemedia) | **PUT** /api/v1/medias/{id} | Update a media


# **aggregateDeviceMedias**
> AggregateResultDTO aggregateDeviceMedias(id, aggregateSearchDTO, q)

Aggregate medias where a session has been on a specified device

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Device id
final aggregateSearchDTO = AggregateSearchDTO(); // AggregateSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.aggregateDeviceMedias(id, aggregateSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediasApi->aggregateDeviceMedias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Device id | 
 **aggregateSearchDTO** | [**AggregateSearchDTO**](AggregateSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**AggregateResultDTO**](AggregateResultDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aggregateLocationMedias**
> AggregateResultDTO aggregateLocationMedias(id, aggregateSearchDTO, q)

Aggregate all medias avaiable in a location

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Location id
final aggregateSearchDTO = AggregateSearchDTO(); // AggregateSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.aggregateLocationMedias(id, aggregateSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediasApi->aggregateLocationMedias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Location id | 
 **aggregateSearchDTO** | [**AggregateSearchDTO**](AggregateSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**AggregateResultDTO**](AggregateResultDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aggregateMedias**
> AggregateResultDTO aggregateMedias(aggregateSearchDTO, q)

Aggregate medias

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final aggregateSearchDTO = AggregateSearchDTO(); // AggregateSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.aggregateMedias(aggregateSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediasApi->aggregateMedias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aggregateSearchDTO** | [**AggregateSearchDTO**](AggregateSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**AggregateResultDTO**](AggregateResultDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aggregateTagMedias**
> AggregateResultDTO aggregateTagMedias(id, aggregateSearchDTO, q)

Aggregate all medias with specified tag

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Tag id
final aggregateSearchDTO = AggregateSearchDTO(); // AggregateSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.aggregateTagMedias(id, aggregateSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediasApi->aggregateTagMedias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Tag id | 
 **aggregateSearchDTO** | [**AggregateSearchDTO**](AggregateSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**AggregateResultDTO**](AggregateResultDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMedia**
> String createMedia(newMediaDTO)

Create a media

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final newMediaDTO = NewMediaDTO(); // NewMediaDTO | Media to be created

try {
    final result = api_instance.createMedia(newMediaDTO);
    print(result);
} catch (e) {
    print('Exception when calling MediasApi->createMedia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newMediaDTO** | [**NewMediaDTO**](NewMediaDTO.md)| Media to be created | 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMedia**
> deleteMedia(id)

Delete a media

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Media id

try {
    api_instance.deleteMedia(id);
} catch (e) {
    print('Exception when calling MediasApi->deleteMedia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceMedias**
> PageResultDTOMediaDTO getDeviceMedias(id, listSearchDTO, q)

Get medias where a session has been on a specified device

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Device id
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getDeviceMedias(id, listSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediasApi->getDeviceMedias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Device id | 
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTOMediaDTO**](PageResultDTOMediaDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocationMedias**
> PageResultDTOMediaAvailableDTO getLocationMedias(id, listSearchDTO, q)

Get all medias avaiable in a location

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Location id
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getLocationMedias(id, listSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediasApi->getLocationMedias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Location id | 
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTOMediaAvailableDTO**](PageResultDTOMediaAvailableDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMedia**
> MediaDTO getMedia(id)

Get a media

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Media id

try {
    final result = api_instance.getMedia(id);
    print(result);
} catch (e) {
    print('Exception when calling MediasApi->getMedia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 

### Return type

[**MediaDTO**](MediaDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMedias**
> PageResultDTOMediaDTO getMedias(listSearchDTO, q)

Search medias

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getMedias(listSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediasApi->getMedias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTOMediaDTO**](PageResultDTOMediaDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTagMedias**
> PageResultDTOMediaTagDTO getTagMedias(id, listSearchDTO, q)

Get all medias with specified tag

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Tag id
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getTagMedias(id, listSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediasApi->getTagMedias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Tag id | 
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTOMediaTagDTO**](PageResultDTOMediaTagDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkMediaLocation**
> linkMediaLocation(id, otherId, dateTimeDTO)

Add a location as available to a media

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Media id
final otherId = otherId_example; // String | Location id
final dateTimeDTO = DateTimeDTO(); // DateTimeDTO | Available date

try {
    api_instance.linkMediaLocation(id, otherId, dateTimeDTO);
} catch (e) {
    print('Exception when calling MediasApi->linkMediaLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 
 **otherId** | **String**| Location id | 
 **dateTimeDTO** | [**DateTimeDTO**](DateTimeDTO.md)| Available date | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkMediaTag**
> linkMediaTag(id, otherId, orderDTO)

Add a tag to a media

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Media id
final otherId = otherId_example; // String | Tag id
final orderDTO = OrderDTO(); // OrderDTO | Order

try {
    api_instance.linkMediaTag(id, otherId, orderDTO);
} catch (e) {
    print('Exception when calling MediasApi->linkMediaTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 
 **otherId** | **String**| Tag id | 
 **orderDTO** | [**OrderDTO**](OrderDTO.md)| Order | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkParentMedia**
> linkParentMedia(id, otherId)

Add a media as parent of another

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Media id
final otherId = otherId_example; // String | Parent Media id

try {
    api_instance.linkParentMedia(id, otherId);
} catch (e) {
    print('Exception when calling MediasApi->linkParentMedia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 
 **otherId** | **String**| Parent Media id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchExternalMedias**
> List<PotentialMediaDTO> searchExternalMedias(source_, q)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final source_ = source__example; // String | 
final q = q_example; // String | 

try {
    final result = api_instance.searchExternalMedias(source_, q);
    print(result);
} catch (e) {
    print('Exception when calling MediasApi->searchExternalMedias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_** | **String**|  | 
 **q** | **String**|  | 

### Return type

[**List<PotentialMediaDTO>**](PotentialMediaDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncMedia**
> syncMedia(id)

Sync a media

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Media id

try {
    api_instance.syncMedia(id);
} catch (e) {
    print('Exception when calling MediasApi->syncMedia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkMediaLocation**
> unlinkMediaLocation(id, otherId)

Remove a location as available from a media

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Media id
final otherId = otherId_example; // String | Location id

try {
    api_instance.unlinkMediaLocation(id, otherId);
} catch (e) {
    print('Exception when calling MediasApi->unlinkMediaLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 
 **otherId** | **String**| Location id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkMediaTag**
> unlinkMediaTag(id, otherId)

Remove tag from a media

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Media id
final otherId = otherId_example; // String | Tag id

try {
    api_instance.unlinkMediaTag(id, otherId);
} catch (e) {
    print('Exception when calling MediasApi->unlinkMediaTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 
 **otherId** | **String**| Tag id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkParentMedia**
> unlinkParentMedia(id)

Remove a media parent

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Media id

try {
    api_instance.unlinkParentMedia(id);
} catch (e) {
    print('Exception when calling MediasApi->unlinkParentMedia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMedia**
> updateMedia(id, newMediaDTO)

Update a media

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediasApi();
final id = id_example; // String | Media id
final newMediaDTO = NewMediaDTO(); // NewMediaDTO | Media to be updated

try {
    api_instance.updateMedia(id, newMediaDTO);
} catch (e) {
    print('Exception when calling MediasApi->updateMedia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 
 **newMediaDTO** | [**NewMediaDTO**](NewMediaDTO.md)| Media to be updated | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

