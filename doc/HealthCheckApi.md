# game_oclock_client.api.HealthCheckApi

## Load the API package
```dart
import 'package:game_oclock_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health**](HealthCheckApi.md#health) | **GET** /health | 


# **health**
> health()



### Example
```dart
import 'package:game_oclock_client/api.dart';

final api_instance = HealthCheckApi();

try {
    api_instance.health();
} catch (e) {
    print('Exception when calling HealthCheckApi->health: $e\n');
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

