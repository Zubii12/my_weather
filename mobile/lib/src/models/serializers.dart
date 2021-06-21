library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'index.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  LocationWeatherState,
  LocationWeather,
  Location,
  Weather,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..add(DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();

class DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  final bool structured = false;

  @override
  final Iterable<Type> types = <Type>[DateTime];

  @override
  final String wireName = 'DateTime';

  @override
  Object serialize(Serializers serializers, DateTime dateTime, {FullType specifiedType = FullType.unspecified}) {
    return dateTime.toUtc().microsecondsSinceEpoch;
  }

  @override
  DateTime deserialize(Serializers serializers, Object serialized, {FullType specifiedType = FullType.unspecified}) {
    if (serialized is String) {
      return DateTime.parse(serialized);
    }

    return DateTime.fromMicrosecondsSinceEpoch(serialized as int).toUtc();
  }
}
