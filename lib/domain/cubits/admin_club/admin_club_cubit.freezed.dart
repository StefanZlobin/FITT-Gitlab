// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_club_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminClubState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AdminClub adminClub) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AdminClub adminClub)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AdminClub adminClub)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminClubStateInitial value) initial,
    required TResult Function(_AdminClubStateLoaded value) loaded,
    required TResult Function(_AdminClubStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminClubStateInitial value)? initial,
    TResult? Function(_AdminClubStateLoaded value)? loaded,
    TResult? Function(_AdminClubStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminClubStateInitial value)? initial,
    TResult Function(_AdminClubStateLoaded value)? loaded,
    TResult Function(_AdminClubStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminClubStateCopyWith<$Res> {
  factory $AdminClubStateCopyWith(
          AdminClubState value, $Res Function(AdminClubState) then) =
      _$AdminClubStateCopyWithImpl<$Res, AdminClubState>;
}

/// @nodoc
class _$AdminClubStateCopyWithImpl<$Res, $Val extends AdminClubState>
    implements $AdminClubStateCopyWith<$Res> {
  _$AdminClubStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AdminClubStateInitialCopyWith<$Res> {
  factory _$$_AdminClubStateInitialCopyWith(_$_AdminClubStateInitial value,
          $Res Function(_$_AdminClubStateInitial) then) =
      __$$_AdminClubStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AdminClubStateInitialCopyWithImpl<$Res>
    extends _$AdminClubStateCopyWithImpl<$Res, _$_AdminClubStateInitial>
    implements _$$_AdminClubStateInitialCopyWith<$Res> {
  __$$_AdminClubStateInitialCopyWithImpl(_$_AdminClubStateInitial _value,
      $Res Function(_$_AdminClubStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AdminClubStateInitial implements _AdminClubStateInitial {
  const _$_AdminClubStateInitial();

  @override
  String toString() {
    return 'AdminClubState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AdminClubStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AdminClub adminClub) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AdminClub adminClub)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AdminClub adminClub)? loaded,
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
    required TResult Function(_AdminClubStateInitial value) initial,
    required TResult Function(_AdminClubStateLoaded value) loaded,
    required TResult Function(_AdminClubStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminClubStateInitial value)? initial,
    TResult? Function(_AdminClubStateLoaded value)? loaded,
    TResult? Function(_AdminClubStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminClubStateInitial value)? initial,
    TResult Function(_AdminClubStateLoaded value)? loaded,
    TResult Function(_AdminClubStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AdminClubStateInitial implements AdminClubState {
  const factory _AdminClubStateInitial() = _$_AdminClubStateInitial;
}

/// @nodoc
abstract class _$$_AdminClubStateLoadedCopyWith<$Res> {
  factory _$$_AdminClubStateLoadedCopyWith(_$_AdminClubStateLoaded value,
          $Res Function(_$_AdminClubStateLoaded) then) =
      __$$_AdminClubStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({AdminClub adminClub});

  $AdminClubCopyWith<$Res> get adminClub;
}

/// @nodoc
class __$$_AdminClubStateLoadedCopyWithImpl<$Res>
    extends _$AdminClubStateCopyWithImpl<$Res, _$_AdminClubStateLoaded>
    implements _$$_AdminClubStateLoadedCopyWith<$Res> {
  __$$_AdminClubStateLoadedCopyWithImpl(_$_AdminClubStateLoaded _value,
      $Res Function(_$_AdminClubStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminClub = null,
  }) {
    return _then(_$_AdminClubStateLoaded(
      adminClub: null == adminClub
          ? _value.adminClub
          : adminClub // ignore: cast_nullable_to_non_nullable
              as AdminClub,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AdminClubCopyWith<$Res> get adminClub {
    return $AdminClubCopyWith<$Res>(_value.adminClub, (value) {
      return _then(_value.copyWith(adminClub: value));
    });
  }
}

/// @nodoc

class _$_AdminClubStateLoaded implements _AdminClubStateLoaded {
  const _$_AdminClubStateLoaded({required this.adminClub});

  @override
  final AdminClub adminClub;

  @override
  String toString() {
    return 'AdminClubState.loaded(adminClub: $adminClub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminClubStateLoaded &&
            (identical(other.adminClub, adminClub) ||
                other.adminClub == adminClub));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adminClub);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminClubStateLoadedCopyWith<_$_AdminClubStateLoaded> get copyWith =>
      __$$_AdminClubStateLoadedCopyWithImpl<_$_AdminClubStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AdminClub adminClub) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(adminClub);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AdminClub adminClub)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(adminClub);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AdminClub adminClub)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(adminClub);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminClubStateInitial value) initial,
    required TResult Function(_AdminClubStateLoaded value) loaded,
    required TResult Function(_AdminClubStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminClubStateInitial value)? initial,
    TResult? Function(_AdminClubStateLoaded value)? loaded,
    TResult? Function(_AdminClubStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminClubStateInitial value)? initial,
    TResult Function(_AdminClubStateLoaded value)? loaded,
    TResult Function(_AdminClubStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AdminClubStateLoaded implements AdminClubState {
  const factory _AdminClubStateLoaded({required final AdminClub adminClub}) =
      _$_AdminClubStateLoaded;

  AdminClub get adminClub;
  @JsonKey(ignore: true)
  _$$_AdminClubStateLoadedCopyWith<_$_AdminClubStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AdminClubStateErrorCopyWith<$Res> {
  factory _$$_AdminClubStateErrorCopyWith(_$_AdminClubStateError value,
          $Res Function(_$_AdminClubStateError) then) =
      __$$_AdminClubStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_AdminClubStateErrorCopyWithImpl<$Res>
    extends _$AdminClubStateCopyWithImpl<$Res, _$_AdminClubStateError>
    implements _$$_AdminClubStateErrorCopyWith<$Res> {
  __$$_AdminClubStateErrorCopyWithImpl(_$_AdminClubStateError _value,
      $Res Function(_$_AdminClubStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AdminClubStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AdminClubStateError implements _AdminClubStateError {
  const _$_AdminClubStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AdminClubState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminClubStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminClubStateErrorCopyWith<_$_AdminClubStateError> get copyWith =>
      __$$_AdminClubStateErrorCopyWithImpl<_$_AdminClubStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AdminClub adminClub) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AdminClub adminClub)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AdminClub adminClub)? loaded,
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
    required TResult Function(_AdminClubStateInitial value) initial,
    required TResult Function(_AdminClubStateLoaded value) loaded,
    required TResult Function(_AdminClubStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminClubStateInitial value)? initial,
    TResult? Function(_AdminClubStateLoaded value)? loaded,
    TResult? Function(_AdminClubStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminClubStateInitial value)? initial,
    TResult Function(_AdminClubStateLoaded value)? loaded,
    TResult Function(_AdminClubStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AdminClubStateError implements AdminClubState {
  const factory _AdminClubStateError({required final String error}) =
      _$_AdminClubStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_AdminClubStateErrorCopyWith<_$_AdminClubStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
