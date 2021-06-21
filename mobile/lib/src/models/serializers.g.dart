// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AppState.serializer)
      ..add(Location.serializer)
      ..add(LocationWeather.serializer)
      ..add(LocationWeatherState.serializer)
      ..add(Weather.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Weather)]),
          () => new ListBuilder<Weather>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(int), const FullType(LocationWeather)]),
          () => new MapBuilder<int, LocationWeather>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Location)]),
          () => new ListBuilder<Location>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(String)]),
          () => new SetBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltSet, const [const FullType(int)]),
          () => new SetBuilder<int>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
