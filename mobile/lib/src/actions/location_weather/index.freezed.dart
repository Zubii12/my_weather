// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of location_weather_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchLocationQueryTearOff {
  const _$SearchLocationQueryTearOff();

  SearchLocationQuery$ call(
      {required String query,
      String pendingId = _kSearchLocationQueryPendingId}) {
    return SearchLocationQuery$(
      query: query,
      pendingId: pendingId,
    );
  }

  SearchLocationQuerySuccessful successful(List<Location> locations,
      [String pendingId = _kSearchLocationQueryPendingId]) {
    return SearchLocationQuerySuccessful(
      locations,
      pendingId,
    );
  }

  SearchLocationQueryError error(Object error, StackTrace stackTrace,
      [String pendingId = _kSearchLocationQueryPendingId]) {
    return SearchLocationQueryError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $SearchLocationQuery = _$SearchLocationQueryTearOff();

/// @nodoc
mixin _$SearchLocationQuery {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query, String pendingId) $default, {
    required TResult Function(List<Location> locations, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query, String pendingId)? $default, {
    TResult Function(List<Location> locations, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchLocationQuery$ value) $default, {
    required TResult Function(SearchLocationQuerySuccessful value) successful,
    required TResult Function(SearchLocationQueryError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchLocationQuery$ value)? $default, {
    TResult Function(SearchLocationQuerySuccessful value)? successful,
    TResult Function(SearchLocationQueryError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchLocationQueryCopyWith<SearchLocationQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationQueryCopyWith<$Res> {
  factory $SearchLocationQueryCopyWith(
          SearchLocationQuery value, $Res Function(SearchLocationQuery) then) =
      _$SearchLocationQueryCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$SearchLocationQueryCopyWithImpl<$Res>
    implements $SearchLocationQueryCopyWith<$Res> {
  _$SearchLocationQueryCopyWithImpl(this._value, this._then);

  final SearchLocationQuery _value;
  // ignore: unused_field
  final $Res Function(SearchLocationQuery) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SearchLocationQuery$CopyWith<$Res>
    implements $SearchLocationQueryCopyWith<$Res> {
  factory $SearchLocationQuery$CopyWith(SearchLocationQuery$ value,
          $Res Function(SearchLocationQuery$) then) =
      _$SearchLocationQuery$CopyWithImpl<$Res>;
  @override
  $Res call({String query, String pendingId});
}

/// @nodoc
class _$SearchLocationQuery$CopyWithImpl<$Res>
    extends _$SearchLocationQueryCopyWithImpl<$Res>
    implements $SearchLocationQuery$CopyWith<$Res> {
  _$SearchLocationQuery$CopyWithImpl(
      SearchLocationQuery$ _value, $Res Function(SearchLocationQuery$) _then)
      : super(_value, (v) => _then(v as SearchLocationQuery$));

  @override
  SearchLocationQuery$ get _value => super._value as SearchLocationQuery$;

  @override
  $Res call({
    Object? query = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(SearchLocationQuery$(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements(ActionStart)
class _$SearchLocationQuery$ implements SearchLocationQuery$ {
  const _$SearchLocationQuery$(
      {required this.query, this.pendingId = _kSearchLocationQueryPendingId});

  @override
  final String query;
  @JsonKey(defaultValue: _kSearchLocationQueryPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SearchLocationQuery(query: $query, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchLocationQuery$ &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(pendingId);

  @JsonKey(ignore: true)
  @override
  $SearchLocationQuery$CopyWith<SearchLocationQuery$> get copyWith =>
      _$SearchLocationQuery$CopyWithImpl<SearchLocationQuery$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query, String pendingId) $default, {
    required TResult Function(List<Location> locations, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return $default(query, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query, String pendingId)? $default, {
    TResult Function(List<Location> locations, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(query, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchLocationQuery$ value) $default, {
    required TResult Function(SearchLocationQuerySuccessful value) successful,
    required TResult Function(SearchLocationQueryError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchLocationQuery$ value)? $default, {
    TResult Function(SearchLocationQuerySuccessful value)? successful,
    TResult Function(SearchLocationQueryError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SearchLocationQuery$
    implements SearchLocationQuery, ActionStart {
  const factory SearchLocationQuery$(
      {required String query, String pendingId}) = _$SearchLocationQuery$;

  String get query => throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SearchLocationQuery$CopyWith<SearchLocationQuery$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationQuerySuccessfulCopyWith<$Res>
    implements $SearchLocationQueryCopyWith<$Res> {
  factory $SearchLocationQuerySuccessfulCopyWith(
          SearchLocationQuerySuccessful value,
          $Res Function(SearchLocationQuerySuccessful) then) =
      _$SearchLocationQuerySuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({List<Location> locations, String pendingId});
}

/// @nodoc
class _$SearchLocationQuerySuccessfulCopyWithImpl<$Res>
    extends _$SearchLocationQueryCopyWithImpl<$Res>
    implements $SearchLocationQuerySuccessfulCopyWith<$Res> {
  _$SearchLocationQuerySuccessfulCopyWithImpl(
      SearchLocationQuerySuccessful _value,
      $Res Function(SearchLocationQuerySuccessful) _then)
      : super(_value, (v) => _then(v as SearchLocationQuerySuccessful));

  @override
  SearchLocationQuerySuccessful get _value =>
      super._value as SearchLocationQuerySuccessful;

  @override
  $Res call({
    Object? locations = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(SearchLocationQuerySuccessful(
      locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements(ActionDone)
class _$SearchLocationQuerySuccessful implements SearchLocationQuerySuccessful {
  const _$SearchLocationQuerySuccessful(this.locations,
      [this.pendingId = _kSearchLocationQueryPendingId]);

  @override
  final List<Location> locations;
  @JsonKey(defaultValue: _kSearchLocationQueryPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SearchLocationQuery.successful(locations: $locations, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchLocationQuerySuccessful &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locations) ^
      const DeepCollectionEquality().hash(pendingId);

  @JsonKey(ignore: true)
  @override
  $SearchLocationQuerySuccessfulCopyWith<SearchLocationQuerySuccessful>
      get copyWith => _$SearchLocationQuerySuccessfulCopyWithImpl<
          SearchLocationQuerySuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query, String pendingId) $default, {
    required TResult Function(List<Location> locations, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return successful(locations, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query, String pendingId)? $default, {
    TResult Function(List<Location> locations, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(locations, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchLocationQuery$ value) $default, {
    required TResult Function(SearchLocationQuerySuccessful value) successful,
    required TResult Function(SearchLocationQueryError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchLocationQuery$ value)? $default, {
    TResult Function(SearchLocationQuerySuccessful value)? successful,
    TResult Function(SearchLocationQueryError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SearchLocationQuerySuccessful
    implements SearchLocationQuery, ActionDone {
  const factory SearchLocationQuerySuccessful(List<Location> locations,
      [String pendingId]) = _$SearchLocationQuerySuccessful;

  List<Location> get locations => throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SearchLocationQuerySuccessfulCopyWith<SearchLocationQuerySuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationQueryErrorCopyWith<$Res>
    implements $SearchLocationQueryCopyWith<$Res> {
  factory $SearchLocationQueryErrorCopyWith(SearchLocationQueryError value,
          $Res Function(SearchLocationQueryError) then) =
      _$SearchLocationQueryErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$SearchLocationQueryErrorCopyWithImpl<$Res>
    extends _$SearchLocationQueryCopyWithImpl<$Res>
    implements $SearchLocationQueryErrorCopyWith<$Res> {
  _$SearchLocationQueryErrorCopyWithImpl(SearchLocationQueryError _value,
      $Res Function(SearchLocationQueryError) _then)
      : super(_value, (v) => _then(v as SearchLocationQueryError));

  @override
  SearchLocationQueryError get _value =>
      super._value as SearchLocationQueryError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(SearchLocationQueryError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements(ActionDone)
@Implements(ErrorAction)
class _$SearchLocationQueryError implements SearchLocationQueryError {
  const _$SearchLocationQueryError(this.error, this.stackTrace,
      [this.pendingId = _kSearchLocationQueryPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey(defaultValue: _kSearchLocationQueryPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SearchLocationQuery.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchLocationQueryError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace) ^
      const DeepCollectionEquality().hash(pendingId);

  @JsonKey(ignore: true)
  @override
  $SearchLocationQueryErrorCopyWith<SearchLocationQueryError> get copyWith =>
      _$SearchLocationQueryErrorCopyWithImpl<SearchLocationQueryError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query, String pendingId) $default, {
    required TResult Function(List<Location> locations, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query, String pendingId)? $default, {
    TResult Function(List<Location> locations, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchLocationQuery$ value) $default, {
    required TResult Function(SearchLocationQuerySuccessful value) successful,
    required TResult Function(SearchLocationQueryError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchLocationQuery$ value)? $default, {
    TResult Function(SearchLocationQuerySuccessful value)? successful,
    TResult Function(SearchLocationQueryError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchLocationQueryError
    implements SearchLocationQuery, ActionDone, ErrorAction {
  const factory SearchLocationQueryError(Object error, StackTrace stackTrace,
      [String pendingId]) = _$SearchLocationQueryError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SearchLocationQueryErrorCopyWith<SearchLocationQueryError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetWeatherDataTearOff {
  const _$GetWeatherDataTearOff();

  GetWeatherData$ start(
      {required List<int> locationsId,
      String pendingId = _kGetWeatherDataPendingId}) {
    return GetWeatherData$(
      locationsId: locationsId,
      pendingId: pendingId,
    );
  }

  GetWeatherDataSuccessful successful(List<LocationWeather> locationWeathers,
      [String pendingId = _kGetWeatherDataPendingId]) {
    return GetWeatherDataSuccessful(
      locationWeathers,
      pendingId,
    );
  }

  GetWeatherDataError error(Object error, StackTrace stackTrace,
      [String pendingId = _kGetWeatherDataPendingId]) {
    return GetWeatherDataError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $GetWeatherData = _$GetWeatherDataTearOff();

/// @nodoc
mixin _$GetWeatherData {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> locationsId, String pendingId) start,
    required TResult Function(
            List<LocationWeather> locationWeathers, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> locationsId, String pendingId)? start,
    TResult Function(List<LocationWeather> locationWeathers, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeatherData$ value) start,
    required TResult Function(GetWeatherDataSuccessful value) successful,
    required TResult Function(GetWeatherDataError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeatherData$ value)? start,
    TResult Function(GetWeatherDataSuccessful value)? successful,
    TResult Function(GetWeatherDataError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetWeatherDataCopyWith<GetWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherDataCopyWith<$Res> {
  factory $GetWeatherDataCopyWith(
          GetWeatherData value, $Res Function(GetWeatherData) then) =
      _$GetWeatherDataCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$GetWeatherDataCopyWithImpl<$Res>
    implements $GetWeatherDataCopyWith<$Res> {
  _$GetWeatherDataCopyWithImpl(this._value, this._then);

  final GetWeatherData _value;
  // ignore: unused_field
  final $Res Function(GetWeatherData) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GetWeatherData$CopyWith<$Res>
    implements $GetWeatherDataCopyWith<$Res> {
  factory $GetWeatherData$CopyWith(
          GetWeatherData$ value, $Res Function(GetWeatherData$) then) =
      _$GetWeatherData$CopyWithImpl<$Res>;
  @override
  $Res call({List<int> locationsId, String pendingId});
}

/// @nodoc
class _$GetWeatherData$CopyWithImpl<$Res>
    extends _$GetWeatherDataCopyWithImpl<$Res>
    implements $GetWeatherData$CopyWith<$Res> {
  _$GetWeatherData$CopyWithImpl(
      GetWeatherData$ _value, $Res Function(GetWeatherData$) _then)
      : super(_value, (v) => _then(v as GetWeatherData$));

  @override
  GetWeatherData$ get _value => super._value as GetWeatherData$;

  @override
  $Res call({
    Object? locationsId = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetWeatherData$(
      locationsId: locationsId == freezed
          ? _value.locationsId
          : locationsId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements(ActionStart)
class _$GetWeatherData$ implements GetWeatherData$ {
  const _$GetWeatherData$(
      {required this.locationsId, this.pendingId = _kGetWeatherDataPendingId});

  @override
  final List<int> locationsId;
  @JsonKey(defaultValue: _kGetWeatherDataPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetWeatherData.start(locationsId: $locationsId, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherData$ &&
            (identical(other.locationsId, locationsId) ||
                const DeepCollectionEquality()
                    .equals(other.locationsId, locationsId)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationsId) ^
      const DeepCollectionEquality().hash(pendingId);

  @JsonKey(ignore: true)
  @override
  $GetWeatherData$CopyWith<GetWeatherData$> get copyWith =>
      _$GetWeatherData$CopyWithImpl<GetWeatherData$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> locationsId, String pendingId) start,
    required TResult Function(
            List<LocationWeather> locationWeathers, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return start(locationsId, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> locationsId, String pendingId)? start,
    TResult Function(List<LocationWeather> locationWeathers, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(locationsId, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeatherData$ value) start,
    required TResult Function(GetWeatherDataSuccessful value) successful,
    required TResult Function(GetWeatherDataError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeatherData$ value)? start,
    TResult Function(GetWeatherDataSuccessful value)? successful,
    TResult Function(GetWeatherDataError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetWeatherData$ implements GetWeatherData, ActionStart {
  const factory GetWeatherData$(
      {required List<int> locationsId, String pendingId}) = _$GetWeatherData$;

  List<int> get locationsId => throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetWeatherData$CopyWith<GetWeatherData$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherDataSuccessfulCopyWith<$Res>
    implements $GetWeatherDataCopyWith<$Res> {
  factory $GetWeatherDataSuccessfulCopyWith(GetWeatherDataSuccessful value,
          $Res Function(GetWeatherDataSuccessful) then) =
      _$GetWeatherDataSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({List<LocationWeather> locationWeathers, String pendingId});
}

/// @nodoc
class _$GetWeatherDataSuccessfulCopyWithImpl<$Res>
    extends _$GetWeatherDataCopyWithImpl<$Res>
    implements $GetWeatherDataSuccessfulCopyWith<$Res> {
  _$GetWeatherDataSuccessfulCopyWithImpl(GetWeatherDataSuccessful _value,
      $Res Function(GetWeatherDataSuccessful) _then)
      : super(_value, (v) => _then(v as GetWeatherDataSuccessful));

  @override
  GetWeatherDataSuccessful get _value =>
      super._value as GetWeatherDataSuccessful;

  @override
  $Res call({
    Object? locationWeathers = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetWeatherDataSuccessful(
      locationWeathers == freezed
          ? _value.locationWeathers
          : locationWeathers // ignore: cast_nullable_to_non_nullable
              as List<LocationWeather>,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements(ActionDone)
class _$GetWeatherDataSuccessful implements GetWeatherDataSuccessful {
  const _$GetWeatherDataSuccessful(this.locationWeathers,
      [this.pendingId = _kGetWeatherDataPendingId]);

  @override
  final List<LocationWeather> locationWeathers;
  @JsonKey(defaultValue: _kGetWeatherDataPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetWeatherData.successful(locationWeathers: $locationWeathers, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherDataSuccessful &&
            (identical(other.locationWeathers, locationWeathers) ||
                const DeepCollectionEquality()
                    .equals(other.locationWeathers, locationWeathers)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationWeathers) ^
      const DeepCollectionEquality().hash(pendingId);

  @JsonKey(ignore: true)
  @override
  $GetWeatherDataSuccessfulCopyWith<GetWeatherDataSuccessful> get copyWith =>
      _$GetWeatherDataSuccessfulCopyWithImpl<GetWeatherDataSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> locationsId, String pendingId) start,
    required TResult Function(
            List<LocationWeather> locationWeathers, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return successful(locationWeathers, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> locationsId, String pendingId)? start,
    TResult Function(List<LocationWeather> locationWeathers, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(locationWeathers, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeatherData$ value) start,
    required TResult Function(GetWeatherDataSuccessful value) successful,
    required TResult Function(GetWeatherDataError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeatherData$ value)? start,
    TResult Function(GetWeatherDataSuccessful value)? successful,
    TResult Function(GetWeatherDataError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetWeatherDataSuccessful implements GetWeatherData, ActionDone {
  const factory GetWeatherDataSuccessful(List<LocationWeather> locationWeathers,
      [String pendingId]) = _$GetWeatherDataSuccessful;

  List<LocationWeather> get locationWeathers =>
      throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetWeatherDataSuccessfulCopyWith<GetWeatherDataSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherDataErrorCopyWith<$Res>
    implements $GetWeatherDataCopyWith<$Res> {
  factory $GetWeatherDataErrorCopyWith(
          GetWeatherDataError value, $Res Function(GetWeatherDataError) then) =
      _$GetWeatherDataErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$GetWeatherDataErrorCopyWithImpl<$Res>
    extends _$GetWeatherDataCopyWithImpl<$Res>
    implements $GetWeatherDataErrorCopyWith<$Res> {
  _$GetWeatherDataErrorCopyWithImpl(
      GetWeatherDataError _value, $Res Function(GetWeatherDataError) _then)
      : super(_value, (v) => _then(v as GetWeatherDataError));

  @override
  GetWeatherDataError get _value => super._value as GetWeatherDataError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetWeatherDataError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements(ActionDone)
@Implements(ErrorAction)
class _$GetWeatherDataError implements GetWeatherDataError {
  const _$GetWeatherDataError(this.error, this.stackTrace,
      [this.pendingId = _kGetWeatherDataPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey(defaultValue: _kGetWeatherDataPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetWeatherData.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherDataError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace) ^
      const DeepCollectionEquality().hash(pendingId);

  @JsonKey(ignore: true)
  @override
  $GetWeatherDataErrorCopyWith<GetWeatherDataError> get copyWith =>
      _$GetWeatherDataErrorCopyWithImpl<GetWeatherDataError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> locationsId, String pendingId) start,
    required TResult Function(
            List<LocationWeather> locationWeathers, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> locationsId, String pendingId)? start,
    TResult Function(List<LocationWeather> locationWeathers, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeatherData$ value) start,
    required TResult Function(GetWeatherDataSuccessful value) successful,
    required TResult Function(GetWeatherDataError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeatherData$ value)? start,
    TResult Function(GetWeatherDataSuccessful value)? successful,
    TResult Function(GetWeatherDataError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetWeatherDataError
    implements GetWeatherData, ActionDone, ErrorAction {
  const factory GetWeatherDataError(Object error, StackTrace stackTrace,
      [String pendingId]) = _$GetWeatherDataError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetWeatherDataErrorCopyWith<GetWeatherDataError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RemoveWeatherDataTearOff {
  const _$RemoveWeatherDataTearOff();

  RemoveWeatherData$ call({required int locationId}) {
    return RemoveWeatherData$(
      locationId: locationId,
    );
  }
}

/// @nodoc
const $RemoveWeatherData = _$RemoveWeatherDataTearOff();

/// @nodoc
mixin _$RemoveWeatherData {
  int get locationId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoveWeatherDataCopyWith<RemoveWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveWeatherDataCopyWith<$Res> {
  factory $RemoveWeatherDataCopyWith(
          RemoveWeatherData value, $Res Function(RemoveWeatherData) then) =
      _$RemoveWeatherDataCopyWithImpl<$Res>;
  $Res call({int locationId});
}

/// @nodoc
class _$RemoveWeatherDataCopyWithImpl<$Res>
    implements $RemoveWeatherDataCopyWith<$Res> {
  _$RemoveWeatherDataCopyWithImpl(this._value, this._then);

  final RemoveWeatherData _value;
  // ignore: unused_field
  final $Res Function(RemoveWeatherData) _then;

  @override
  $Res call({
    Object? locationId = freezed,
  }) {
    return _then(_value.copyWith(
      locationId: locationId == freezed
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $RemoveWeatherData$CopyWith<$Res>
    implements $RemoveWeatherDataCopyWith<$Res> {
  factory $RemoveWeatherData$CopyWith(
          RemoveWeatherData$ value, $Res Function(RemoveWeatherData$) then) =
      _$RemoveWeatherData$CopyWithImpl<$Res>;
  @override
  $Res call({int locationId});
}

/// @nodoc
class _$RemoveWeatherData$CopyWithImpl<$Res>
    extends _$RemoveWeatherDataCopyWithImpl<$Res>
    implements $RemoveWeatherData$CopyWith<$Res> {
  _$RemoveWeatherData$CopyWithImpl(
      RemoveWeatherData$ _value, $Res Function(RemoveWeatherData$) _then)
      : super(_value, (v) => _then(v as RemoveWeatherData$));

  @override
  RemoveWeatherData$ get _value => super._value as RemoveWeatherData$;

  @override
  $Res call({
    Object? locationId = freezed,
  }) {
    return _then(RemoveWeatherData$(
      locationId: locationId == freezed
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveWeatherData$ implements RemoveWeatherData$ {
  const _$RemoveWeatherData$({required this.locationId});

  @override
  final int locationId;

  @override
  String toString() {
    return 'RemoveWeatherData(locationId: $locationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveWeatherData$ &&
            (identical(other.locationId, locationId) ||
                const DeepCollectionEquality()
                    .equals(other.locationId, locationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationId);

  @JsonKey(ignore: true)
  @override
  $RemoveWeatherData$CopyWith<RemoveWeatherData$> get copyWith =>
      _$RemoveWeatherData$CopyWithImpl<RemoveWeatherData$>(this, _$identity);
}

abstract class RemoveWeatherData$ implements RemoveWeatherData {
  const factory RemoveWeatherData$({required int locationId}) =
      _$RemoveWeatherData$;

  @override
  int get locationId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RemoveWeatherData$CopyWith<RemoveWeatherData$> get copyWith =>
      throw _privateConstructorUsedError;
}
