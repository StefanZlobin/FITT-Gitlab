// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function(bool needUpdate) updateApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function(bool needUpdate)? updateApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function(bool needUpdate)? updateApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUpdateEventCheckUpdate value) checkUpdate,
    required TResult Function(_AppUpdateEventUpdateApp value) updateApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUpdateEventCheckUpdate value)? checkUpdate,
    TResult? Function(_AppUpdateEventUpdateApp value)? updateApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUpdateEventCheckUpdate value)? checkUpdate,
    TResult Function(_AppUpdateEventUpdateApp value)? updateApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUpdateEventCopyWith<$Res> {
  factory $AppUpdateEventCopyWith(
          AppUpdateEvent value, $Res Function(AppUpdateEvent) then) =
      _$AppUpdateEventCopyWithImpl<$Res, AppUpdateEvent>;
}

/// @nodoc
class _$AppUpdateEventCopyWithImpl<$Res, $Val extends AppUpdateEvent>
    implements $AppUpdateEventCopyWith<$Res> {
  _$AppUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AppUpdateEventCheckUpdateCopyWith<$Res> {
  factory _$$_AppUpdateEventCheckUpdateCopyWith(
          _$_AppUpdateEventCheckUpdate value,
          $Res Function(_$_AppUpdateEventCheckUpdate) then) =
      __$$_AppUpdateEventCheckUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AppUpdateEventCheckUpdateCopyWithImpl<$Res>
    extends _$AppUpdateEventCopyWithImpl<$Res, _$_AppUpdateEventCheckUpdate>
    implements _$$_AppUpdateEventCheckUpdateCopyWith<$Res> {
  __$$_AppUpdateEventCheckUpdateCopyWithImpl(
      _$_AppUpdateEventCheckUpdate _value,
      $Res Function(_$_AppUpdateEventCheckUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AppUpdateEventCheckUpdate implements _AppUpdateEventCheckUpdate {
  const _$_AppUpdateEventCheckUpdate();

  @override
  String toString() {
    return 'AppUpdateEvent.checkUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUpdateEventCheckUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function(bool needUpdate) updateApp,
  }) {
    return checkUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function(bool needUpdate)? updateApp,
  }) {
    return checkUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function(bool needUpdate)? updateApp,
    required TResult orElse(),
  }) {
    if (checkUpdate != null) {
      return checkUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUpdateEventCheckUpdate value) checkUpdate,
    required TResult Function(_AppUpdateEventUpdateApp value) updateApp,
  }) {
    return checkUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUpdateEventCheckUpdate value)? checkUpdate,
    TResult? Function(_AppUpdateEventUpdateApp value)? updateApp,
  }) {
    return checkUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUpdateEventCheckUpdate value)? checkUpdate,
    TResult Function(_AppUpdateEventUpdateApp value)? updateApp,
    required TResult orElse(),
  }) {
    if (checkUpdate != null) {
      return checkUpdate(this);
    }
    return orElse();
  }
}

abstract class _AppUpdateEventCheckUpdate implements AppUpdateEvent {
  const factory _AppUpdateEventCheckUpdate() = _$_AppUpdateEventCheckUpdate;
}

/// @nodoc
abstract class _$$_AppUpdateEventUpdateAppCopyWith<$Res> {
  factory _$$_AppUpdateEventUpdateAppCopyWith(_$_AppUpdateEventUpdateApp value,
          $Res Function(_$_AppUpdateEventUpdateApp) then) =
      __$$_AppUpdateEventUpdateAppCopyWithImpl<$Res>;
  @useResult
  $Res call({bool needUpdate});
}

/// @nodoc
class __$$_AppUpdateEventUpdateAppCopyWithImpl<$Res>
    extends _$AppUpdateEventCopyWithImpl<$Res, _$_AppUpdateEventUpdateApp>
    implements _$$_AppUpdateEventUpdateAppCopyWith<$Res> {
  __$$_AppUpdateEventUpdateAppCopyWithImpl(_$_AppUpdateEventUpdateApp _value,
      $Res Function(_$_AppUpdateEventUpdateApp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needUpdate = null,
  }) {
    return _then(_$_AppUpdateEventUpdateApp(
      needUpdate: null == needUpdate
          ? _value.needUpdate
          : needUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppUpdateEventUpdateApp implements _AppUpdateEventUpdateApp {
  const _$_AppUpdateEventUpdateApp({required this.needUpdate});

  @override
  final bool needUpdate;

  @override
  String toString() {
    return 'AppUpdateEvent.updateApp(needUpdate: $needUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUpdateEventUpdateApp &&
            (identical(other.needUpdate, needUpdate) ||
                other.needUpdate == needUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, needUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUpdateEventUpdateAppCopyWith<_$_AppUpdateEventUpdateApp>
      get copyWith =>
          __$$_AppUpdateEventUpdateAppCopyWithImpl<_$_AppUpdateEventUpdateApp>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function(bool needUpdate) updateApp,
  }) {
    return updateApp(needUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function(bool needUpdate)? updateApp,
  }) {
    return updateApp?.call(needUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function(bool needUpdate)? updateApp,
    required TResult orElse(),
  }) {
    if (updateApp != null) {
      return updateApp(needUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUpdateEventCheckUpdate value) checkUpdate,
    required TResult Function(_AppUpdateEventUpdateApp value) updateApp,
  }) {
    return updateApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUpdateEventCheckUpdate value)? checkUpdate,
    TResult? Function(_AppUpdateEventUpdateApp value)? updateApp,
  }) {
    return updateApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUpdateEventCheckUpdate value)? checkUpdate,
    TResult Function(_AppUpdateEventUpdateApp value)? updateApp,
    required TResult orElse(),
  }) {
    if (updateApp != null) {
      return updateApp(this);
    }
    return orElse();
  }
}

