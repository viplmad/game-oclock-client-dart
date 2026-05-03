# game_oclock_client.api.DevicesApi

## Load the API package
```dart
import 'package:game_oclock_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aggregateDevices**](DevicesApi.md#aggregatedevices) | **POST** /api/v1/devices/aggregate | Aggregate devices
[**aggregateMediaDevices**](DevicesApi.md#aggregatemediadevices) | **POST** /api/v1/medias/{id}/devices/aggregate | Aggregate all devices where a media has been in a session
[**createDevice**](DevicesApi.md#createdevice) | **POST** /api/v1/devices | Create a device
[**deleteDevice**](DevicesApi.md#deletedevice) | **DELETE** /api/v1/devices/{id} | Delete a device
[**getDevice**](DevicesApi.md#getdevice) | **GET** /api/v1/devices/{id} | Get a device
[**getDevices**](DevicesApi.md#getdevices) | **POST** /api/v1/devices/list | Get devices
[**getMediaDevices**](DevicesApi.md#getmediadevices) | **POST** /api/v1/medias/{id}/devices/list | Get all devices where a media has been in a session
[**updateDevice**](DevicesApi.md#updatedevice) | **PUT** /api/v1/devices/{id} | Update a device


# **aggregateDevices**
> AggregateResultDTO aggregateDevices(aggregateSearchDTO, q)

Aggregate devices

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DevicesApi();
final aggregateSearchDTO = AggregateSearchDTO(); // AggregateSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.aggregateDevices(aggregateSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->aggregateDevices: $e\n');
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

# **aggregateMediaDevices**
> AggregateResultDTO aggregateMediaDevices(id, aggregateSearchDTO, q)

Aggregate all devices where a media has been in a session

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DevicesApi();
final id = id_example; // String | Media id
final aggregateSearchDTO = AggregateSearchDTO(); // AggregateSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.aggregateMediaDevices(id, aggregateSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->aggregateMediaDevices: $e\n');
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

# **createDevice**
> String createDevice(newDeviceDTO)

Create a device

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DevicesApi();
final newDeviceDTO = NewDeviceDTO(); // NewDeviceDTO | Device to be createad

try {
    final result = api_instance.createDevice(newDeviceDTO);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->createDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newDeviceDTO** | [**NewDeviceDTO**](NewDeviceDTO.md)| Device to be createad | 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDevice**
> deleteDevice(id)

Delete a device

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DevicesApi();
final id = id_example; // String | Device id

try {
    api_instance.deleteDevice(id);
} catch (e) {
    print('Exception when calling DevicesApi->deleteDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Device id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevice**
> DeviceDTO getDevice(id)

Get a device

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DevicesApi();
final id = id_example; // String | Device id

try {
    final result = api_instance.getDevice(id);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->getDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Device id | 

### Return type

[**DeviceDTO**](DeviceDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevices**
> PageResultDTODeviceDTO getDevices(listSearchDTO, q)

Get devices

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DevicesApi();
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getDevices(listSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->getDevices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTODeviceDTO**](PageResultDTODeviceDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMediaDevices**
> PageResultDTODeviceDTO getMediaDevices(id, listSearchDTO, q)

Get all devices where a media has been in a session

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DevicesApi();
final id = id_example; // String | Media id
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getMediaDevices(id, listSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling DevicesApi->getMediaDevices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTODeviceDTO**](PageResultDTODeviceDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDevice**
> updateDevice(id, newDeviceDTO)

Update a device

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DevicesApi();
final id = id_example; // String | Device id
final newDeviceDTO = NewDeviceDTO(); // NewDeviceDTO | Device to be updated

try {
    api_instance.updateDevice(id, newDeviceDTO);
} catch (e) {
    print('Exception when calling DevicesApi->updateDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Device id | 
 **newDeviceDTO** | [**NewDeviceDTO**](NewDeviceDTO.md)| Device to be updated | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

