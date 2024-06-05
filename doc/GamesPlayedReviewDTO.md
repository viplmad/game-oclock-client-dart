# game_oclock_client.model.GamesPlayedReviewDTO

## Load the model package
```dart
import 'package:game_oclock_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firstSession** | [**GamesLogDTO**](GamesLogDTO.md) |  | 
**games** | [**List<GamePlayedReviewDTO>**](GamePlayedReviewDTO.md) |  | [default to const []]
**lastSession** | [**GamesLogDTO**](GamesLogDTO.md) |  | 
**longestSession** | [**GamesLogDTO**](GamesLogDTO.md) |  | 
**longestStreak** | [**GamesStreakDTO**](GamesStreakDTO.md) |  | 
**totalFirstPlayed** | **int** |  | 
**totalPlayed** | **int** |  | 
**totalPlayedByReleaseYear** | **Map<String, int>** |  | [default to const {}]
**totalRated** | **int** |  | 
**totalRatedByRating** | **Map<String, int>** |  | [default to const {}]
**totalSessions** | **int** |  | 
**totalTime** | **String** |  | 
**totalTimeByHour** | **Map<String, String>** |  | [default to const {}]
**totalTimeByMonth** | **Map<String, String>** |  | [default to const {}]
**totalTimeByWeek** | **Map<String, String>** |  | [default to const {}]
**totalTimeByWeekday** | **Map<String, String>** |  | [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