abstract class _AppUpdateEventUpdateApp implements AppUpdateEvent {
  const factory _AppUpdateEventUpdateApp({required final bool needUpdate}) =
      _$_AppUpdateEventUpdateApp;

  bool get needUpdate;
  @JsonKey(ignore: true)
  _$$_AppUpdateEventUpdateAppCopyWith<_$_AppUpdateEventUpdateApp>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppUpdateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool needUpdate) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool needUpdate)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool needUpdate)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUpdateStateInitial value) initial,
    required TResult Function(_AppUpdateStateLoading value) loading,
    required TResult Function(_AppUpdateStateLoaded value) loaded,
    required TResult Function(_AppUpdateStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUpdateStateInitial value)? initial,
    TResult? Function(_AppUpdateStateLoading value)? loading,
    TResult? Function(_AppUpdateStateLoaded value)? loaded,
    TResult? Function(_AppUpdateStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUpdateStateInitial value)? initial,
    TResult Function(_AppUpdateStateLoading value)? loading,
    TResult Function(_AppUpdateStateLoaded value)? loaded,
    TResult Function(_AppUpdateStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUpdateStateCopyWith<$Res> {
  factory $AppUpdateStateCopyWith(
          AppUpdateState value, $Res Function(AppUpdateState) then) =
      _$AppUpdateStateCopyWithImpl<$Res, AppUpdateState>;
}

/// @nodoc
class _$AppUpdateStateCopyWithImpl<$Res, $Val extends AppUpdateState>
    implements $AppUpdateStateCopyWith<$Res> {
  _$AppUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AppUpdateStateInitialCopyWith<$Res> {
  factory _$$_AppUpdateStateInitialCopyWith(_$_AppUpdateStateInitial value,
          $Res Function(_$_AppUpdateStateInitial) then) =
      __$$_AppUpdateStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AppUpdateStateInitialCopyWithImpl<$Res>
    extends _$AppUpdateStateCopyWithImpl<$Res, _$_AppUpdateStateInitial>
    implements _$$_AppUpdateStateInitialCopyWith<$Res> {
  __$$_AppUpdateStateInitialCopyWithImpl(_$_AppUpdateStateInitial _value,
      $Res Function(_$_AppUpdateStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AppUpdateStateInitial implements _AppUpdateStateInitial {
  const _$_AppUpdateStateInitial();

  @override
  String toString() {
    return 'AppUpdateState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AppUpdateStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool needUpdate) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool needUpdate)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool needUpdate)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUpdateStateInitial value) initial,
    required TResult Function(_AppUpdateStateLoading value) loading,
    required TResult Function(_AppUpdateStateLoaded value) loaded,
    required TResult Function(_AppUpdateStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUpdateStateInitial value)? initial,
    TResult? Function(_AppUpdateStateLoading value)? loading,
    TResult? Function(_AppUpdateStateLoaded value)? loaded,
    TResult? Function(_AppUpdateStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUpdateStateInitial value)? initial,
    TResult Function(_AppUpdateStateLoading value)? loading,
    TResult Function(_AppUpdateStateLoaded value)? loaded,
    TResult Function(_AppUpdateStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AppUpdateStateInitial implements AppUpdateState {
  const factory _AppUpdateStateInitial() = _$_AppUpdateStateInitial;
}

/// @nodoc
abstract class _$$_AppUpdateStateLoadingCopyWith<$Res> {
  factory _$$_AppUpdateStateLoadingCopyWith(_$_AppUpdateStateLoading value,
          $Res Function(_$_AppUpdateStateLoading) then) =
      __$$_AppUpdateStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AppUpdateStateLoadingCopyWithImpl<$Res>
    extends _$AppUpdateStateCopyWithImpl<$Res, _$_AppUpdateStateLoading>
    implements _$$_AppUpdateStateLoadingCopyWith<$Res> {
  __$$_AppUpdateStateLoadingCopyWithImpl(_$_AppUpdateStateLoading _value,
      $Res Function(_$_AppUpdateStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AppUpdateStateLoading implements _AppUpdateStateLoading {
  const _$_AppUpdateStateLoading();

  @override
  String toString() {
    return 'AppUpdateState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AppUpdateStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool needUpdate) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool needUpdate)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool needUpdate)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUpdateStateInitial value) initial,
    required TResult Function(_AppUpdateStateLoading value) loading,
    required TResult Function(_AppUpdateStateLoaded value) loaded,
    required TResult Function(_AppUpdateStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUpdateStateInitial value)? initial,
    TResult? Function(_AppUpdateStateLoading value)? loading,
    TResult? Function(_AppUpdateStateLoaded value)? loaded,
    TResult? Function(_AppUpdateStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUpdateStateInitial value)? initial,
    TResult Function(_AppUpdateStateLoading value)? loading,
    TResult Function(_AppUpdateStateLoaded value)? loaded,
    TResult Function(_AppUpdateStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AppUpdateStateLoading implements AppUpdateState {
  const factory _AppUpdateStateLoading() = _$_AppUpdateStateLoading;
}

/// @nodoc
abstract class _$$_AppUpdateStateLoadedCopyWith<$Res> {
  factory _$$_AppUpdateStateLoadedCopyWith(_$_AppUpdateStateLoaded value,
          $Res Function(_$_AppUpdateStateLoaded) then) =
      __$$_AppUpdateStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool needUpdate});
}

/// @nodoc
class __$$_AppUpdateStateLoadedCopyWithImpl<$Res>
    extends _$AppUpdateStateCopyWithImpl<$Res, _$_AppUpdateStateLoaded>
    implements _$$_AppUpdateStateLoadedCopyWith<$Res> {
  __$$_AppUpdateStateLoadedCopyWithImpl(_$_AppUpdateStateLoaded _value,
      $Res Function(_$_AppUpdateStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needUpdate = null,
  }) {
    return _then(_$_AppUpdateStateLoaded(
      needUpdate: null == needUpdate
          ? _value.needUpdate
          : needUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppUpdateStateLoaded implements _AppUpdateStateLoaded {
  const _$_AppUpdateStateLoaded({required this.needUpdate});

  @override
  final bool needUpdate;

  @override
  String toString() {
    return 'AppUpdateState.loaded(needUpdate: $needUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUpdateStateLoaded &&
            (identical(other.needUpdate, needUpdate) ||
                other.needUpdate == needUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, needUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUpdateStateLoadedCopyWith<_$_AppUpdateStateLoaded> get copyWith =>
      __$$_AppUpdateStateLoadedCopyWithImpl<_$_AppUpdateStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool needUpdate) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(needUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool needUpdate)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(needUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool needUpdate)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(needUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUpdateStateInitial value) initial,
    required TResult Function(_AppUpdateStateLoading value) loading,
    required TResult Function(_AppUpdateStateLoaded value) loaded,
    required TResult Function(_AppUpdateStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUpdateStateInitial value)? initial,
    TResult? Function(_AppUpdateStateLoading value)? loading,
    TResult? Function(_AppUpdateStateLoaded value)? loaded,
    TResult? Function(_AppUpdateStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUpdateStateInitial value)? initial,
    TResult Function(_AppUpdateStateLoading value)? loading,
    TResult Function(_AppUpdateStateLoaded value)? loaded,
    TResult Function(_AppUpdateStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AppUpdateStateLoaded implements AppUpdateState {
  const factory _AppUpdateStateLoaded({required final bool needUpdate}) =
      _$_AppUpdateStateLoaded;

  bool get needUpdate;
  @JsonKey(ignore: true)
  _$$_AppUpdateStateLoadedCopyWith<_$_AppUpdateStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AppUpdateStateErrorCopyWith<$Res> {
  factory _$$_AppUpdateStateErrorCopyWith(_$_AppUpdateStateError value,
          $Res Function(_$_AppUpdateStateError) then) =
      __$$_AppUpdateStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_AppUpdateStateErrorCopyWithImpl<$Res>
    extends _$AppUpdateStateCopyWithImpl<$Res, _$_AppUpdateStateError>
    implements _$$_AppUpdateStateErrorCopyWith<$Res> {
  __$$_AppUpdateStateErrorCopyWithImpl(_$_AppUpdateStateError _value,
      $Res Function(_$_AppUpdateStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AppUpdateStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppUpdateStateError implements _AppUpdateStateError {
  const _$_AppUpdateStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AppUpdateState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUpdateStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUpdateStateErrorCopyWith<_$_AppUpdateStateError> get copyWith =>
      __$$_AppUpdateStateErrorCopyWithImpl<_$_AppUpdateStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool needUpdate) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool needUpdate)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool needUpdate)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUpdateStateInitial value) initial,
    required TResult Function(_AppUpdateStateLoading value) loading,
    required TResult Function(_AppUpdateStateLoaded value) loaded,
    required TResult Function(_AppUpdateStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppUpdateStateInitial value)? initial,
    TResult? Function(_AppUpdateStateLoading value)? loading,
    TResult? Function(_AppUpdateStateLoaded value)? loaded,
    TResult? Function(_AppUpdateStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUpdateStateInitial value)? initial,
    TResult Function(_AppUpdateStateLoading value)? loading,
    TResult Function(_AppUpdateStateLoaded value)? loaded,
    TResult Function(_AppUpdateStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AppUpdateStateError implements AppUpdateState {
  const factory _AppUpdateStateError({required final String error}) =
      _$_AppUpdateStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_AppUpdateStateErrorCopyWith<_$_AppUpdateStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
