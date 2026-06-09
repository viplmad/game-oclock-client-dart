# game_oclock_client.api.AuthApi

## Load the API package
```dart
import 'package:game_oclock_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**token**](AuthApi.md#token) | **POST** /auth/token | Authenticate through OAuth flow


# **token**
> TokenResponse token(grantType, password, refreshToken, username)

Authenticate through OAuth flow

### Example
```dart
import 'package:game_oclock_client/api.dart';

final api_instance = AuthApi();
final grantType = ; // GrantType | Grant type
final password = password_example; // String | Password (used in `password` grant type)
final refreshToken = refreshToken_example; // String | Refresh token (used in `refresh_token` grant type)
final username = username_example; // String | Username (used in `password` grant type)

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
 **grantType** | [**GrantType**](GrantType.md)| Grant type | 
 **password** | **String**| Password (used in `password` grant type) | [optional] 
 **refreshToken** | **String**| Refresh token (used in `refresh_token` grant type) | [optional] 
 **username** | **String**| Username (used in `password` grant type) | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

