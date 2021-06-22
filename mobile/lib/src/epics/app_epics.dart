import 'package:mobile/src/actions/app/index.dart';
import 'package:mobile/src/actions/index.dart';
import 'package:mobile/src/actions/location_weather/index.dart';
import 'package:mobile/src/data/weather_api.dart';
import 'package:mobile/src/epics/location_weather_epics.dart';
import 'package:mobile/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({
    required WeatherApi weatherApi,
  }) : _weatherApi = weatherApi;

  final WeatherApi _weatherApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      LocationWeatherEpics(weatherApi: _weatherApi).epics,
      TypedEpic<AppState, InitializeApp$>(_initializeApp),
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeApp$ action) => Stream<void>.value(null)
                .asyncMap((_) => _weatherApi.getLocationWeather(ids: store.state.savedLocations.toList()))
                .expand((List<LocationWeather> weathers) {
              return <AppAction>[
                GetWeatherData.successful(weathers),
                const InitializeAppSuccessful(),
              ];
            }).onErrorReturnWith((Object error, StackTrace stackTrace) => InitializeApp.error(error, stackTrace)));
  }
}
