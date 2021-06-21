part of location_weather_actions;

@freezed
abstract class RemoveWeatherData with _$RemoveWeatherData implements AppAction {
  const factory RemoveWeatherData({required int locationId}) = RemoveWeatherData$;
}
