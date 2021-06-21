part of location_weather_models;

abstract class Location implements Built<Location, LocationBuilder> {
  factory Location([void Function(LocationBuilder b) updates]) = _$Location;

  factory Location.initialState() {
    return _$Location();
  }

  factory Location.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Location._();

  @BuiltValueField(wireName: 'woeid')
  int get id;

  String get title;

  @BuiltValueField(wireName: 'location_type')
  String get locationType;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Location> get serializer => _$locationSerializer;
}
