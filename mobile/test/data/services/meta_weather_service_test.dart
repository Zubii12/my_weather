import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/src/data/index.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart';

import '../../mock_models.dart';

void main() {
  late Location location;
  late MetaWeatherService service;
  late Uri url;
  late Client client;
  late Response response;

  final dynamic locationData = 'test/res/location_weather/location.json'.readJson;

  setUp(() {
    location = Location.fromJson(locationData);
    client = MockClient();
    service = MetaWeatherService(client: client, url: 'https://www.metaweather.com/api/location/');
    url = Uri.parse('https://www.metaweather.com/api/location/');
    response = MockResponse();
  });

  setUpAll(() {
    registerFallbackValue(FakeUri());
    registerFallbackValue(FakeResponse());
  });

  group('search', () {
    test('search', () async {
      when(() => client.get(captureAny())).thenAnswer((_) async => response);
      when(() => response.statusCode).thenReturn(399);
      when(() => response.body).thenReturn(jsonEncode(<dynamic>[location.json]));

      final List<Location> result = await service.search(query: 'query');
      expect(result, <Location>[location]);

      final Uri uri = url.replace(
        pathSegments: <String>['api', 'location', 'search'],
        queryParameters: <String, dynamic>{
          'query': 'query',
        },
      );

      final VerificationResult verificationResult = verify(() => client.get(captureAny()));
      expect(verificationResult.callCount, 1);
      expect(verificationResult.captured[0], uri);

      verify(() => response.statusCode).called(1);
      verify(() => response.body).called(1);
    });

    test('search - query.isEmpty', () async {
      final List<Location> result = await service.search(query: '');
      expect(result, <Location>[]);

      verifyNever(() => client.get(captureAny()));
      verifyNever(() => response.statusCode);
      verifyNever(() => response.body);
    });

    test('search - response.statusCode >= 400', () async {
      when(() => client.get(captureAny())).thenAnswer((_) async => response);
      when(() => response.statusCode).thenReturn(401);
      when(() => response.body).thenReturn('');

      await expectLater(
        service.search(query: 'query'),
        throwsA(isA<StateError>()),
      );

      final Uri uri = url.replace(
        pathSegments: <String>['api', 'location', 'search'],
        queryParameters: <String, dynamic>{
          'query': 'query',
        },
      );

      final VerificationResult verificationResult = verify(() => client.get(captureAny()));
      expect(verificationResult.callCount, 1);
      expect(verificationResult.captured[0], uri);

      verify(() => response.statusCode).called(1);
      verify(() => response.body).called(1);
    });
  });

  group('getLocationWeather', () {
    test('getLocationWeather - response.statusCode >= 400', () async {
      when(() => client.get(captureAny())).thenAnswer((_) async => response);
      when(() => response.statusCode).thenReturn(401);
      when(() => response.body).thenReturn('');

      final Uri uri = url.replace(
        pathSegments: <String>['api', 'location', '2487956'],
      );

      await expectLater(
        service.getLocationWeather(ids: <int>[2487956]),
        throwsA(isA<StateError>()),
      );

      final VerificationResult verificationResult = verify(() => client.get(captureAny()));
      expect(verificationResult.callCount, 1);
      expect(verificationResult.captured[0], uri);

      verify(() => response.statusCode).called(1);
      verify(() => response.body).called(1);
    });
  });
}
