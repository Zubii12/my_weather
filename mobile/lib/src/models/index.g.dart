// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'locationWeather',
      serializers.serialize(object.locationWeather,
          specifiedType: const FullType(LocationWeatherState)),
      'pendingActions',
      serializers.serialize(object.pendingActions,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(String)])),
      'savedLocations',
      serializers.serialize(object.savedLocations,
          specifiedType: const FullType(BuiltSet, const [const FullType(int)])),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'locationWeather':
          result.locationWeather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LocationWeatherState))!
              as LocationWeatherState);
          break;
        case 'pendingActions':
          result.pendingActions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(String)]))!
              as BuiltSet<Object>);
          break;
        case 'savedLocations':
          result.savedLocations.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(int)]))!
              as BuiltSet<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final LocationWeatherState locationWeather;
  @override
  final BuiltSet<String> pendingActions;
  @override
  final BuiltSet<int> savedLocations;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {required this.locationWeather,
      required this.pendingActions,
      required this.savedLocations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        locationWeather, 'AppState', 'locationWeather');
    BuiltValueNullFieldError.checkNotNull(
        pendingActions, 'AppState', 'pendingActions');
    BuiltValueNullFieldError.checkNotNull(
        savedLocations, 'AppState', 'savedLocations');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        locationWeather == other.locationWeather &&
        pendingActions == other.pendingActions &&
        savedLocations == other.savedLocations;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, locationWeather.hashCode), pendingActions.hashCode),
        savedLocations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('locationWeather', locationWeather)
          ..add('pendingActions', pendingActions)
          ..add('savedLocations', savedLocations))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  LocationWeatherStateBuilder? _locationWeather;
  LocationWeatherStateBuilder get locationWeather =>
      _$this._locationWeather ??= new LocationWeatherStateBuilder();
  set locationWeather(LocationWeatherStateBuilder? locationWeather) =>
      _$this._locationWeather = locationWeather;

  SetBuilder<String>? _pendingActions;
  SetBuilder<String> get pendingActions =>
      _$this._pendingActions ??= new SetBuilder<String>();
  set pendingActions(SetBuilder<String>? pendingActions) =>
      _$this._pendingActions = pendingActions;

  SetBuilder<int>? _savedLocations;
  SetBuilder<int> get savedLocations =>
      _$this._savedLocations ??= new SetBuilder<int>();
  set savedLocations(SetBuilder<int>? savedLocations) =>
      _$this._savedLocations = savedLocations;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locationWeather = $v.locationWeather.toBuilder();
      _pendingActions = $v.pendingActions.toBuilder();
      _savedLocations = $v.savedLocations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              locationWeather: locationWeather.build(),
              pendingActions: pendingActions.build(),
              savedLocations: savedLocations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'locationWeather';
        locationWeather.build();
        _$failedField = 'pendingActions';
        pendingActions.build();
        _$failedField = 'savedLocations';
        savedLocations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
