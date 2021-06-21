part of services;

class MetaWeatherService {
  MetaWeatherService({
    required Client client,
    required String url,
  })  : _client = client,
        _url = Uri.parse(url);

  final Client _client;
  final Uri _url;

  Future<List<Location>> search({required String query}) async {
    final Uri uri = _url.replace(
      pathSegments: <String>['api', 'location', 'search'],
      queryParameters: <String, dynamic>{
        'query': query,
      },
    );

    if (query.isEmpty) {
      return <Location>[];
    }

    final Response response = await _client.get(uri);

    if (response.statusCode >= 400) {
      throw StateError(response.body);
    }
    final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
    return List<dynamic>.from(data) //
        .map((dynamic item) => Location.fromJson(item))
        .toList();
  }

  Future<List<LocationWeather>> getLocationWeather({required List<int> ids}) async {
    final List<LocationWeather> locations = <LocationWeather>[];
    for (final int id in ids) {
      final Uri uri = _url.replace(
        pathSegments: <String>['api', 'location', '$id'],
      );

      final Response response = await _client.get(uri);
      if (response.statusCode >= 400) {
        throw StateError(response.body);
      }

      final Map<String, dynamic> data = jsonDecode(response.body) as Map<String, dynamic>;
      data['location'] = <String, dynamic>{
        'woeid': data['woeid'],
        'title': data['title'],
        'location_type': data['location_type'],
      };
      final LocationWeather locationWeather = LocationWeather.fromJson(data);
      locations.add(locationWeather);
    }
    return locations;
  }
}
