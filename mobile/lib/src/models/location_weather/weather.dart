part of location_weather_models;

abstract class Weather implements Built<Weather, WeatherBuilder> {
  factory Weather([void Function(WeatherBuilder b) updates]) = _$Weather;

  factory Weather.initialState() {
    return _$Weather();
  }

  factory Weather.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Weather._();

  int get id;

  @BuiltValueField(wireName: 'applicable_date')
  DateTime get applicableDate;

  @BuiltValueField(wireName: 'weather_state_name')
  String get weatherStateName;

  @BuiltValueField(wireName: 'weather_state_abbr')
  String get weatherStateAbbreviation;

  @BuiltValueField(wireName: 'wind_speed')
  double get windSpeed;

  @BuiltValueField(wireName: 'wind_direction')
  double get windDirection;

  @BuiltValueField(wireName: 'wind_direction_compass')
  String get windDirectionCompass;

  @BuiltValueField(wireName: 'min_temp')
  double get minTemp;

  @BuiltValueField(wireName: 'max_temp')
  double get maxTemp;

  @BuiltValueField(wireName: 'the_temp')
  double get theTemp;

  @BuiltValueField(wireName: 'air_pressure')
  double get airPressure;

  double get humidity;

  double get visibility;

  int get predictability;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Weather> get serializer => _$weatherSerializer;
}
