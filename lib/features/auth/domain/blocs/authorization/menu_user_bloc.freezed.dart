// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenuUserEvent {
  bool get isUserRoleStaff => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isUserRoleStaff) definitionMenuItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isUserRoleStaff)? definitionMenuItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isUserRoleStaff)? definitionMenuItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MenuUserEventDefinitionMenuItem value)
        definitionMenuItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MenuUserEventDefinitionMenuItem value)?
        definitionMenuItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MenuUserEventDefinitionMenuItem value)?
        definitionMenuItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuUserEventCopyWith<MenuUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuUserEventCopyWith<$Res> {
  factory $MenuUserEventCopyWith(
          MenuUserEvent value, $Res Function(MenuUserEvent) then) =
      _$MenuUserEventCopyWithImpl<$Res, MenuUserEvent>;
  @useResult
  $Res call({bool isUserRoleStaff});
}

/// @nodoc
class _$MenuUserEventCopyWithImpl<$Res, $Val extends MenuUserEvent>
    implements $MenuUserEventCopyWith<$Res> {
  _$MenuUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserRoleStaff = null,
  }) {
    return _then(_value.copyWith(
      isUserRoleStaff: null == isUserRoleStaff
          ? _value.isUserRoleStaff
          : isUserRoleStaff // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuUserEventDefinitionMenuItemCopyWith<$Res>
    implements $MenuUserEventCopyWith<$Res> {
  factory _$$_MenuUserEventDefinitionMenuItemCopyWith(
          _$_MenuUserEventDefinitionMenuItem value,
          $Res Function(_$_MenuUserEventDefinitionMenuItem) then) =
      __$$_MenuUserEventDefinitionMenuItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isUserRoleStaff});
}

/// @nodoc
class __$$_MenuUserEventDefinitionMenuItemCopyWithImpl<$Res>
    extends _$MenuUserEventCopyWithImpl<$Res,
        _$_MenuUserEventDefinitionMenuItem>
    implements _$$_MenuUserEventDefinitionMenuItemCopyWith<$Res> {
  __$$_MenuUserEventDefinitionMenuItemCopyWithImpl(
      _$_MenuUserEventDefinitionMenuItem _value,
      $Res Function(_$_MenuUserEventDefinitionMenuItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserRoleStaff = null,
  }) {
    return _then(_$_MenuUserEventDefinitionMenuItem(
      isUserRoleStaff: null == isUserRoleStaff
          ? _value.isUserRoleStaff
          : isUserRoleStaff // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MenuUserEventDefinitionMenuItem
    implements _MenuUserEventDefinitionMenuItem {
  const _$_MenuUserEventDefinitionMenuItem({required this.isUserRoleStaff});

  @override
  final bool isUserRoleStaff;

  @override
  String toString() {
    return 'MenuUserEvent.definitionMenuItem(isUserRoleStaff: $isUserRoleStaff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuUserEventDefinitionMenuItem &&
            (identical(other.isUserRoleStaff, isUserRoleStaff) ||
                other.isUserRoleStaff == isUserRoleStaff));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUserRoleStaff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuUserEventDefinitionMenuItemCopyWith<
          _$_MenuUserEventDefinitionMenuItem>
      get copyWith => __$$_MenuUserEventDefinitionMenuItemCopyWithImpl<
          _$_MenuUserEventDefinitionMenuItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isUserRoleStaff) definitionMenuItem,
  }) {
    return definitionMenuItem(isUserRoleStaff);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isUserRoleStaff)? definitionMenuItem,
  }) {
    return definitionMenuItem?.call(isUserRoleStaff);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isUserRoleStaff)? definitionMenuItem,
    required TResult orElse(),
  }) {
    if (definitionMenuItem != null) {
      return definitionMenuItem(isUserRoleStaff);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MenuUserEventDefinitionMenuItem value)
        definitionMenuItem,
  }) {
    return definitionMenuItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MenuUserEventDefinitionMenuItem value)?
        definitionMenuItem,
  }) {
    return definitionMenuItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MenuUserEventDefinitionMenuItem value)?
        definitionMenuItem,
    required TResult orElse(),
  }) {
    if (definitionMenuItem != null) {
      return definitionMenuItem(this);
    }
    return orElse();
  }
}

abstract class _MenuUserEventDefinitionMenuItem implements MenuUserEvent {
  const factory _MenuUserEventDefinitionMenuItem(
          {required final bool isUserRoleStaff}) =
      _$_MenuUserEventDefinitionMenuItem;

