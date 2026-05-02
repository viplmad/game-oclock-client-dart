# game_oclock_client.api.HealthApi

## Load the API package
```dart
import 'package:game_oclock_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health**](HealthApi.md#health) | **GET** /health | Liveness check


# **health**
> health()

Liveness check

### Example
```dart
import 'package:game_oclock_client/api.dart';

final api_instance = HealthApi();

try {
    api_instance.health();
} catch (e) {
    print('Exception when calling HealthApi->health: $e\n');
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

