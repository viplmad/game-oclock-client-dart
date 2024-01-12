# game_oclock_client.api.UsersApi

## Load the API package
```dart
import 'package:game_oclock_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changePassword**](UsersApi.md#changepassword) | **PUT** /api/v1/myself/change-password | 
[**deleteUser**](UsersApi.md#deleteuser) | **DELETE** /api/v1/users/{id} | 
[**demoteUser**](UsersApi.md#demoteuser) | **PUT** /api/v1/users/{id}/demote | 
[**getCurrentUser**](UsersApi.md#getcurrentuser) | **GET** /api/v1/myself | 
[**getUser**](UsersApi.md#getuser) | **GET** /api/v1/users/{id} | 
[**getUsers**](UsersApi.md#getusers) | **POST** /api/v1/users/list | 
[**postUser**](UsersApi.md#postuser) | **POST** /api/v1/users | 
[**promoteUser**](UsersApi.md#promoteuser) | **PUT** /api/v1/users/{id}/promote | 
[**putUser**](UsersApi.md#putuser) | **PUT** /api/v1/users/{id} | 


# **changePassword**
> changePassword(currentPassword, newPassword)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final currentPassword = currentPassword_example; // String | 
final newPassword = newPassword_example; // String | 

try {
    api_instance.changePassword(currentPassword, newPassword);
} catch (e) {
    print('Exception when calling UsersApi->changePassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currentPassword** | **String**|  | 
 **newPassword** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> deleteUser(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final id = id_example; // String | User id

try {
    api_instance.deleteUser(id);
} catch (e) {
    print('Exception when calling UsersApi->deleteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **demoteUser**
> demoteUser(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final id = id_example; // String | User id

try {
    api_instance.demoteUser(id);
} catch (e) {
    print('Exception when calling UsersApi->demoteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentUser**
> UserDTO getCurrentUser()



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();

try {
    final result = api_instance.getCurrentUser();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getCurrentUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserDTO**](UserDTO.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> UserDTO getUser(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final id = id_example; // String | User id

try {
    final result = api_instance.getUser(id);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id | 

### Return type

[**UserDTO**](UserDTO.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> UserPageResult getUsers(searchDTO, q)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final searchDTO = SearchDTO(); // SearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getUsers(searchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchDTO** | [**SearchDTO**](SearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**UserPageResult**](UserPageResult.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUser**
> UserDTO postUser(password, newUserDTO)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final password = password_example; // String | 
final newUserDTO = NewUserDTO(); // NewUserDTO | User to be created

try {
    final result = api_instance.postUser(password, newUserDTO);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->postUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | **String**|  | 
 **newUserDTO** | [**NewUserDTO**](NewUserDTO.md)| User to be created | 

### Return type

[**UserDTO**](UserDTO.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promoteUser**
> promoteUser(id)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final id = id_example; // String | User id

try {
    api_instance.promoteUser(id);
} catch (e) {
    print('Exception when calling UsersApi->promoteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putUser**
> putUser(id, newUserDTO)



### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final id = id_example; // String | User id
final newUserDTO = NewUserDTO(); // NewUserDTO | User to be updated

try {
    api_instance.putUser(id, newUserDTO);
} catch (e) {
    print('Exception when calling UsersApi->putUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id | 
 **newUserDTO** | [**NewUserDTO**](NewUserDTO.md)| User to be updated | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