  @override
  bool get isUserRoleStaff;
  @override
  @JsonKey(ignore: true)
  _$$_MenuUserEventDefinitionMenuItemCopyWith<
          _$_MenuUserEventDefinitionMenuItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isUserRoleStaff) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isUserRoleStaff)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isUserRoleStaff)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MenuUserStateInitial value) initial,
    required TResult Function(_MenuUserStateLoaded value) loaded,
    required TResult Function(_MenuUserStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MenuUserStateInitial value)? initial,
    TResult? Function(_MenuUserStateLoaded value)? loaded,
    TResult? Function(_MenuUserStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MenuUserStateInitial value)? initial,
    TResult Function(_MenuUserStateLoaded value)? loaded,
    TResult Function(_MenuUserStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuUserStateCopyWith<$Res> {
  factory $MenuUserStateCopyWith(
          MenuUserState value, $Res Function(MenuUserState) then) =
      _$MenuUserStateCopyWithImpl<$Res, MenuUserState>;
}

/// @nodoc
class _$MenuUserStateCopyWithImpl<$Res, $Val extends MenuUserState>
    implements $MenuUserStateCopyWith<$Res> {
  _$MenuUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MenuUserStateInitialCopyWith<$Res> {
  factory _$$_MenuUserStateInitialCopyWith(_$_MenuUserStateInitial value,
          $Res Function(_$_MenuUserStateInitial) then) =
      __$$_MenuUserStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MenuUserStateInitialCopyWithImpl<$Res>
    extends _$MenuUserStateCopyWithImpl<$Res, _$_MenuUserStateInitial>
    implements _$$_MenuUserStateInitialCopyWith<$Res> {
  __$$_MenuUserStateInitialCopyWithImpl(_$_MenuUserStateInitial _value,
      $Res Function(_$_MenuUserStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MenuUserStateInitial implements _MenuUserStateInitial {
  const _$_MenuUserStateInitial();

  @override
  String toString() {
    return 'MenuUserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MenuUserStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isUserRoleStaff) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isUserRoleStaff)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isUserRoleStaff)? loaded,
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
    required TResult Function(_MenuUserStateInitial value) initial,
    required TResult Function(_MenuUserStateLoaded value) loaded,
    required TResult Function(_MenuUserStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MenuUserStateInitial value)? initial,
    TResult? Function(_MenuUserStateLoaded value)? loaded,
    TResult? Function(_MenuUserStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MenuUserStateInitial value)? initial,
    TResult Function(_MenuUserStateLoaded value)? loaded,
    TResult Function(_MenuUserStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MenuUserStateInitial implements MenuUserState {
  const factory _MenuUserStateInitial() = _$_MenuUserStateInitial;
}

/// @nodoc
abstract class _$$_MenuUserStateLoadedCopyWith<$Res> {
  factory _$$_MenuUserStateLoadedCopyWith(_$_MenuUserStateLoaded value,
          $Res Function(_$_MenuUserStateLoaded) then) =
      __$$_MenuUserStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isUserRoleStaff});
}

/// @nodoc
class __$$_MenuUserStateLoadedCopyWithImpl<$Res>
    extends _$MenuUserStateCopyWithImpl<$Res, _$_MenuUserStateLoaded>
    implements _$$_MenuUserStateLoadedCopyWith<$Res> {
  __$$_MenuUserStateLoadedCopyWithImpl(_$_MenuUserStateLoaded _value,
      $Res Function(_$_MenuUserStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserRoleStaff = null,
  }) {
    return _then(_$_MenuUserStateLoaded(
      isUserRoleStaff: null == isUserRoleStaff
          ? _value.isUserRoleStaff
          : isUserRoleStaff // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MenuUserStateLoaded implements _MenuUserStateLoaded {
  const _$_MenuUserStateLoaded({required this.isUserRoleStaff});

  @override
  final bool isUserRoleStaff;

  @override
  String toString() {
    return 'MenuUserState.loaded(isUserRoleStaff: $isUserRoleStaff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuUserStateLoaded &&
            (identical(other.isUserRoleStaff, isUserRoleStaff) ||
                other.isUserRoleStaff == isUserRoleStaff));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUserRoleStaff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuUserStateLoadedCopyWith<_$_MenuUserStateLoaded> get copyWith =>
      __$$_MenuUserStateLoadedCopyWithImpl<_$_MenuUserStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isUserRoleStaff) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(isUserRoleStaff);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isUserRoleStaff)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(isUserRoleStaff);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isUserRoleStaff)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(isUserRoleStaff);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MenuUserStateInitial value) initial,
    required TResult Function(_MenuUserStateLoaded value) loaded,
    required TResult Function(_MenuUserStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MenuUserStateInitial value)? initial,
    TResult? Function(_MenuUserStateLoaded value)? loaded,
    TResult? Function(_MenuUserStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MenuUserStateInitial value)? initial,
    TResult Function(_MenuUserStateLoaded value)? loaded,
    TResult Function(_MenuUserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _MenuUserStateLoaded implements MenuUserState {
  const factory _MenuUserStateLoaded({required final bool isUserRoleStaff}) =
      _$_MenuUserStateLoaded;

  bool get isUserRoleStaff;
  @JsonKey(ignore: true)
  _$$_MenuUserStateLoadedCopyWith<_$_MenuUserStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MenuUserStateErrorCopyWith<$Res> {
  factory _$$_MenuUserStateErrorCopyWith(_$_MenuUserStateError value,
          $Res Function(_$_MenuUserStateError) then) =
      __$$_MenuUserStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_MenuUserStateErrorCopyWithImpl<$Res>
    extends _$MenuUserStateCopyWithImpl<$Res, _$_MenuUserStateError>
    implements _$$_MenuUserStateErrorCopyWith<$Res> {
  __$$_MenuUserStateErrorCopyWithImpl(
      _$_MenuUserStateError _value, $Res Function(_$_MenuUserStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_MenuUserStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MenuUserStateError implements _MenuUserStateError {
  const _$_MenuUserStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MenuUserState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuUserStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuUserStateErrorCopyWith<_$_MenuUserStateError> get copyWith =>
      __$$_MenuUserStateErrorCopyWithImpl<_$_MenuUserStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isUserRoleStaff) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isUserRoleStaff)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isUserRoleStaff)? loaded,
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
    required TResult Function(_MenuUserStateInitial value) initial,
    required TResult Function(_MenuUserStateLoaded value) loaded,
    required TResult Function(_MenuUserStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MenuUserStateInitial value)? initial,
    TResult? Function(_MenuUserStateLoaded value)? loaded,
    TResult? Function(_MenuUserStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MenuUserStateInitial value)? initial,
    TResult Function(_MenuUserStateLoaded value)? loaded,
    TResult Function(_MenuUserStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MenuUserStateError implements MenuUserState {
  const factory _MenuUserStateError({required final String error}) =
      _$_MenuUserStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_MenuUserStateErrorCopyWith<_$_MenuUserStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
