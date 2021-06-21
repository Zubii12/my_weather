import 'package:built_collection/built_collection.dart';
import 'package:mobile/src/actions/location_weather/index.dart';
import 'package:mobile/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<LocationWeatherState> locationWeatherReducer =
    combineReducers<LocationWeatherState>(<Reducer<LocationWeatherState>>[
  TypedReducer<LocationWeatherState, SearchLocationQuerySuccessful>(_searchLocationQuerySuccessful),
  TypedReducer<LocationWeatherState, GetWeatherDataSuccessful>(_getWeatherDataSuccessful),
  TypedReducer<LocationWeatherState, RemoveWeatherData$>(_removeWeatherData),
]);

LocationWeatherState _searchLocationQuerySuccessful(LocationWeatherState state, SearchLocationQuerySuccessful action) {
  return state.rebuild((LocationWeatherStateBuilder b) => b.searchResult = ListBuilder<Location>(action.locations));
}

LocationWeatherState _getWeatherDataSuccessful(LocationWeatherState state, GetWeatherDataSuccessful action) {
  return state.rebuild((LocationWeatherStateBuilder b) {
    for (final LocationWeather weather in action.locationWeathers) {
      b.locationWeather[weather.id] = weather;
    }
  });
}

LocationWeatherState _removeWeatherData(LocationWeatherState state, RemoveWeatherData$ action) {
  return state.rebuild((LocationWeatherStateBuilder b) => b.locationWeather.remove(action.locationId));
}
