import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/src/actions/app/index.dart';
import 'package:mobile/src/actions/location_weather/index.dart';
import 'package:mobile/src/data/weather_api.dart';
import 'package:mobile/src/epics/app_epics.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mocktail/mocktail.dart';
import 'package:redux_epics/redux_epics.dart';

import '../mock_models.dart';

void main() {
  late LocationWeather locationWeather;
  late WeatherApi weatherApi;
  late AppEpics epics;
  late AppState appState;
  late EpicStore<AppState> epicStore;
  late StateError error;

  final dynamic appStateData = 'test/res/app_state.json'.readJson;
  final dynamic locationWeatherData = 'test/res/location_weather/location_weather.json'.readJson;

  setUp(() {
    locationWeather = LocationWeather.fromJson(locationWeatherData);
    weatherApi = MockWeatherApi();
    epics = AppEpics(weatherApi: weatherApi);
    appState = AppState.fromJson(appStateData);
    epicStore = MockEpicStore();
    error = StateError('message');
  });

  group('initializeApp', () {
    test('initializeApp - successful', () async {
      when(() => weatherApi.getLocationWeather(ids: captureAny(named: 'ids')))
          .thenAnswer((_) async => <LocationWeather>[locationWeather]);
      when(() => epicStore.state).thenReturn(appState);

      const InitializeApp$ action = InitializeApp$();

      await expectLater(
        epics.epics(Stream<dynamic>.value(action).asBroadcastStream(), epicStore),
        emitsInOrder(<dynamic>[
          GetWeatherData.successful(<LocationWeather>[locationWeather]),
          const InitializeAppSuccessful(),
          emitsDone,
        ]),
      );

      final VerificationResult result = verify(() => weatherApi.getLocationWeather(ids: captureAny(named: 'ids')));
      expect(result.callCount, 1);
      expect(result.captured[0], <int>[44418]);
    });

    test('initializeApp - error', () async {
      when(() => weatherApi.getLocationWeather(ids: captureAny(named: 'ids'))).thenThrow(error);
      when(() => epicStore.state).thenReturn(appState);

      const InitializeApp$ action = InitializeApp$();

      await expectLater(
        epics.epics(Stream<dynamic>.value(action).asBroadcastStream(), epicStore),
        emitsInOrder(<dynamic>[
          isA<InitializeAppError>(),
          emitsDone,
        ]),
      );

      final VerificationResult result = verify(() => weatherApi.getLocationWeather(ids: captureAny(named: 'ids')));
      expect(result.callCount, 1);
      expect(result.captured[0], <int>[44418]);
    });
  });
}
