part of location_weather_actions;

const String _kGetWeatherDataPendingId = 'GetWeatherData';

@freezed
abstract class GetWeatherData with _$GetWeatherData implements AppAction {
  @Implements(ActionStart)
  const factory GetWeatherData.start({
    required List<int> locationsId,
    @Default(_kGetWeatherDataPendingId) String pendingId,
  }) = GetWeatherData$;

  @Implements(ActionDone)
  const factory GetWeatherData.successful(
    List<LocationWeather> locationWeathers, [
    @Default(_kGetWeatherDataPendingId) String pendingId,
  ]) = GetWeatherDataSuccessful;

  @Implements(ActionDone)
  @Implements(ErrorAction)
  const factory GetWeatherData.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetWeatherDataPendingId) String pendingId,
  ]) = GetWeatherDataError;

  static String get pendingKey => _kGetWeatherDataPendingId;
}
