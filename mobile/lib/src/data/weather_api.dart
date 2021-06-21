import 'package:mobile/src/models/index.dart';

abstract class WeatherApi {
  Future<List<Location>> search({required String query});

  Future<List<LocationWeather>> getLocationWeather({required List<int> ids});
}
