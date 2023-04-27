// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenuEvent {
  bool get isUserEmpty => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isUserEmpty) definitionMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isUserEmpty)? definitionMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isUserEmpty)? definitionMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MenuEventDefinitionMenu value) definitionMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MenuEventDefinitionMenu value)? definitionMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MenuEventDefinitionMenu value)? definitionMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuEventCopyWith<MenuEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res, MenuEvent>;
  @useResult
  $Res call({bool isUserEmpty});
}

/// @nodoc
class _$MenuEventCopyWithImpl<$Res, $Val extends MenuEvent>
    implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserEmpty = null,
  }) {
    return _then(_value.copyWith(
      isUserEmpty: null == isUserEmpty
          ? _value.isUserEmpty
          : isUserEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuEventDefinitionMenuCopyWith<$Res>
    implements $MenuEventCopyWith<$Res> {
  factory _$$_MenuEventDefinitionMenuCopyWith(_$_MenuEventDefinitionMenu value,
          $Res Function(_$_MenuEventDefinitionMenu) then) =
      __$$_MenuEventDefinitionMenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isUserEmpty});
}

/// @nodoc
class __$$_MenuEventDefinitionMenuCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$_MenuEventDefinitionMenu>
    implements _$$_MenuEventDefinitionMenuCopyWith<$Res> {
  __$$_MenuEventDefinitionMenuCopyWithImpl(_$_MenuEventDefinitionMenu _value,
      $Res Function(_$_MenuEventDefinitionMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserEmpty = null,
  }) {
    return _then(_$_MenuEventDefinitionMenu(
      isUserEmpty: null == isUserEmpty
          ? _value.isUserEmpty
          : isUserEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MenuEventDefinitionMenu implements _MenuEventDefinitionMenu {
  const _$_MenuEventDefinitionMenu({required this.isUserEmpty});

  @override
  final bool isUserEmpty;

  @override
  String toString() {
    return 'MenuEvent.definitionMenu(isUserEmpty: $isUserEmpty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuEventDefinitionMenu &&
            (identical(other.isUserEmpty, isUserEmpty) ||
                other.isUserEmpty == isUserEmpty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUserEmpty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuEventDefinitionMenuCopyWith<_$_MenuEventDefinitionMenu>
      get copyWith =>
          __$$_MenuEventDefinitionMenuCopyWithImpl<_$_MenuEventDefinitionMenu>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isUserEmpty) definitionMenu,
  }) {
    return definitionMenu(isUserEmpty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isUserEmpty)? definitionMenu,
  }) {
    return definitionMenu?.call(isUserEmpty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isUserEmpty)? definitionMenu,
    required TResult orElse(),
  }) {
    if (definitionMenu != null) {
      return definitionMenu(isUserEmpty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MenuEventDefinitionMenu value) definitionMenu,
  }) {
    return definitionMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MenuEventDefinitionMenu value)? definitionMenu,
  }) {
    return definitionMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MenuEventDefinitionMenu value)? definitionMenu,
    required TResult orElse(),
  }) {
    if (definitionMenu != null) {
      return definitionMenu(this);
    }
    return orElse();
  }
}

abstract class _MenuEventDefinitionMenu implements MenuEvent {
  const factory _MenuEventDefinitionMenu({required final bool isUserEmpty}) =
      _$_MenuEventDefinitionMenu;

