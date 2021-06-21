part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder b) updates]) = _$AppState;

  factory AppState.initialState(Set<int> savedLocations) {
    return _$AppState((AppStateBuilder b) {
      b
        ..locationWeather = LocationWeatherState.initialState().toBuilder()
        ..savedLocations.addAll(savedLocations);
    });
  }

  factory AppState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  AppState._();

  LocationWeatherState get locationWeather;

  BuiltSet<String> get pendingActions;

  BuiltSet<int> get savedLocations;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
