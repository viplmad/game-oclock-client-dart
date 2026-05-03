# game_oclock_client.api.LocationsApi

## Load the API package
```dart
import 'package:game_oclock_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aggregateLocations**](LocationsApi.md#aggregatelocations) | **POST** /api/v1/locations/aggregate | Aggregate locations
[**aggregateMediaLocations**](LocationsApi.md#aggregatemedialocations) | **POST** /api/v1/medias/{id}/locations/aggregate | Aggregate all locations where a media is available
[**createLocation**](LocationsApi.md#createlocation) | **POST** /api/v1/locations | Create a location
[**deleteLocation**](LocationsApi.md#deletelocation) | **DELETE** /api/v1/locations/{id} | Delete a location
[**getLocation**](LocationsApi.md#getlocation) | **GET** /api/v1/locations/{id} | Get a location
[**getLocations**](LocationsApi.md#getlocations) | **POST** /api/v1/locations/list | Get locations
[**getMediaLocations**](LocationsApi.md#getmedialocations) | **POST** /api/v1/medias/{id}/locations/list | Get all locations where a media is available
[**updateLocation**](LocationsApi.md#updatelocation) | **PUT** /api/v1/locations/{id} | Update a location


# **aggregateLocations**
> AggregateResultDTO aggregateLocations(aggregateSearchDTO, q)

Aggregate locations

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocationsApi();
final aggregateSearchDTO = AggregateSearchDTO(); // AggregateSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.aggregateLocations(aggregateSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling LocationsApi->aggregateLocations: $e\n');
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

# **aggregateMediaLocations**
> AggregateResultDTO aggregateMediaLocations(id, aggregateSearchDTO, q)

Aggregate all locations where a media is available

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocationsApi();
final id = id_example; // String | Media id
final aggregateSearchDTO = AggregateSearchDTO(); // AggregateSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.aggregateMediaLocations(id, aggregateSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling LocationsApi->aggregateMediaLocations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 
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

# **createLocation**
> String createLocation(newLocationDTO)

Create a location

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocationsApi();
final newLocationDTO = NewLocationDTO(); // NewLocationDTO | Location to be createad

try {
    final result = api_instance.createLocation(newLocationDTO);
    print(result);
} catch (e) {
    print('Exception when calling LocationsApi->createLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newLocationDTO** | [**NewLocationDTO**](NewLocationDTO.md)| Location to be createad | 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLocation**
> deleteLocation(id)

Delete a location

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocationsApi();
final id = id_example; // String | Location id

try {
    api_instance.deleteLocation(id);
} catch (e) {
    print('Exception when calling LocationsApi->deleteLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Location id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocation**
> LocationDTO getLocation(id)

Get a location

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocationsApi();
final id = id_example; // String | Location id

try {
    final result = api_instance.getLocation(id);
    print(result);
} catch (e) {
    print('Exception when calling LocationsApi->getLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Location id | 

### Return type

[**LocationDTO**](LocationDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocations**
> PageResultDTOLocationDTO getLocations(listSearchDTO, q)

Get locations

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocationsApi();
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getLocations(listSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling LocationsApi->getLocations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTOLocationDTO**](PageResultDTOLocationDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMediaLocations**
> PageResultDTOLocationAvailableDTO getMediaLocations(id, listSearchDTO, q)

Get all locations where a media is available

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocationsApi();
final id = id_example; // String | Media id
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getMediaLocations(id, listSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling LocationsApi->getMediaLocations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTOLocationAvailableDTO**](PageResultDTOLocationAvailableDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLocation**
> updateLocation(id, newLocationDTO)

Update a location

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocationsApi();
final id = id_example; // String | Location id
final newLocationDTO = NewLocationDTO(); // NewLocationDTO | Location to be updated

try {
    api_instance.updateLocation(id, newLocationDTO);
} catch (e) {
    print('Exception when calling LocationsApi->updateLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Location id | 
 **newLocationDTO** | [**NewLocationDTO**](NewLocationDTO.md)| Location to be updated | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

