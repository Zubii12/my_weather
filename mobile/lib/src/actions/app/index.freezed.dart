// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of app_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InitializeAppTearOff {
  const _$InitializeAppTearOff();

  InitializeApp$ call([String pendingId = _kInitializeAppPendingId]) {
    return InitializeApp$(
      pendingId,
    );
  }

  InitializeAppSuccessful successful(
      [String pendingId = _kInitializeAppPendingId]) {
    return InitializeAppSuccessful(
      pendingId,
    );
  }

  InitializeAppError error(Object error, StackTrace stackTrace,
      [String pendingId = _kInitializeAppPendingId]) {
    return InitializeAppError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $InitializeApp = _$InitializeAppTearOff();

/// @nodoc
mixin _$InitializeApp {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String pendingId) $default, {
    required TResult Function(String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String pendingId)? $default, {
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeApp$ value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeApp$ value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitializeAppCopyWith<InitializeApp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeAppCopyWith<$Res> {
  factory $InitializeAppCopyWith(
          InitializeApp value, $Res Function(InitializeApp) then) =
      _$InitializeAppCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppCopyWith<$Res> {
  _$InitializeAppCopyWithImpl(this._value, this._then);

  final InitializeApp _value;
  // ignore: unused_field
  final $Res Function(InitializeApp) _then;

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
abstract class $InitializeApp$CopyWith<$Res>
    implements $InitializeAppCopyWith<$Res> {
  factory $InitializeApp$CopyWith(
          InitializeApp$ value, $Res Function(InitializeApp$) then) =
      _$InitializeApp$CopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$InitializeApp$CopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeApp$CopyWith<$Res> {
  _$InitializeApp$CopyWithImpl(
      InitializeApp$ _value, $Res Function(InitializeApp$) _then)
      : super(_value, (v) => _then(v as InitializeApp$));

  @override
  InitializeApp$ get _value => super._value as InitializeApp$;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(InitializeApp$(
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements(ActionStart)
class _$InitializeApp$ implements InitializeApp$ {
  const _$InitializeApp$([this.pendingId = _kInitializeAppPendingId]);

  @JsonKey(defaultValue: _kInitializeAppPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'InitializeApp(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeApp$ &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pendingId);

  @JsonKey(ignore: true)
  @override
  $InitializeApp$CopyWith<InitializeApp$> get copyWith =>
      _$InitializeApp$CopyWithImpl<InitializeApp$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String pendingId) $default, {
    required TResult Function(String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return $default(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String pendingId)? $default, {
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeApp$ value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeApp$ value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitializeApp$ implements InitializeApp, ActionStart {
  const factory InitializeApp$([String pendingId]) = _$InitializeApp$;

  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitializeApp$CopyWith<InitializeApp$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeAppSuccessfulCopyWith<$Res>
    implements $InitializeAppCopyWith<$Res> {
  factory $InitializeAppSuccessfulCopyWith(InitializeAppSuccessful value,
          $Res Function(InitializeAppSuccessful) then) =
      _$InitializeAppSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$InitializeAppSuccessfulCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppSuccessfulCopyWith<$Res> {
  _$InitializeAppSuccessfulCopyWithImpl(InitializeAppSuccessful _value,
      $Res Function(InitializeAppSuccessful) _then)
      : super(_value, (v) => _then(v as InitializeAppSuccessful));

  @override
  InitializeAppSuccessful get _value => super._value as InitializeAppSuccessful;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(InitializeAppSuccessful(
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements(ActionDone)
class _$InitializeAppSuccessful implements InitializeAppSuccessful {
  const _$InitializeAppSuccessful([this.pendingId = _kInitializeAppPendingId]);

  @JsonKey(defaultValue: _kInitializeAppPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'InitializeApp.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppSuccessful &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pendingId);

  @JsonKey(ignore: true)
  @override
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith =>
      _$InitializeAppSuccessfulCopyWithImpl<InitializeAppSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String pendingId) $default, {
    required TResult Function(String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String pendingId)? $default, {
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeApp$ value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeApp$ value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeAppSuccessful implements InitializeApp, ActionDone {
  const factory InitializeAppSuccessful([String pendingId]) =
      _$InitializeAppSuccessful;

  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeAppErrorCopyWith<$Res>
    implements $InitializeAppCopyWith<$Res> {
  factory $InitializeAppErrorCopyWith(
          InitializeAppError value, $Res Function(InitializeAppError) then) =
      _$InitializeAppErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$InitializeAppErrorCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppErrorCopyWith<$Res> {
  _$InitializeAppErrorCopyWithImpl(
      InitializeAppError _value, $Res Function(InitializeAppError) _then)
      : super(_value, (v) => _then(v as InitializeAppError));

  @override
  InitializeAppError get _value => super._value as InitializeAppError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(InitializeAppError(
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
class _$InitializeAppError implements InitializeAppError {
  const _$InitializeAppError(this.error, this.stackTrace,
      [this.pendingId = _kInitializeAppPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey(defaultValue: _kInitializeAppPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'InitializeApp.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppError &&
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
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith =>
      _$InitializeAppErrorCopyWithImpl<InitializeAppError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String pendingId) $default, {
    required TResult Function(String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String pendingId)? $default, {
    TResult Function(String pendingId)? successful,
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
    TResult Function(InitializeApp$ value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeApp$ value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeAppError
    implements InitializeApp, ActionDone, ErrorAction {
  const factory InitializeAppError(Object error, StackTrace stackTrace,
      [String pendingId]) = _$InitializeAppError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddSavedLocationIdTearOff {
  const _$AddSavedLocationIdTearOff();

  AddSavedLocationId$ call({required int id}) {
    return AddSavedLocationId$(
      id: id,
    );
  }
}

/// @nodoc
const $AddSavedLocationId = _$AddSavedLocationIdTearOff();

/// @nodoc
mixin _$AddSavedLocationId {
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddSavedLocationIdCopyWith<AddSavedLocationId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSavedLocationIdCopyWith<$Res> {
  factory $AddSavedLocationIdCopyWith(
          AddSavedLocationId value, $Res Function(AddSavedLocationId) then) =
      _$AddSavedLocationIdCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$AddSavedLocationIdCopyWithImpl<$Res>
    implements $AddSavedLocationIdCopyWith<$Res> {
  _$AddSavedLocationIdCopyWithImpl(this._value, this._then);

  final AddSavedLocationId _value;
  // ignore: unused_field
  final $Res Function(AddSavedLocationId) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $AddSavedLocationId$CopyWith<$Res>
    implements $AddSavedLocationIdCopyWith<$Res> {
  factory $AddSavedLocationId$CopyWith(
          AddSavedLocationId$ value, $Res Function(AddSavedLocationId$) then) =
      _$AddSavedLocationId$CopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class _$AddSavedLocationId$CopyWithImpl<$Res>
    extends _$AddSavedLocationIdCopyWithImpl<$Res>
    implements $AddSavedLocationId$CopyWith<$Res> {
  _$AddSavedLocationId$CopyWithImpl(
      AddSavedLocationId$ _value, $Res Function(AddSavedLocationId$) _then)
      : super(_value, (v) => _then(v as AddSavedLocationId$));

  @override
  AddSavedLocationId$ get _value => super._value as AddSavedLocationId$;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(AddSavedLocationId$(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddSavedLocationId$ implements AddSavedLocationId$ {
  const _$AddSavedLocationId$({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'AddSavedLocationId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddSavedLocationId$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $AddSavedLocationId$CopyWith<AddSavedLocationId$> get copyWith =>
      _$AddSavedLocationId$CopyWithImpl<AddSavedLocationId$>(this, _$identity);
}

abstract class AddSavedLocationId$ implements AddSavedLocationId {
  const factory AddSavedLocationId$({required int id}) = _$AddSavedLocationId$;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AddSavedLocationId$CopyWith<AddSavedLocationId$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RemoveSavedLocationIdTearOff {
  const _$RemoveSavedLocationIdTearOff();

  RemoveSavedLocationId$ call({required int id}) {
    return RemoveSavedLocationId$(
      id: id,
    );
  }
}

/// @nodoc
const $RemoveSavedLocationId = _$RemoveSavedLocationIdTearOff();

/// @nodoc
mixin _$RemoveSavedLocationId {
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoveSavedLocationIdCopyWith<RemoveSavedLocationId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveSavedLocationIdCopyWith<$Res> {
  factory $RemoveSavedLocationIdCopyWith(RemoveSavedLocationId value,
          $Res Function(RemoveSavedLocationId) then) =
      _$RemoveSavedLocationIdCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$RemoveSavedLocationIdCopyWithImpl<$Res>
    implements $RemoveSavedLocationIdCopyWith<$Res> {
  _$RemoveSavedLocationIdCopyWithImpl(this._value, this._then);

  final RemoveSavedLocationId _value;
  // ignore: unused_field
  final $Res Function(RemoveSavedLocationId) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $RemoveSavedLocationId$CopyWith<$Res>
    implements $RemoveSavedLocationIdCopyWith<$Res> {
  factory $RemoveSavedLocationId$CopyWith(RemoveSavedLocationId$ value,
          $Res Function(RemoveSavedLocationId$) then) =
      _$RemoveSavedLocationId$CopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class _$RemoveSavedLocationId$CopyWithImpl<$Res>
    extends _$RemoveSavedLocationIdCopyWithImpl<$Res>
    implements $RemoveSavedLocationId$CopyWith<$Res> {
  _$RemoveSavedLocationId$CopyWithImpl(RemoveSavedLocationId$ _value,
      $Res Function(RemoveSavedLocationId$) _then)
      : super(_value, (v) => _then(v as RemoveSavedLocationId$));

  @override
  RemoveSavedLocationId$ get _value => super._value as RemoveSavedLocationId$;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(RemoveSavedLocationId$(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveSavedLocationId$ implements RemoveSavedLocationId$ {
  const _$RemoveSavedLocationId$({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'RemoveSavedLocationId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveSavedLocationId$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $RemoveSavedLocationId$CopyWith<RemoveSavedLocationId$> get copyWith =>
      _$RemoveSavedLocationId$CopyWithImpl<RemoveSavedLocationId$>(
          this, _$identity);
}

abstract class RemoveSavedLocationId$ implements RemoveSavedLocationId {
  const factory RemoveSavedLocationId$({required int id}) =
      _$RemoveSavedLocationId$;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RemoveSavedLocationId$CopyWith<RemoveSavedLocationId$> get copyWith =>
      throw _privateConstructorUsedError;
}
