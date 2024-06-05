# game_oclock_client.model.GamePlayedReviewDTO

## Load the model package
```dart
import 'package:game_oclock_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addedDatetime** | [**DateTime**](DateTime.md) |  | 
**backup** | **bool** |  | 
**coverFilename** | **String** |  | [optional] 
**coverUrl** | **String** |  | [optional] 
**edition** | **String** |  | 
**firstPlayed** | **bool** |  | 
**firstSession** | [**GameLogDTO**](GameLogDTO.md) |  | 
**id** | **String** |  | 
**lastSession** | [**GameLogDTO**](GameLogDTO.md) |  | 
**longestSession** | [**GameLogDTO**](GameLogDTO.md) |  | 
**longestStreak** | [**GameStreakDTO**](GameStreakDTO.md) |  | 
**name** | **String** |  | 
**notes** | **String** |  | 
**rating** | **int** |  | 
**releaseYear** | **int** |  | [optional] 
**saveFolder** | **String** |  | 
**screenshotFolder** | **String** |  | 
**status** | [**GameStatus**](GameStatus.md) |  | 
**totalSessions** | **int** |  | 
**totalTime** | **String** |  | 
**totalTimeByHour** | **Map<String, String>** |  | [default to const {}]
**totalTimeByMonth** | **Map<String, String>** |  | [default to const {}]
**totalTimeByWeek** | **Map<String, String>** |  | [default to const {}]
**totalTimeByWeekday** | **Map<String, String>** |  | [default to const {}]
**updatedDatetime** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


