import 'package:mobile/src/actions/index.dart';
import 'package:mobile/src/actions/location_weather/index.dart';
import 'package:mobile/src/data/weather_api.dart';
import 'package:mobile/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class LocationWeatherEpics {
  const LocationWeatherEpics({
    required WeatherApi weatherApi,
  }) : _api = weatherApi;

  final WeatherApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, SearchLocationQuery$>(_searchLocationQuery),
      TypedEpic<AppState, GetWeatherData$>(_getWeatherData),
    ]);
  }

  Stream<AppAction> _searchLocationQuery(Stream<SearchLocationQuery$> actions, EpicStore<AppState> store) {
    return actions //
        .debounceTime(const Duration(milliseconds: 500))
        .switchMap((SearchLocationQuery$ action) => Stream<void>.value(null)
            .asyncMap((_) => _api.search(query: action.query))
            .map((List<Location> locations) => SearchLocationQuery.successful(locations))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => SearchLocationQuery.error(error, stackTrace)));
  }

  Stream<AppAction> _getWeatherData(Stream<GetWeatherData$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetWeatherData$ action) => Stream<void>.value(null)
            .asyncMap((_) => _api.getLocationWeather(ids: action.locationsId))
            .map((List<LocationWeather> data) => GetWeatherData.successful(data))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => GetWeatherData.error(error, stackTrace)));
  }
}
