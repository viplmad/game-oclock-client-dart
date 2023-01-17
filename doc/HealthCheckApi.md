# game_collection_client.api.HealthCheckApi

## Load the API package
```dart
import 'package:game_collection_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**isAlive**](HealthCheckApi.md#isalive) | **GET** /is-alive | 


# **isAlive**
> isAlive()





### Example
```dart
import 'package:game_collection_client/api.dart';

final api_instance = HealthCheckApi();

try {
    api_instance.isAlive();
} catch (e) {
    print('Exception when calling HealthCheckApi->isAlive: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

