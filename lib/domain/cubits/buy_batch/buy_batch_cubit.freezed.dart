// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_batch_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BuyBatch {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuyBatchResponse response) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(BuyBatchResponse response)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuyBatchResponse response)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuyBatchInitial value) initial,
    required TResult Function(_BuyBatchLoaded value) loaded,
    required TResult Function(_BuyBatchError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuyBatchInitial value)? initial,
    TResult? Function(_BuyBatchLoaded value)? loaded,
    TResult? Function(_BuyBatchError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuyBatchInitial value)? initial,
    TResult Function(_BuyBatchLoaded value)? loaded,
    TResult Function(_BuyBatchError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyBatchCopyWith<$Res> {
  factory $BuyBatchCopyWith(BuyBatch value, $Res Function(BuyBatch) then) =
      _$BuyBatchCopyWithImpl<$Res, BuyBatch>;
}

/// @nodoc
class _$BuyBatchCopyWithImpl<$Res, $Val extends BuyBatch>
    implements $BuyBatchCopyWith<$Res> {
  _$BuyBatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BuyBatchInitialCopyWith<$Res> {
  factory _$$_BuyBatchInitialCopyWith(
          _$_BuyBatchInitial value, $Res Function(_$_BuyBatchInitial) then) =
      __$$_BuyBatchInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BuyBatchInitialCopyWithImpl<$Res>
    extends _$BuyBatchCopyWithImpl<$Res, _$_BuyBatchInitial>
    implements _$$_BuyBatchInitialCopyWith<$Res> {
  __$$_BuyBatchInitialCopyWithImpl(
      _$_BuyBatchInitial _value, $Res Function(_$_BuyBatchInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BuyBatchInitial implements _BuyBatchInitial {
  const _$_BuyBatchInitial();

  @override
  String toString() {
    return 'BuyBatch.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BuyBatchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuyBatchResponse response) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(BuyBatchResponse response)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuyBatchResponse response)? loaded,
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
    required TResult Function(_BuyBatchInitial value) initial,
    required TResult Function(_BuyBatchLoaded value) loaded,
    required TResult Function(_BuyBatchError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuyBatchInitial value)? initial,
    TResult? Function(_BuyBatchLoaded value)? loaded,
    TResult? Function(_BuyBatchError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuyBatchInitial value)? initial,
    TResult Function(_BuyBatchLoaded value)? loaded,
    TResult Function(_BuyBatchError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _BuyBatchInitial implements BuyBatch {
  const factory _BuyBatchInitial() = _$_BuyBatchInitial;
}

/// @nodoc
abstract class _$$_BuyBatchLoadedCopyWith<$Res> {
  factory _$$_BuyBatchLoadedCopyWith(
          _$_BuyBatchLoaded value, $Res Function(_$_BuyBatchLoaded) then) =
      __$$_BuyBatchLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({BuyBatchResponse response});
}

/// @nodoc
class __$$_BuyBatchLoadedCopyWithImpl<$Res>
    extends _$BuyBatchCopyWithImpl<$Res, _$_BuyBatchLoaded>
    implements _$$_BuyBatchLoadedCopyWith<$Res> {
  __$$_BuyBatchLoadedCopyWithImpl(
      _$_BuyBatchLoaded _value, $Res Function(_$_BuyBatchLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_BuyBatchLoaded(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BuyBatchResponse,
    ));
  }
}

/// @nodoc

class _$_BuyBatchLoaded implements _BuyBatchLoaded {
  const _$_BuyBatchLoaded({required this.response});

  @override
  final BuyBatchResponse response;

  @override
  String toString() {
    return 'BuyBatch.loaded(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyBatchLoaded &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuyBatchLoadedCopyWith<_$_BuyBatchLoaded> get copyWith =>
      __$$_BuyBatchLoadedCopyWithImpl<_$_BuyBatchLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuyBatchResponse response) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(BuyBatchResponse response)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuyBatchResponse response)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuyBatchInitial value) initial,
    required TResult Function(_BuyBatchLoaded value) loaded,
    required TResult Function(_BuyBatchError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuyBatchInitial value)? initial,
    TResult? Function(_BuyBatchLoaded value)? loaded,
    TResult? Function(_BuyBatchError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuyBatchInitial value)? initial,
    TResult Function(_BuyBatchLoaded value)? loaded,
    TResult Function(_BuyBatchError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _BuyBatchLoaded implements BuyBatch {
  const factory _BuyBatchLoaded({required final BuyBatchResponse response}) =
      _$_BuyBatchLoaded;

  BuyBatchResponse get response;
  @JsonKey(ignore: true)
  _$$_BuyBatchLoadedCopyWith<_$_BuyBatchLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BuyBatchErrorCopyWith<$Res> {
  factory _$$_BuyBatchErrorCopyWith(
          _$_BuyBatchError value, $Res Function(_$_BuyBatchError) then) =
      __$$_BuyBatchErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_BuyBatchErrorCopyWithImpl<$Res>
    extends _$BuyBatchCopyWithImpl<$Res, _$_BuyBatchError>
    implements _$$_BuyBatchErrorCopyWith<$Res> {
  __$$_BuyBatchErrorCopyWithImpl(
      _$_BuyBatchError _value, $Res Function(_$_BuyBatchError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_BuyBatchError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BuyBatchError implements _BuyBatchError {
  const _$_BuyBatchError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'BuyBatch.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyBatchError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuyBatchErrorCopyWith<_$_BuyBatchError> get copyWith =>
      __$$_BuyBatchErrorCopyWithImpl<_$_BuyBatchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BuyBatchResponse response) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(BuyBatchResponse response)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BuyBatchResponse response)? loaded,
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
    required TResult Function(_BuyBatchInitial value) initial,
    required TResult Function(_BuyBatchLoaded value) loaded,
    required TResult Function(_BuyBatchError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuyBatchInitial value)? initial,
    TResult? Function(_BuyBatchLoaded value)? loaded,
    TResult? Function(_BuyBatchError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuyBatchInitial value)? initial,
    TResult Function(_BuyBatchLoaded value)? loaded,
    TResult Function(_BuyBatchError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _BuyBatchError implements BuyBatch {
  const factory _BuyBatchError({required final String error}) =
      _$_BuyBatchError;

  String get error;
  @JsonKey(ignore: true)
  _$$_BuyBatchErrorCopyWith<_$_BuyBatchError> get copyWith =>
      throw _privateConstructorUsedError;
}
