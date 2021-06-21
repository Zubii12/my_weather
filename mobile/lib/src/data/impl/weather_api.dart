import 'package:mobile/src/data/index.dart';
import 'package:mobile/src/data/weather_api.dart';
import 'package:mobile/src/models/index.dart';

class WeatherApiImpl implements WeatherApi {
  const WeatherApiImpl({
    required MetaWeatherService service,
  }) : _service = service;

  final MetaWeatherService _service;

  @override
  Future<List<Location>> search({required String query}) async {
    return _service.search(query: query);
  }

  @override
  Future<List<LocationWeather>> getLocationWeather({required List<int> ids}) async {
    return _service.getLocationWeather(ids: ids);
  }
}
