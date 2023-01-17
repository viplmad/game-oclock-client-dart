# game_collection_client.api.AuthApi

## Load the API package
```dart
import 'package:game_collection_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**token**](AuthApi.md#token) | **POST** /auth/token | 


# **token**
> TokenResponse token(grantType, password, refreshToken, username)





### Example
```dart
import 'package:game_collection_client/api.dart';

final api_instance = AuthApi();
final grantType = ; // GrantType | 
final password = password_example; // String | 
final refreshToken = refreshToken_example; // String | 
final username = username_example; // String | 

try {
    final result = api_instance.token(grantType, password, refreshToken, username);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->token: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantType** | [**GrantType**](GrantType.md)|  | 
 **password** | **String**|  | [optional] 
 **refreshToken** | **String**|  | [optional] 
 **username** | **String**|  | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

