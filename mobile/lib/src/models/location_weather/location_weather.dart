part of location_weather_models;

abstract class LocationWeather implements Built<LocationWeather, LocationWeatherBuilder> {
  factory LocationWeather([void Function(LocationWeatherBuilder b) updates]) = _$LocationWeather;

  factory LocationWeather.initialState() {
    return _$LocationWeather();
  }

  factory LocationWeather.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  LocationWeather._();

  @BuiltValueField(wireName: 'woeid')
  int get id;

  Location get location;

  @BuiltValueField(wireName: 'consolidated_weather')
  BuiltList<Weather> get weather;

  @BuiltValueField(wireName: 'sun_rise')
  DateTime get sunRise;

  @BuiltValueField(wireName: 'sun_set')
  DateTime get sunSet;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<LocationWeather> get serializer => _$locationWeatherSerializer;
}
