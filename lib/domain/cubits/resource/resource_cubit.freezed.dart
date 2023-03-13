// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResourceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClubFilters filters) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClubFilters filters)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilters filters)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResourceStateInitial value) initial,
    required TResult Function(_ResourceStateLoaded value) loaded,
    required TResult Function(_ResourceStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResourceStateInitial value)? initial,
    TResult? Function(_ResourceStateLoaded value)? loaded,
    TResult? Function(_ResourceStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResourceStateInitial value)? initial,
    TResult Function(_ResourceStateLoaded value)? loaded,
    TResult Function(_ResourceStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceStateCopyWith<$Res> {
  factory $ResourceStateCopyWith(ResourceState value, $Res Function(ResourceState) then) =
      _$ResourceStateCopyWithImpl<$Res, ResourceState>;
}

/// @nodoc
class _$ResourceStateCopyWithImpl<$Res, $Val extends ResourceState> implements $ResourceStateCopyWith<$Res> {
  _$ResourceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ResourceStateInitialCopyWith<$Res> {
  factory _$$_ResourceStateInitialCopyWith(_$_ResourceStateInitial value, $Res Function(_$_ResourceStateInitial) then) =
      __$$_ResourceStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResourceStateInitialCopyWithImpl<$Res> extends _$ResourceStateCopyWithImpl<$Res, _$_ResourceStateInitial>
    implements _$$_ResourceStateInitialCopyWith<$Res> {
  __$$_ResourceStateInitialCopyWithImpl(_$_ResourceStateInitial _value, $Res Function(_$_ResourceStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResourceStateInitial implements _ResourceStateInitial {
  const _$_ResourceStateInitial();

  @override
  String toString() {
    return 'ResourceState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_ResourceStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClubFilters filters) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClubFilters filters)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilters filters)? loaded,
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
    required TResult Function(_ResourceStateInitial value) initial,
    required TResult Function(_ResourceStateLoaded value) loaded,
    required TResult Function(_ResourceStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResourceStateInitial value)? initial,
    TResult? Function(_ResourceStateLoaded value)? loaded,
    TResult? Function(_ResourceStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResourceStateInitial value)? initial,
    TResult Function(_ResourceStateLoaded value)? loaded,
    TResult Function(_ResourceStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ResourceStateInitial implements ResourceState {
  const factory _ResourceStateInitial() = _$_ResourceStateInitial;
}

/// @nodoc
abstract class _$$_ResourceStateLoadedCopyWith<$Res> {
  factory _$$_ResourceStateLoadedCopyWith(_$_ResourceStateLoaded value, $Res Function(_$_ResourceStateLoaded) then) =
      __$$_ResourceStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ClubFilters filters});

  $ClubFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$_ResourceStateLoadedCopyWithImpl<$Res> extends _$ResourceStateCopyWithImpl<$Res, _$_ResourceStateLoaded>
    implements _$$_ResourceStateLoadedCopyWith<$Res> {
  __$$_ResourceStateLoadedCopyWithImpl(_$_ResourceStateLoaded _value, $Res Function(_$_ResourceStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_$_ResourceStateLoaded(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ClubFilters,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClubFiltersCopyWith<$Res> get filters {
    return $ClubFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc

class _$_ResourceStateLoaded implements _ResourceStateLoaded {
  const _$_ResourceStateLoaded({required this.filters});

  @override
  final ClubFilters filters;

  @override
  String toString() {
    return 'ResourceState.loaded(filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResourceStateLoaded &&
            (identical(other.filters, filters) || other.filters == filters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResourceStateLoadedCopyWith<_$_ResourceStateLoaded> get copyWith =>
      __$$_ResourceStateLoadedCopyWithImpl<_$_ResourceStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClubFilters filters) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClubFilters filters)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilters filters)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResourceStateInitial value) initial,
    required TResult Function(_ResourceStateLoaded value) loaded,
    required TResult Function(_ResourceStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResourceStateInitial value)? initial,
    TResult? Function(_ResourceStateLoaded value)? loaded,
    TResult? Function(_ResourceStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResourceStateInitial value)? initial,
    TResult Function(_ResourceStateLoaded value)? loaded,
    TResult Function(_ResourceStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ResourceStateLoaded implements ResourceState {
  const factory _ResourceStateLoaded({required final ClubFilters filters}) = _$_ResourceStateLoaded;

  ClubFilters get filters;
  @JsonKey(ignore: true)
  _$$_ResourceStateLoadedCopyWith<_$_ResourceStateLoaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResourceStateErrorCopyWith<$Res> {
  factory _$$_ResourceStateErrorCopyWith(_$_ResourceStateError value, $Res Function(_$_ResourceStateError) then) =
      __$$_ResourceStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ResourceStateErrorCopyWithImpl<$Res> extends _$ResourceStateCopyWithImpl<$Res, _$_ResourceStateError>
    implements _$$_ResourceStateErrorCopyWith<$Res> {
  __$$_ResourceStateErrorCopyWithImpl(_$_ResourceStateError _value, $Res Function(_$_ResourceStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ResourceStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResourceStateError implements _ResourceStateError {
  const _$_ResourceStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ResourceState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResourceStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResourceStateErrorCopyWith<_$_ResourceStateError> get copyWith =>
      __$$_ResourceStateErrorCopyWithImpl<_$_ResourceStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClubFilters filters) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClubFilters filters)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilters filters)? loaded,
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
    required TResult Function(_ResourceStateInitial value) initial,
    required TResult Function(_ResourceStateLoaded value) loaded,
    required TResult Function(_ResourceStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResourceStateInitial value)? initial,
    TResult? Function(_ResourceStateLoaded value)? loaded,
    TResult? Function(_ResourceStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResourceStateInitial value)? initial,
    TResult Function(_ResourceStateLoaded value)? loaded,
    TResult Function(_ResourceStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ResourceStateError implements ResourceState {
  const factory _ResourceStateError({required final String error}) = _$_ResourceStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_ResourceStateErrorCopyWith<_$_ResourceStateError> get copyWith => throw _privateConstructorUsedError;
}
