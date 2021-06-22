import 'dart:convert';
import 'dart:io';
import 'package:mobile/src/data/index.dart';
import 'package:mobile/src/data/weather_api.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path/path.dart';
import 'package:http/http.dart';

import 'package:mobile/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';

class MockWeatherApi extends Mock implements WeatherApi {}

class MockEpicStore extends Mock implements EpicStore<AppState> {}

class MockMetaWeatherService extends Mock implements MetaWeatherService {}

class MockUri extends Mock implements Uri {}

class FakeUri extends Fake implements Uri {}

class MockClient extends Mock implements Client {}

class MockResponse extends Mock implements Response {}

class FakeResponse extends Fake implements Response {}

extension ExtendedString on String {
  dynamic get readJson {
    final Directory pwd = Directory.current;
    final String path = joinAll(<String>[pwd.absolute.path, ...this.split('/')]);

    return jsonDecode(File(path).readAsStringSync());
  }
}
