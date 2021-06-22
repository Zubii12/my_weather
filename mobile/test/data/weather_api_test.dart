import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/src/data/impl/weather_api.dart';
import 'package:mobile/src/data/index.dart';
import 'package:mobile/src/data/weather_api.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mocktail/mocktail.dart';

import '../mock_models.dart';

void main() {
  late Location location;
  late LocationWeather locationWeather;
  late MetaWeatherService service;
  late WeatherApi api;

  final dynamic locationWeatherData = 'test/res/location_weather/location_weather.json'.readJson;
  final dynamic locationData = 'test/res/location_weather/location.json'.readJson;

  setUp(() {
    locationWeather = LocationWeather.fromJson(locationWeatherData);
    location = Location.fromJson(locationData);
    service = MockMetaWeatherService();
    api = WeatherApiImpl(service: service);
  });

  test('search', () async {
    when(() => service.search(query: captureAny(named: 'query'))).thenAnswer((_) async => <Location>[location]);

    final List<Location> result = await api.search(query: 'san francisco');
    expect(result, <Location>[location]);

    final VerificationResult verificationResult = verify(() => service.search(query: captureAny(named: 'query')));
    expect(verificationResult.callCount, 1);
    expect(verificationResult.captured[0], 'san francisco');
  });

  test('getLocationWeather', () async {
    when(() => service.getLocationWeather(ids: captureAny(named: 'ids')))
        .thenAnswer((_) async => <LocationWeather>[locationWeather]);

    final List<LocationWeather> result = await api.getLocationWeather(ids: <int>[2487956]);
    expect(result, <LocationWeather>[locationWeather]);

    final VerificationResult verificationResult =
        verify(() => service.getLocationWeather(ids: captureAny(named: 'ids')));
    expect(verificationResult.callCount, 1);
    expect(verificationResult.captured[0], <int>[2487956]);
  });
}
