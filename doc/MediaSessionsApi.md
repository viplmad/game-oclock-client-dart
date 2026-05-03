# game_oclock_client.api.MediaSessionsApi

## Load the API package
```dart
import 'package:game_oclock_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aggregateFirstSessions**](MediaSessionsApi.md#aggregatefirstsessions) | **POST** /api/v1/medias/sessions/first/aggregate | Aggregate all first sessions
[**aggregateGroupSessions**](MediaSessionsApi.md#aggregategroupsessions) | **POST** /api/v1/medias/sessions/aggregate-group | Aggregate group all sessions
[**aggregateMediaSessions**](MediaSessionsApi.md#aggregatemediasessions) | **POST** /api/v1/medias/{id}/sessions/aggregate | Aggregate all media sessions
[**aggregateSessions**](MediaSessionsApi.md#aggregatesessions) | **POST** /api/v1/medias/sessions/aggregate | Aggregate all sessions
[**createMediaSession**](MediaSessionsApi.md#createmediasession) | **POST** /api/v1/medias/{id}/sessions | Create a media session
[**deleteMediaSession**](MediaSessionsApi.md#deletemediasession) | **DELETE** /api/v1/medias/{id}/sessions | Delete a media session
[**getFirstSessionMedias**](MediaSessionsApi.md#getfirstsessionmedias) | **POST** /api/v1/medias/sessions/first | Search first medias by session
[**getLastSessionMedias**](MediaSessionsApi.md#getlastsessionmedias) | **POST** /api/v1/medias/sessions/last | Search last medias by session
[**getMediaSession**](MediaSessionsApi.md#getmediasession) | **GET** /api/v1/medias/{id}/sessions | Get a media session
[**getMediaSessions**](MediaSessionsApi.md#getmediasessions) | **POST** /api/v1/medias/{id}/sessions/list | Get all media sessions
[**getSessionStreaks**](MediaSessionsApi.md#getsessionstreaks) | **POST** /api/v1/medias/sessions/streaks | Get all sessions
[**getSessions**](MediaSessionsApi.md#getsessions) | **POST** /api/v1/medias/sessions/list | Get all sessions


# **aggregateFirstSessions**
> AggregateResultDTO aggregateFirstSessions(aggregateSearchDTO, q)

Aggregate all first sessions

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediaSessionsApi();
final aggregateSearchDTO = AggregateSearchDTO(); // AggregateSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.aggregateFirstSessions(aggregateSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediaSessionsApi->aggregateFirstSessions: $e\n');
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

# **aggregateGroupSessions**
> Map<String, AggregateResultDTO> aggregateGroupSessions(aggregateGroupSearchDTO, q)

Aggregate group all sessions

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediaSessionsApi();
final aggregateGroupSearchDTO = AggregateGroupSearchDTO(); // AggregateGroupSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.aggregateGroupSessions(aggregateGroupSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediaSessionsApi->aggregateGroupSessions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aggregateGroupSearchDTO** | [**AggregateGroupSearchDTO**](AggregateGroupSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**Map<String, AggregateResultDTO>**](AggregateResultDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aggregateMediaSessions**
> AggregateResultDTO aggregateMediaSessions(id, aggregateSearchDTO, q)

Aggregate all media sessions

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediaSessionsApi();
final id = id_example; // String | Media id
final aggregateSearchDTO = AggregateSearchDTO(); // AggregateSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.aggregateMediaSessions(id, aggregateSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediaSessionsApi->aggregateMediaSessions: $e\n');
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

# **aggregateSessions**
> AggregateResultDTO aggregateSessions(aggregateSearchDTO, q)

Aggregate all sessions

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediaSessionsApi();
final aggregateSearchDTO = AggregateSearchDTO(); // AggregateSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.aggregateSessions(aggregateSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediaSessionsApi->aggregateSessions: $e\n');
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

# **createMediaSession**
> createMediaSession(id, newSessionDTO)

Create a media session

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediaSessionsApi();
final id = id_example; // String | Media id
final newSessionDTO = NewSessionDTO(); // NewSessionDTO | Media session to be added

try {
    api_instance.createMediaSession(id, newSessionDTO);
} catch (e) {
    print('Exception when calling MediaSessionsApi->createMediaSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 
 **newSessionDTO** | [**NewSessionDTO**](NewSessionDTO.md)| Media session to be added | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMediaSession**
> deleteMediaSession(id, dateTimeDTO)

Delete a media session

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediaSessionsApi();
final id = id_example; // String | Media id
final dateTimeDTO = DateTimeDTO(); // DateTimeDTO | Media session datetime to be deleted

try {
    api_instance.deleteMediaSession(id, dateTimeDTO);
} catch (e) {
    print('Exception when calling MediaSessionsApi->deleteMediaSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 
 **dateTimeDTO** | [**DateTimeDTO**](DateTimeDTO.md)| Media session datetime to be deleted | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFirstSessionMedias**
> PageResultDTOMediaSessionDTO getFirstSessionMedias(listSearchDTO, startDate, endDate, q)

Search first medias by session

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediaSessionsApi();
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final startDate = 2013-10-20; // DateTime | 
final endDate = 2013-10-20; // DateTime | 
final q = q_example; // String | 

try {
    final result = api_instance.getFirstSessionMedias(listSearchDTO, startDate, endDate, q);
    print(result);
} catch (e) {
    print('Exception when calling MediaSessionsApi->getFirstSessionMedias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTOMediaSessionDTO**](PageResultDTOMediaSessionDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLastSessionMedias**
> PageResultDTOMediaSessionDTO getLastSessionMedias(listSearchDTO, startDate, endDate, q)

Search last medias by session

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediaSessionsApi();
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final startDate = 2013-10-20; // DateTime | 
final endDate = 2013-10-20; // DateTime | 
final q = q_example; // String | 

try {
    final result = api_instance.getLastSessionMedias(listSearchDTO, startDate, endDate, q);
    print(result);
} catch (e) {
    print('Exception when calling MediaSessionsApi->getLastSessionMedias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTOMediaSessionDTO**](PageResultDTOMediaSessionDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMediaSession**
> SessionDTO getMediaSession(id, dateTimeDTO)

Get a media session

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediaSessionsApi();
final id = id_example; // String | Media id
final dateTimeDTO = DateTimeDTO(); // DateTimeDTO | Media session datetime

try {
    final result = api_instance.getMediaSession(id, dateTimeDTO);
    print(result);
} catch (e) {
    print('Exception when calling MediaSessionsApi->getMediaSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 
 **dateTimeDTO** | [**DateTimeDTO**](DateTimeDTO.md)| Media session datetime | 

### Return type

[**SessionDTO**](SessionDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMediaSessions**
> PageResultDTOSessionDTO getMediaSessions(id, listSearchDTO, q)

Get all media sessions

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediaSessionsApi();
final id = id_example; // String | Media id
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getMediaSessions(id, listSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediaSessionsApi->getMediaSessions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Media id | 
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTOSessionDTO**](PageResultDTOSessionDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSessionStreaks**
> PageResultDTOSessionStreakDTO getSessionStreaks(listSearchDTO, q)

Get all sessions

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediaSessionsApi();
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getSessionStreaks(listSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediaSessionsApi->getSessionStreaks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTOSessionStreakDTO**](PageResultDTOSessionStreakDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSessions**
> PageResultDTOSessionDTO getSessions(listSearchDTO, q)

Get all sessions

### Example
```dart
import 'package:game_oclock_client/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = MediaSessionsApi();
final listSearchDTO = ListSearchDTO(); // ListSearchDTO | Query
final q = q_example; // String | 

try {
    final result = api_instance.getSessions(listSearchDTO, q);
    print(result);
} catch (e) {
    print('Exception when calling MediaSessionsApi->getSessions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listSearchDTO** | [**ListSearchDTO**](ListSearchDTO.md)| Query | 
 **q** | **String**|  | [optional] 

### Return type

[**PageResultDTOSessionDTO**](PageResultDTOSessionDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

