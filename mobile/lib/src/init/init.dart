import 'dart:async';
import 'dart:io';
import 'package:http/http.dart';
import 'package:mobile/src/actions/app/index.dart';
import 'package:mobile/src/data/impl/weather_api.dart';
import 'package:mobile/src/data/index.dart';
import 'package:mobile/src/data/weather_api.dart';
import 'package:mobile/src/epics/app_epics.dart';
import 'package:mobile/src/middleware/app_middleware.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mobile/src/reducer/reducer.dart';
import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart' as path;

Future<InitResult> init() async {
  final StreamController<dynamic> actions = StreamController<dynamic>.broadcast();

  final Client client = Client();

  final Directory appDir = await getApplicationSupportDirectory();
  Hive.init(path.join(appDir.path, 'hive'));
  final Box<List<int>> savedLocationsBox = await Hive.openBox<List<int>>('savedLocations');

  if (!savedLocationsBox.containsKey('savedLocations')) {
    savedLocationsBox.put('savedLocations', <int>[]);
  }
  final List<int> savedLocations = savedLocationsBox.get('savedLocations')!;

  final MetaWeatherService metaWeatherService = MetaWeatherService(
    client: client,
    url: 'https://www.metaweather.com/api/location/',
  );

  final WeatherApi weatherApi = WeatherApiImpl(service: metaWeatherService);

  final AppEpics appEpics = AppEpics(weatherApi: weatherApi);

  final AppMiddleware appMiddleware = AppMiddleware(box: savedLocationsBox);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState.initialState(savedLocations.toSet()),
    middleware: <Middleware<AppState>>[
      ...appMiddleware.middleware,
      EpicMiddleware<AppState>(appEpics.epics),
      (_, dynamic action, NextDispatcher next) {
        next(action);
        actions.add(action);
      },
    ],
  )..dispatch(const InitializeApp$());

  return InitResult(store, actions.stream);
}

class InitResult {
  InitResult(this.store, this.actions);

  final Store<AppState> store;
  final Stream<dynamic> actions;
}
