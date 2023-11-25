# game_collection_client.model.GameWithLogsExtendedDTO

## Load the model package
```dart
import 'package:game_collection_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addedDatetime** | [**DateTime**](DateTime.md) |  | 
**backup** | **bool** |  | 
**coverFilename** | **String** |  | [optional] 
**coverUrl** | **String** |  | [optional] 
**edition** | **String** |  | 
**id** | **String** |  | 
**logs** | [**List<GameLogDTO>**](GameLogDTO.md) |  | [default to const []]
**longestSession** | [**GameLogDTO**](GameLogDTO.md) |  | 
**longestStreak** | [**GameStreakDTO**](GameStreakDTO.md) |  | 
**name** | **String** |  | 
**notes** | **String** |  | 
**rating** | **int** |  | 
**releaseYear** | **int** |  | [optional] 
**saveFolder** | **String** |  | 
**screenshotFolder** | **String** |  | 
**status** | [**GameStatus**](GameStatus.md) |  | 
**streaks** | [**List<GameStreakDTO>**](GameStreakDTO.md) |  | [default to const []]
**totalTime** | **String** |  | 
**updatedDatetime** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


