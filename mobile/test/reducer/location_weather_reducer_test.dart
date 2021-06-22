import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/src/actions/location_weather/index.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mobile/src/reducer/location_weather_reducer.dart';

import '../mock_models.dart';

void main() {
  late LocationWeatherState locationWeatherState;
  late Location location;
  late LocationWeather locationWeather;

  final dynamic locationWeatherStateData = 'test/res/location_weather_state.json'.readJson;
  final dynamic locationData = 'test/res/location_weather/location.json'.readJson;
  final dynamic locationWeatherData = 'test/res/location_weather/location_weather.json'.readJson;

  setUp(() {
    location = Location.fromJson(locationData);
    locationWeather = LocationWeather.fromJson(locationWeatherData);
    locationWeatherState = LocationWeatherState.fromJson(locationWeatherStateData);
  });

  test('searchLocationQuerySuccessful', () {
    final SearchLocationQuerySuccessful action = SearchLocationQuerySuccessful(<Location>[location]);
    final LocationWeatherState state = locationWeatherReducer(locationWeatherState, action);
    expect(state.searchResult.contains(location), isTrue);
  });

  test('getWeatherDataSuccessful', () {
    final GetWeatherDataSuccessful action = GetWeatherDataSuccessful(<LocationWeather>[locationWeather]);
    final LocationWeatherState state = locationWeatherReducer(locationWeatherState, action);
    expect(state.locationWeather[action.locationWeathers.first.id], locationWeather);
  });

  test('removeWeatherData', () {
    final LocationWeather location2 = locationWeatherState.locationWeather[44418]!;
    final RemoveWeatherData$ action = RemoveWeatherData$(locationId: location2.id);
    final LocationWeatherState state = locationWeatherReducer(locationWeatherState, action);
    expect(state.locationWeather[location2.id], isNull);
  });
}
