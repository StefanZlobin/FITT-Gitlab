// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_avatar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAvatarEvent {
  User get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) uploadingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? uploadingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? uploadingUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAvatarEventUploadingUser value)
        uploadingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAvatarEventUploadingUser value)? uploadingUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAvatarEventUploadingUser value)? uploadingUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAvatarEventCopyWith<UserAvatarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAvatarEventCopyWith<$Res> {
  factory $UserAvatarEventCopyWith(
          UserAvatarEvent value, $Res Function(UserAvatarEvent) then) =
      _$UserAvatarEventCopyWithImpl<$Res, UserAvatarEvent>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserAvatarEventCopyWithImpl<$Res, $Val extends UserAvatarEvent>
    implements $UserAvatarEventCopyWith<$Res> {
  _$UserAvatarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserAvatarEventUploadingUserCopyWith<$Res>
    implements $UserAvatarEventCopyWith<$Res> {
  factory _$$_UserAvatarEventUploadingUserCopyWith(
          _$_UserAvatarEventUploadingUser value,
          $Res Function(_$_UserAvatarEventUploadingUser) then) =
      __$$_UserAvatarEventUploadingUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserAvatarEventUploadingUserCopyWithImpl<$Res>
    extends _$UserAvatarEventCopyWithImpl<$Res, _$_UserAvatarEventUploadingUser>
    implements _$$_UserAvatarEventUploadingUserCopyWith<$Res> {
  __$$_UserAvatarEventUploadingUserCopyWithImpl(
      _$_UserAvatarEventUploadingUser _value,
      $Res Function(_$_UserAvatarEventUploadingUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_UserAvatarEventUploadingUser(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_UserAvatarEventUploadingUser implements _UserAvatarEventUploadingUser {
  const _$_UserAvatarEventUploadingUser({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'UserAvatarEvent.uploadingUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAvatarEventUploadingUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAvatarEventUploadingUserCopyWith<_$_UserAvatarEventUploadingUser>
      get copyWith => __$$_UserAvatarEventUploadingUserCopyWithImpl<
          _$_UserAvatarEventUploadingUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) uploadingUser,
  }) {
    return uploadingUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? uploadingUser,
  }) {
    return uploadingUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? uploadingUser,
    required TResult orElse(),
  }) {
    if (uploadingUser != null) {
      return uploadingUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAvatarEventUploadingUser value)
        uploadingUser,
  }) {
    return uploadingUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAvatarEventUploadingUser value)? uploadingUser,
  }) {
    return uploadingUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAvatarEventUploadingUser value)? uploadingUser,
    required TResult orElse(),
  }) {
    if (uploadingUser != null) {
      return uploadingUser(this);
    }
    return orElse();
  }
}

