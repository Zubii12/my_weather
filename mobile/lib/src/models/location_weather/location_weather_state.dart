part of location_weather_models;

abstract class LocationWeatherState implements Built<LocationWeatherState, LocationWeatherStateBuilder> {
  factory LocationWeatherState([void Function(LocationWeatherStateBuilder b) updates]) = _$LocationWeatherState;

  factory LocationWeatherState.initialState() {
    return _$LocationWeatherState((LocationWeatherStateBuilder b) {
      b.weatherParameters.addAll(
        <String>[
          'SUNRISE',
          'SUNSET',
          'CHANCE OF RAIN',
          'WIND',
          'HUMIDITY',
          'PRESSURE',
          'VISIBILITY',
        ],
      );
    });
  }

  factory LocationWeatherState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  LocationWeatherState._();

  BuiltMap<int, LocationWeather> get locationWeather;

  BuiltList<Location> get searchResult;

  BuiltList<String> get weatherParameters;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<LocationWeatherState> get serializer => _$locationWeatherStateSerializer;
}