  @override
  bool get isUserEmpty;
  @override
  @JsonKey(ignore: true)
  _$$_MenuEventDefinitionMenuCopyWith<_$_MenuEventDefinitionMenu>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MenuStateInitial value) initial,
    required TResult Function(_MenuStateLoaded value) loaded,
    required TResult Function(_MenuStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MenuStateInitial value)? initial,
    TResult? Function(_MenuStateLoaded value)? loaded,
    TResult? Function(_MenuStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MenuStateInitial value)? initial,
    TResult Function(_MenuStateLoaded value)? loaded,
    TResult Function(_MenuStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res, MenuState>;
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res, $Val extends MenuState>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MenuStateInitialCopyWith<$Res> {
  factory _$$_MenuStateInitialCopyWith(
          _$_MenuStateInitial value, $Res Function(_$_MenuStateInitial) then) =
      __$$_MenuStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MenuStateInitialCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$_MenuStateInitial>
    implements _$$_MenuStateInitialCopyWith<$Res> {
  __$$_MenuStateInitialCopyWithImpl(
      _$_MenuStateInitial _value, $Res Function(_$_MenuStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MenuStateInitial implements _MenuStateInitial {
  const _$_MenuStateInitial();

  @override
  String toString() {
    return 'MenuState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MenuStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
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
    required TResult Function(_MenuStateInitial value) initial,
    required TResult Function(_MenuStateLoaded value) loaded,
    required TResult Function(_MenuStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MenuStateInitial value)? initial,
    TResult? Function(_MenuStateLoaded value)? loaded,
    TResult? Function(_MenuStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MenuStateInitial value)? initial,
    TResult Function(_MenuStateLoaded value)? loaded,
    TResult Function(_MenuStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MenuStateInitial implements MenuState {
  const factory _MenuStateInitial() = _$_MenuStateInitial;
}

/// @nodoc
abstract class _$$_MenuStateLoadedCopyWith<$Res> {
  factory _$$_MenuStateLoadedCopyWith(
          _$_MenuStateLoaded value, $Res Function(_$_MenuStateLoaded) then) =
      __$$_MenuStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MenuStateLoadedCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$_MenuStateLoaded>
    implements _$$_MenuStateLoadedCopyWith<$Res> {
  __$$_MenuStateLoadedCopyWithImpl(
      _$_MenuStateLoaded _value, $Res Function(_$_MenuStateLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MenuStateLoaded implements _MenuStateLoaded {
  const _$_MenuStateLoaded();

  @override
  String toString() {
    return 'MenuState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MenuStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function(String error) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MenuStateInitial value) initial,
    required TResult Function(_MenuStateLoaded value) loaded,
    required TResult Function(_MenuStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MenuStateInitial value)? initial,
    TResult? Function(_MenuStateLoaded value)? loaded,
    TResult? Function(_MenuStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MenuStateInitial value)? initial,
    TResult Function(_MenuStateLoaded value)? loaded,
    TResult Function(_MenuStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _MenuStateLoaded implements MenuState {
  const factory _MenuStateLoaded() = _$_MenuStateLoaded;
}

/// @nodoc
abstract class _$$_MenuStateErrorCopyWith<$Res> {
  factory _$$_MenuStateErrorCopyWith(
          _$_MenuStateError value, $Res Function(_$_MenuStateError) then) =
      __$$_MenuStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_MenuStateErrorCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$_MenuStateError>
    implements _$$_MenuStateErrorCopyWith<$Res> {
  __$$_MenuStateErrorCopyWithImpl(
      _$_MenuStateError _value, $Res Function(_$_MenuStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_MenuStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MenuStateError implements _MenuStateError {
  const _$_MenuStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MenuState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuStateErrorCopyWith<_$_MenuStateError> get copyWith =>
      __$$_MenuStateErrorCopyWithImpl<_$_MenuStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
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
    required TResult Function(_MenuStateInitial value) initial,
    required TResult Function(_MenuStateLoaded value) loaded,
    required TResult Function(_MenuStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MenuStateInitial value)? initial,
    TResult? Function(_MenuStateLoaded value)? loaded,
    TResult? Function(_MenuStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MenuStateInitial value)? initial,
    TResult Function(_MenuStateLoaded value)? loaded,
    TResult Function(_MenuStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MenuStateError implements MenuState {
  const factory _MenuStateError({required final String error}) =
      _$_MenuStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_MenuStateErrorCopyWith<_$_MenuStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