abstract class _UserAvatarEventUploadingUser implements UserAvatarEvent {
  const factory _UserAvatarEventUploadingUser({required final User user}) =
      _$_UserAvatarEventUploadingUser;

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_UserAvatarEventUploadingUserCopyWith<_$_UserAvatarEventUploadingUser>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserAvatarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAvatarStateInitial value) initial,
    required TResult Function(_UserAvatarStateLoaded value) loaded,
    required TResult Function(_UserAvatarStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAvatarStateInitial value)? initial,
    TResult? Function(_UserAvatarStateLoaded value)? loaded,
    TResult? Function(_UserAvatarStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAvatarStateInitial value)? initial,
    TResult Function(_UserAvatarStateLoaded value)? loaded,
    TResult Function(_UserAvatarStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAvatarStateCopyWith<$Res> {
  factory $UserAvatarStateCopyWith(
          UserAvatarState value, $Res Function(UserAvatarState) then) =
      _$UserAvatarStateCopyWithImpl<$Res, UserAvatarState>;
}

/// @nodoc
class _$UserAvatarStateCopyWithImpl<$Res, $Val extends UserAvatarState>
    implements $UserAvatarStateCopyWith<$Res> {
  _$UserAvatarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserAvatarStateInitialCopyWith<$Res> {
  factory _$$_UserAvatarStateInitialCopyWith(_$_UserAvatarStateInitial value,
          $Res Function(_$_UserAvatarStateInitial) then) =
      __$$_UserAvatarStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserAvatarStateInitialCopyWithImpl<$Res>
    extends _$UserAvatarStateCopyWithImpl<$Res, _$_UserAvatarStateInitial>
    implements _$$_UserAvatarStateInitialCopyWith<$Res> {
  __$$_UserAvatarStateInitialCopyWithImpl(_$_UserAvatarStateInitial _value,
      $Res Function(_$_UserAvatarStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserAvatarStateInitial implements _UserAvatarStateInitial {
  const _$_UserAvatarStateInitial();

  @override
  String toString() {
    return 'UserAvatarState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAvatarStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loaded,
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
    required TResult Function(_UserAvatarStateInitial value) initial,
    required TResult Function(_UserAvatarStateLoaded value) loaded,
    required TResult Function(_UserAvatarStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAvatarStateInitial value)? initial,
    TResult? Function(_UserAvatarStateLoaded value)? loaded,
    TResult? Function(_UserAvatarStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAvatarStateInitial value)? initial,
    TResult Function(_UserAvatarStateLoaded value)? loaded,
    TResult Function(_UserAvatarStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserAvatarStateInitial implements UserAvatarState {
  const factory _UserAvatarStateInitial() = _$_UserAvatarStateInitial;
}

/// @nodoc
abstract class _$$_UserAvatarStateLoadedCopyWith<$Res> {
  factory _$$_UserAvatarStateLoadedCopyWith(_$_UserAvatarStateLoaded value,
          $Res Function(_$_UserAvatarStateLoaded) then) =
      __$$_UserAvatarStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserAvatarStateLoadedCopyWithImpl<$Res>
    extends _$UserAvatarStateCopyWithImpl<$Res, _$_UserAvatarStateLoaded>
    implements _$$_UserAvatarStateLoadedCopyWith<$Res> {
  __$$_UserAvatarStateLoadedCopyWithImpl(_$_UserAvatarStateLoaded _value,
      $Res Function(_$_UserAvatarStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_UserAvatarStateLoaded(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_UserAvatarStateLoaded implements _UserAvatarStateLoaded {
  const _$_UserAvatarStateLoaded({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'UserAvatarState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAvatarStateLoaded &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAvatarStateLoadedCopyWith<_$_UserAvatarStateLoaded> get copyWith =>
      __$$_UserAvatarStateLoadedCopyWithImpl<_$_UserAvatarStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAvatarStateInitial value) initial,
    required TResult Function(_UserAvatarStateLoaded value) loaded,
    required TResult Function(_UserAvatarStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAvatarStateInitial value)? initial,
    TResult? Function(_UserAvatarStateLoaded value)? loaded,
    TResult? Function(_UserAvatarStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAvatarStateInitial value)? initial,
    TResult Function(_UserAvatarStateLoaded value)? loaded,
    TResult Function(_UserAvatarStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _UserAvatarStateLoaded implements UserAvatarState {
  const factory _UserAvatarStateLoaded({required final User user}) =
      _$_UserAvatarStateLoaded;

  User get user;
  @JsonKey(ignore: true)
  _$$_UserAvatarStateLoadedCopyWith<_$_UserAvatarStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserAvatarStateErrorCopyWith<$Res> {
  factory _$$_UserAvatarStateErrorCopyWith(_$_UserAvatarStateError value,
          $Res Function(_$_UserAvatarStateError) then) =
      __$$_UserAvatarStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_UserAvatarStateErrorCopyWithImpl<$Res>
    extends _$UserAvatarStateCopyWithImpl<$Res, _$_UserAvatarStateError>
    implements _$$_UserAvatarStateErrorCopyWith<$Res> {
  __$$_UserAvatarStateErrorCopyWithImpl(_$_UserAvatarStateError _value,
      $Res Function(_$_UserAvatarStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_UserAvatarStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserAvatarStateError implements _UserAvatarStateError {
  const _$_UserAvatarStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UserAvatarState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAvatarStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAvatarStateErrorCopyWith<_$_UserAvatarStateError> get copyWith =>
      __$$_UserAvatarStateErrorCopyWithImpl<_$_UserAvatarStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loaded,
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
    required TResult Function(_UserAvatarStateInitial value) initial,
    required TResult Function(_UserAvatarStateLoaded value) loaded,
    required TResult Function(_UserAvatarStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAvatarStateInitial value)? initial,
    TResult? Function(_UserAvatarStateLoaded value)? loaded,
    TResult? Function(_UserAvatarStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAvatarStateInitial value)? initial,
    TResult Function(_UserAvatarStateLoaded value)? loaded,
    TResult Function(_UserAvatarStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UserAvatarStateError implements UserAvatarState {
  const factory _UserAvatarStateError({required final String error}) =
      _$_UserAvatarStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_UserAvatarStateErrorCopyWith<_$_UserAvatarStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
