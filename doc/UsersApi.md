# game_oclock_client.api.UsersApi

## Load the API package
```dart
import 'package:game_oclock_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aggregateUsers**](UsersApi.md#aggregateusers) | **POST** /api/v1/users/aggregate | Aggregate users
[**changePassword**](UsersApi.md#changepassword) | **PUT** /api/v1/users/{id}/change-password | Change a user password
[**createUser**](UsersApi.md#createuser) | **POST** /api/v1/users | Create a user
[**deleteUser**](UsersApi.md#deleteuser) | **DELETE** /api/v1/users/{id} | Delete a user
[**demoteUser**](UsersApi.md#demoteuser) | **PUT** /api/v1/users/{id}/demote | Demote a user
[**getCurrentUser**](UsersApi.md#getcurrentuser) | **GET** /api/v1/myself | Get current user
[**getUser**](UsersApi.md#getuser) | **GET** /api/v1/users/{id} | Get a user
[**getUsers**](UsersApi.md#getusers) | **POST** /api/v1/users/list | Search users
[**promoteUser**](UsersApi.md#promoteuser) | **PUT** /api/v1/users/{id}/promote | Promote a user
[**updateUser**](UsersApi.md#updateuser) | **PUT** /api/v1/users/{id} | Update a user


# **aggregateUsers**
> AggregateResultDTO aggregateUsers(aggregateSearchDTO, q)

Aggregate users

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UsersApi();
final aggregateSearchDTO = AggregateSearchDTO(); // AggregateSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.aggregateUsers(aggregateSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->aggregateUsers: $e\n');
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

# **changePassword**
> changePassword(id, currentPassword, newPassword)

Change a user password

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UsersApi();
final id = id_example; // String | User id
final currentPassword = currentPassword_example; // String | 
final newPassword = newPassword_example; // String | 

try {
    api_instance.changePassword(id, currentPassword, newPassword);
} catch (e) {
    print('Exception when calling UsersApi->changePassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id | 
 **currentPassword** | **String**|  | 
 **newPassword** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> String createUser(password, newUserDTO)

Create a user

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UsersApi();
final password = password_example; // String | 
final newUserDTO = NewUserDTO(); // NewUserDTO | User to be created

try {
    final result = api_instance.createUser(password, newUserDTO);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | **String**|  | 
 **newUserDTO** | [**NewUserDTO**](NewUserDTO.md)| User to be created | 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> deleteUser(id)

Delete a user

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **demoteUser**
> demoteUser(id)

Demote a user

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentUser**
> UserDTO getCurrentUser()

Get current user

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> UserDTO getUser(id)

Get a user

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> PageResultDTO getUsers(listSearchDTO, q)

Search users

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UsersApi();
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getUsers(listSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTO**](PageResultDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promoteUser**
> promoteUser(id)

Promote a user

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> updateUser(id, newUserDTO)

Update a user

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UsersApi();
final id = id_example; // String | User id
final newUserDTO = NewUserDTO(); // NewUserDTO | User to be updated

try {
    api_instance.updateUser(id, newUserDTO);
} catch (e) {
    print('Exception when calling UsersApi->updateUser: $e\n');
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

