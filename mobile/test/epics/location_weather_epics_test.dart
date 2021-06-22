import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/src/actions/location_weather/index.dart';
import 'package:mobile/src/data/weather_api.dart';
import 'package:mobile/src/epics/app_epics.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mocktail/mocktail.dart';
import 'package:redux_epics/redux_epics.dart';

import '../mock_models.dart';

void main() {
  late Location location;
  late LocationWeather locationWeather;
  late WeatherApi weatherApi;
  late AppEpics epics;
  late AppState appState;
  late EpicStore<AppState> epicStore;
  late StateError error;

  final dynamic appStateData = 'test/res/app_state.json'.readJson;
  final dynamic locationWeatherData = 'test/res/location_weather/location_weather.json'.readJson;
  final dynamic locationData = 'test/res/location_weather/location.json'.readJson;

  setUp(() {
    locationWeather = LocationWeather.fromJson(locationWeatherData);
    location = Location.fromJson(locationData);
    weatherApi = MockWeatherApi();
    epics = AppEpics(weatherApi: weatherApi);
    appState = AppState.fromJson(appStateData);
    epicStore = MockEpicStore();
    error = StateError('message');
  });

  group('searchLocationQuery', () {
    test('searchLocationQuery - successful', () async {
      when(() => weatherApi.search(query: captureAny(named: 'query'))).thenAnswer((_) async => <Location>[location]);
      when(() => epicStore.state).thenReturn(appState);

      const SearchLocationQuery$ action = SearchLocationQuery$(query: 'query');

      await expectLater(
        epics.epics(Stream<dynamic>.value(action).asBroadcastStream(), epicStore),
        emitsInOrder(<dynamic>[
          SearchLocationQuerySuccessful(<Location>[location]),
          emitsDone,
        ]),
      );

      final VerificationResult result = verify(() => weatherApi.search(query: captureAny(named: 'query')));
      expect(result.callCount, 1);
      expect(result.captured[0], 'query');
    });

    test('searchLocationQuery - error', () async {
      when(() => weatherApi.search(query: captureAny(named: 'query'))).thenThrow(error);
      when(() => epicStore.state).thenReturn(appState);

      const SearchLocationQuery$ action = SearchLocationQuery$(query: 'query');

      await expectLater(
        epics.epics(Stream<dynamic>.value(action).asBroadcastStream(), epicStore),
        emitsInOrder(<dynamic>[
          isA<SearchLocationQueryError>(),
          emitsDone,
        ]),
      );

      final VerificationResult result = verify(() => weatherApi.search(query: captureAny(named: 'query')));
      expect(result.callCount, 1);
      expect(result.captured[0], 'query');
    });
  });

  group('getWeatherData', () {
    test('getWeatherData - successful', () async {
      when(() => weatherApi.getLocationWeather(ids: captureAny(named: 'ids')))
          .thenAnswer((_) async => <LocationWeather>[locationWeather]);
      when(() => epicStore.state).thenReturn(appState);

      const GetWeatherData$ action = GetWeatherData$(locationsId: <int>[44418]);

      await expectLater(
        epics.epics(Stream<dynamic>.value(action).asBroadcastStream(), epicStore),
        emitsInOrder(<dynamic>[
          GetWeatherDataSuccessful(<LocationWeather>[locationWeather]),
          emitsDone,
        ]),
      );

      final VerificationResult result = verify(() => weatherApi.getLocationWeather(ids: captureAny(named: 'ids')));
      expect(result.callCount, 1);
      expect(result.captured[0], <int>[44418]);
    });

    test('getWeatherData - error', () async {
      when(() => weatherApi.getLocationWeather(ids: captureAny(named: 'ids'))).thenThrow(error);
      when(() => epicStore.state).thenReturn(appState);

      const GetWeatherData$ action = GetWeatherData$(locationsId: <int>[44418]);

      await expectLater(
        epics.epics(Stream<dynamic>.value(action).asBroadcastStream(), epicStore),
        emitsInOrder(<dynamic>[
          isA<GetWeatherDataError>(),
          emitsDone,
        ]),
      );

      final VerificationResult result = verify(() => weatherApi.getLocationWeather(ids: captureAny(named: 'ids')));
      expect(result.callCount, 1);
      expect(result.captured[0], <int>[44418]);
    });
  });
}
