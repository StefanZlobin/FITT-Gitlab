// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dio_errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DioExceptions {
  RequestOptions get requestOptions => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestOptions requestOptions)
        badRequestException,
    required TResult Function(RequestOptions requestOptions) notFoundException,
    required TResult Function(RequestOptions requestOptions)
        internalServerErrorException,
    required TResult Function(RequestOptions requestOptions) conflictException,
    required TResult Function(RequestOptions requestOptions)
        unauthorizedException,
    required TResult Function(RequestOptions requestOptions)
        noInternetConnectionException,
    required TResult Function(RequestOptions requestOptions)
        deadlineExceededException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestOptions requestOptions)? badRequestException,
    TResult? Function(RequestOptions requestOptions)? notFoundException,
    TResult? Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult? Function(RequestOptions requestOptions)? conflictException,
    TResult? Function(RequestOptions requestOptions)? unauthorizedException,
    TResult? Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult? Function(RequestOptions requestOptions)? deadlineExceededException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestOptions requestOptions)? badRequestException,
    TResult Function(RequestOptions requestOptions)? notFoundException,
    TResult Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult Function(RequestOptions requestOptions)? conflictException,
    TResult Function(RequestOptions requestOptions)? unauthorizedException,
    TResult Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult Function(RequestOptions requestOptions)? deadlineExceededException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequestException value) badRequestException,
    required TResult Function(_NotFoundException value) notFoundException,
    required TResult Function(_InternalServerErrorException value)
        internalServerErrorException,
    required TResult Function(_ConflictException value) conflictException,
    required TResult Function(_UnauthorizedException value)
        unauthorizedException,
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(_DeadlineExceededException value)
        deadlineExceededException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequestException value)? badRequestException,
    TResult? Function(_NotFoundException value)? notFoundException,
    TResult? Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult? Function(_ConflictException value)? conflictException,
    TResult? Function(_UnauthorizedException value)? unauthorizedException,
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(_DeadlineExceededException value)?
        deadlineExceededException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequestException value)? badRequestException,
    TResult Function(_NotFoundException value)? notFoundException,
    TResult Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult Function(_ConflictException value)? conflictException,
    TResult Function(_UnauthorizedException value)? unauthorizedException,
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(_DeadlineExceededException value)?
        deadlineExceededException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DioExceptionsCopyWith<DioExceptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DioExceptionsCopyWith<$Res> {
  factory $DioExceptionsCopyWith(
          DioExceptions value, $Res Function(DioExceptions) then) =
      _$DioExceptionsCopyWithImpl<$Res, DioExceptions>;
  @useResult
  $Res call({RequestOptions requestOptions});
}

/// @nodoc
class _$DioExceptionsCopyWithImpl<$Res, $Val extends DioExceptions>
    implements $DioExceptionsCopyWith<$Res> {
  _$DioExceptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestOptions = null,
  }) {
    return _then(_value.copyWith(
      requestOptions: null == requestOptions
          ? _value.requestOptions
          : requestOptions // ignore: cast_nullable_to_non_nullable
              as RequestOptions,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BadRequestExceptionCopyWith<$Res>
    implements $DioExceptionsCopyWith<$Res> {
  factory _$$_BadRequestExceptionCopyWith(_$_BadRequestException value,
          $Res Function(_$_BadRequestException) then) =
      __$$_BadRequestExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestOptions requestOptions});
}

/// @nodoc
class __$$_BadRequestExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$_BadRequestException>
    implements _$$_BadRequestExceptionCopyWith<$Res> {
  __$$_BadRequestExceptionCopyWithImpl(_$_BadRequestException _value,
      $Res Function(_$_BadRequestException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestOptions = null,
  }) {
    return _then(_$_BadRequestException(
      requestOptions: null == requestOptions
          ? _value.requestOptions
          : requestOptions // ignore: cast_nullable_to_non_nullable
              as RequestOptions,
    ));
  }
}

/// @nodoc

class _$_BadRequestException implements _BadRequestException {
  const _$_BadRequestException({required this.requestOptions});

  @override
  final RequestOptions requestOptions;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BadRequestException &&
            (identical(other.requestOptions, requestOptions) ||
                other.requestOptions == requestOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BadRequestExceptionCopyWith<_$_BadRequestException> get copyWith =>
      __$$_BadRequestExceptionCopyWithImpl<_$_BadRequestException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestOptions requestOptions)
        badRequestException,
    required TResult Function(RequestOptions requestOptions) notFoundException,
    required TResult Function(RequestOptions requestOptions)
        internalServerErrorException,
    required TResult Function(RequestOptions requestOptions) conflictException,
    required TResult Function(RequestOptions requestOptions)
        unauthorizedException,
    required TResult Function(RequestOptions requestOptions)
        noInternetConnectionException,
    required TResult Function(RequestOptions requestOptions)
        deadlineExceededException,
  }) {
    return badRequestException(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestOptions requestOptions)? badRequestException,
    TResult? Function(RequestOptions requestOptions)? notFoundException,
    TResult? Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult? Function(RequestOptions requestOptions)? conflictException,
    TResult? Function(RequestOptions requestOptions)? unauthorizedException,
    TResult? Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult? Function(RequestOptions requestOptions)? deadlineExceededException,
  }) {
    return badRequestException?.call(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestOptions requestOptions)? badRequestException,
    TResult Function(RequestOptions requestOptions)? notFoundException,
    TResult Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult Function(RequestOptions requestOptions)? conflictException,
    TResult Function(RequestOptions requestOptions)? unauthorizedException,
    TResult Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult Function(RequestOptions requestOptions)? deadlineExceededException,
    required TResult orElse(),
  }) {
    if (badRequestException != null) {
      return badRequestException(requestOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequestException value) badRequestException,
    required TResult Function(_NotFoundException value) notFoundException,
    required TResult Function(_InternalServerErrorException value)
        internalServerErrorException,
    required TResult Function(_ConflictException value) conflictException,
    required TResult Function(_UnauthorizedException value)
        unauthorizedException,
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(_DeadlineExceededException value)
        deadlineExceededException,
  }) {
    return badRequestException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequestException value)? badRequestException,
    TResult? Function(_NotFoundException value)? notFoundException,
    TResult? Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult? Function(_ConflictException value)? conflictException,
    TResult? Function(_UnauthorizedException value)? unauthorizedException,
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(_DeadlineExceededException value)?
        deadlineExceededException,
  }) {
    return badRequestException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequestException value)? badRequestException,
    TResult Function(_NotFoundException value)? notFoundException,
    TResult Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult Function(_ConflictException value)? conflictException,
    TResult Function(_UnauthorizedException value)? unauthorizedException,
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(_DeadlineExceededException value)?
        deadlineExceededException,
    required TResult orElse(),
  }) {
    if (badRequestException != null) {
      return badRequestException(this);
    }
    return orElse();
  }
}

abstract class _BadRequestException implements DioExceptions {
  const factory _BadRequestException(
      {required final RequestOptions requestOptions}) = _$_BadRequestException;

  @override
  RequestOptions get requestOptions;
  @override
  @JsonKey(ignore: true)
  _$$_BadRequestExceptionCopyWith<_$_BadRequestException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotFoundExceptionCopyWith<$Res>
    implements $DioExceptionsCopyWith<$Res> {
  factory _$$_NotFoundExceptionCopyWith(_$_NotFoundException value,
          $Res Function(_$_NotFoundException) then) =
      __$$_NotFoundExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestOptions requestOptions});
}

/// @nodoc
class __$$_NotFoundExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$_NotFoundException>
    implements _$$_NotFoundExceptionCopyWith<$Res> {
  __$$_NotFoundExceptionCopyWithImpl(
      _$_NotFoundException _value, $Res Function(_$_NotFoundException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestOptions = null,
  }) {
    return _then(_$_NotFoundException(
      requestOptions: null == requestOptions
          ? _value.requestOptions
          : requestOptions // ignore: cast_nullable_to_non_nullable
              as RequestOptions,
    ));
  }
}

/// @nodoc

class _$_NotFoundException implements _NotFoundException {
  const _$_NotFoundException({required this.requestOptions});

  @override
  final RequestOptions requestOptions;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotFoundException &&
            (identical(other.requestOptions, requestOptions) ||
                other.requestOptions == requestOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotFoundExceptionCopyWith<_$_NotFoundException> get copyWith =>
      __$$_NotFoundExceptionCopyWithImpl<_$_NotFoundException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestOptions requestOptions)
        badRequestException,
    required TResult Function(RequestOptions requestOptions) notFoundException,
    required TResult Function(RequestOptions requestOptions)
        internalServerErrorException,
    required TResult Function(RequestOptions requestOptions) conflictException,
    required TResult Function(RequestOptions requestOptions)
        unauthorizedException,
    required TResult Function(RequestOptions requestOptions)
        noInternetConnectionException,
    required TResult Function(RequestOptions requestOptions)
        deadlineExceededException,
  }) {
    return notFoundException(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestOptions requestOptions)? badRequestException,
    TResult? Function(RequestOptions requestOptions)? notFoundException,
    TResult? Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult? Function(RequestOptions requestOptions)? conflictException,
    TResult? Function(RequestOptions requestOptions)? unauthorizedException,
    TResult? Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult? Function(RequestOptions requestOptions)? deadlineExceededException,
  }) {
    return notFoundException?.call(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestOptions requestOptions)? badRequestException,
    TResult Function(RequestOptions requestOptions)? notFoundException,
    TResult Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult Function(RequestOptions requestOptions)? conflictException,
    TResult Function(RequestOptions requestOptions)? unauthorizedException,
    TResult Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult Function(RequestOptions requestOptions)? deadlineExceededException,
    required TResult orElse(),
  }) {
    if (notFoundException != null) {
      return notFoundException(requestOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequestException value) badRequestException,
    required TResult Function(_NotFoundException value) notFoundException,
    required TResult Function(_InternalServerErrorException value)
        internalServerErrorException,
    required TResult Function(_ConflictException value) conflictException,
    required TResult Function(_UnauthorizedException value)
        unauthorizedException,
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(_DeadlineExceededException value)
        deadlineExceededException,
  }) {
    return notFoundException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequestException value)? badRequestException,
    TResult? Function(_NotFoundException value)? notFoundException,
    TResult? Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult? Function(_ConflictException value)? conflictException,
    TResult? Function(_UnauthorizedException value)? unauthorizedException,
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(_DeadlineExceededException value)?
        deadlineExceededException,
  }) {
    return notFoundException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequestException value)? badRequestException,
    TResult Function(_NotFoundException value)? notFoundException,
    TResult Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult Function(_ConflictException value)? conflictException,
    TResult Function(_UnauthorizedException value)? unauthorizedException,
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(_DeadlineExceededException value)?
        deadlineExceededException,
    required TResult orElse(),
  }) {
    if (notFoundException != null) {
      return notFoundException(this);
    }
    return orElse();
  }
}

abstract class _NotFoundException implements DioExceptions {
  const factory _NotFoundException(
      {required final RequestOptions requestOptions}) = _$_NotFoundException;

  @override
  RequestOptions get requestOptions;
  @override
  @JsonKey(ignore: true)
  _$$_NotFoundExceptionCopyWith<_$_NotFoundException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InternalServerErrorExceptionCopyWith<$Res>
    implements $DioExceptionsCopyWith<$Res> {
  factory _$$_InternalServerErrorExceptionCopyWith(
          _$_InternalServerErrorException value,
          $Res Function(_$_InternalServerErrorException) then) =
      __$$_InternalServerErrorExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestOptions requestOptions});
}

/// @nodoc
class __$$_InternalServerErrorExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$_InternalServerErrorException>
    implements _$$_InternalServerErrorExceptionCopyWith<$Res> {
  __$$_InternalServerErrorExceptionCopyWithImpl(
      _$_InternalServerErrorException _value,
      $Res Function(_$_InternalServerErrorException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestOptions = null,
  }) {
    return _then(_$_InternalServerErrorException(
      requestOptions: null == requestOptions
          ? _value.requestOptions
          : requestOptions // ignore: cast_nullable_to_non_nullable
              as RequestOptions,
    ));
  }
}

/// @nodoc

class _$_InternalServerErrorException implements _InternalServerErrorException {
  const _$_InternalServerErrorException({required this.requestOptions});

  @override
  final RequestOptions requestOptions;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InternalServerErrorException &&
            (identical(other.requestOptions, requestOptions) ||
                other.requestOptions == requestOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InternalServerErrorExceptionCopyWith<_$_InternalServerErrorException>
      get copyWith => __$$_InternalServerErrorExceptionCopyWithImpl<
          _$_InternalServerErrorException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestOptions requestOptions)
        badRequestException,
    required TResult Function(RequestOptions requestOptions) notFoundException,
    required TResult Function(RequestOptions requestOptions)
        internalServerErrorException,
    required TResult Function(RequestOptions requestOptions) conflictException,
    required TResult Function(RequestOptions requestOptions)
        unauthorizedException,
    required TResult Function(RequestOptions requestOptions)
        noInternetConnectionException,
    required TResult Function(RequestOptions requestOptions)
        deadlineExceededException,
  }) {
    return internalServerErrorException(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestOptions requestOptions)? badRequestException,
    TResult? Function(RequestOptions requestOptions)? notFoundException,
    TResult? Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult? Function(RequestOptions requestOptions)? conflictException,
    TResult? Function(RequestOptions requestOptions)? unauthorizedException,
    TResult? Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult? Function(RequestOptions requestOptions)? deadlineExceededException,
  }) {
    return internalServerErrorException?.call(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestOptions requestOptions)? badRequestException,
    TResult Function(RequestOptions requestOptions)? notFoundException,
    TResult Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult Function(RequestOptions requestOptions)? conflictException,
    TResult Function(RequestOptions requestOptions)? unauthorizedException,
    TResult Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult Function(RequestOptions requestOptions)? deadlineExceededException,
    required TResult orElse(),
  }) {
    if (internalServerErrorException != null) {
      return internalServerErrorException(requestOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequestException value) badRequestException,
    required TResult Function(_NotFoundException value) notFoundException,
    required TResult Function(_InternalServerErrorException value)
        internalServerErrorException,
    required TResult Function(_ConflictException value) conflictException,
    required TResult Function(_UnauthorizedException value)
        unauthorizedException,
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(_DeadlineExceededException value)
        deadlineExceededException,
  }) {
    return internalServerErrorException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequestException value)? badRequestException,
    TResult? Function(_NotFoundException value)? notFoundException,
    TResult? Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult? Function(_ConflictException value)? conflictException,
    TResult? Function(_UnauthorizedException value)? unauthorizedException,
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(_DeadlineExceededException value)?
        deadlineExceededException,
  }) {
    return internalServerErrorException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequestException value)? badRequestException,
    TResult Function(_NotFoundException value)? notFoundException,
    TResult Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult Function(_ConflictException value)? conflictException,
    TResult Function(_UnauthorizedException value)? unauthorizedException,
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(_DeadlineExceededException value)?
        deadlineExceededException,
    required TResult orElse(),
  }) {
    if (internalServerErrorException != null) {
      return internalServerErrorException(this);
    }
    return orElse();
  }
}

abstract class _InternalServerErrorException implements DioExceptions {
  const factory _InternalServerErrorException(
          {required final RequestOptions requestOptions}) =
      _$_InternalServerErrorException;

  @override
  RequestOptions get requestOptions;
  @override
  @JsonKey(ignore: true)
  _$$_InternalServerErrorExceptionCopyWith<_$_InternalServerErrorException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConflictExceptionCopyWith<$Res>
    implements $DioExceptionsCopyWith<$Res> {
  factory _$$_ConflictExceptionCopyWith(_$_ConflictException value,
          $Res Function(_$_ConflictException) then) =
      __$$_ConflictExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestOptions requestOptions});
}

/// @nodoc
class __$$_ConflictExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$_ConflictException>
    implements _$$_ConflictExceptionCopyWith<$Res> {
  __$$_ConflictExceptionCopyWithImpl(
      _$_ConflictException _value, $Res Function(_$_ConflictException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestOptions = null,
  }) {
    return _then(_$_ConflictException(
      requestOptions: null == requestOptions
          ? _value.requestOptions
          : requestOptions // ignore: cast_nullable_to_non_nullable
              as RequestOptions,
    ));
  }
}

/// @nodoc

class _$_ConflictException implements _ConflictException {
  const _$_ConflictException({required this.requestOptions});

  @override
  final RequestOptions requestOptions;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConflictException &&
            (identical(other.requestOptions, requestOptions) ||
                other.requestOptions == requestOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConflictExceptionCopyWith<_$_ConflictException> get copyWith =>
      __$$_ConflictExceptionCopyWithImpl<_$_ConflictException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestOptions requestOptions)
        badRequestException,
    required TResult Function(RequestOptions requestOptions) notFoundException,
    required TResult Function(RequestOptions requestOptions)
        internalServerErrorException,
    required TResult Function(RequestOptions requestOptions) conflictException,
    required TResult Function(RequestOptions requestOptions)
        unauthorizedException,
    required TResult Function(RequestOptions requestOptions)
        noInternetConnectionException,
    required TResult Function(RequestOptions requestOptions)
        deadlineExceededException,
  }) {
    return conflictException(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestOptions requestOptions)? badRequestException,
    TResult? Function(RequestOptions requestOptions)? notFoundException,
    TResult? Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult? Function(RequestOptions requestOptions)? conflictException,
    TResult? Function(RequestOptions requestOptions)? unauthorizedException,
    TResult? Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult? Function(RequestOptions requestOptions)? deadlineExceededException,
  }) {
    return conflictException?.call(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestOptions requestOptions)? badRequestException,
    TResult Function(RequestOptions requestOptions)? notFoundException,
    TResult Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult Function(RequestOptions requestOptions)? conflictException,
    TResult Function(RequestOptions requestOptions)? unauthorizedException,
    TResult Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult Function(RequestOptions requestOptions)? deadlineExceededException,
    required TResult orElse(),
  }) {
    if (conflictException != null) {
      return conflictException(requestOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequestException value) badRequestException,
    required TResult Function(_NotFoundException value) notFoundException,
    required TResult Function(_InternalServerErrorException value)
        internalServerErrorException,
    required TResult Function(_ConflictException value) conflictException,
    required TResult Function(_UnauthorizedException value)
        unauthorizedException,
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(_DeadlineExceededException value)
        deadlineExceededException,
  }) {
    return conflictException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequestException value)? badRequestException,
    TResult? Function(_NotFoundException value)? notFoundException,
    TResult? Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult? Function(_ConflictException value)? conflictException,
    TResult? Function(_UnauthorizedException value)? unauthorizedException,
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(_DeadlineExceededException value)?
        deadlineExceededException,
  }) {
    return conflictException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequestException value)? badRequestException,
    TResult Function(_NotFoundException value)? notFoundException,
    TResult Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult Function(_ConflictException value)? conflictException,
    TResult Function(_UnauthorizedException value)? unauthorizedException,
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(_DeadlineExceededException value)?
        deadlineExceededException,
    required TResult orElse(),
  }) {
    if (conflictException != null) {
      return conflictException(this);
    }
    return orElse();
  }
}

abstract class _ConflictException implements DioExceptions {
  const factory _ConflictException(
      {required final RequestOptions requestOptions}) = _$_ConflictException;

  @override
  RequestOptions get requestOptions;
  @override
  @JsonKey(ignore: true)
  _$$_ConflictExceptionCopyWith<_$_ConflictException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnauthorizedExceptionCopyWith<$Res>
    implements $DioExceptionsCopyWith<$Res> {
  factory _$$_UnauthorizedExceptionCopyWith(_$_UnauthorizedException value,
          $Res Function(_$_UnauthorizedException) then) =
      __$$_UnauthorizedExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestOptions requestOptions});
}

/// @nodoc
class __$$_UnauthorizedExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$_UnauthorizedException>
    implements _$$_UnauthorizedExceptionCopyWith<$Res> {
  __$$_UnauthorizedExceptionCopyWithImpl(_$_UnauthorizedException _value,
      $Res Function(_$_UnauthorizedException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestOptions = null,
  }) {
    return _then(_$_UnauthorizedException(
      requestOptions: null == requestOptions
          ? _value.requestOptions
          : requestOptions // ignore: cast_nullable_to_non_nullable
              as RequestOptions,
    ));
  }
}

/// @nodoc

class _$_UnauthorizedException implements _UnauthorizedException {
  const _$_UnauthorizedException({required this.requestOptions});

  @override
  final RequestOptions requestOptions;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnauthorizedException &&
            (identical(other.requestOptions, requestOptions) ||
                other.requestOptions == requestOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnauthorizedExceptionCopyWith<_$_UnauthorizedException> get copyWith =>
      __$$_UnauthorizedExceptionCopyWithImpl<_$_UnauthorizedException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestOptions requestOptions)
        badRequestException,
    required TResult Function(RequestOptions requestOptions) notFoundException,
    required TResult Function(RequestOptions requestOptions)
        internalServerErrorException,
    required TResult Function(RequestOptions requestOptions) conflictException,
    required TResult Function(RequestOptions requestOptions)
        unauthorizedException,
    required TResult Function(RequestOptions requestOptions)
        noInternetConnectionException,
    required TResult Function(RequestOptions requestOptions)
        deadlineExceededException,
  }) {
    return unauthorizedException(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestOptions requestOptions)? badRequestException,
    TResult? Function(RequestOptions requestOptions)? notFoundException,
    TResult? Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult? Function(RequestOptions requestOptions)? conflictException,
    TResult? Function(RequestOptions requestOptions)? unauthorizedException,
    TResult? Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult? Function(RequestOptions requestOptions)? deadlineExceededException,
  }) {
    return unauthorizedException?.call(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestOptions requestOptions)? badRequestException,
    TResult Function(RequestOptions requestOptions)? notFoundException,
    TResult Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult Function(RequestOptions requestOptions)? conflictException,
    TResult Function(RequestOptions requestOptions)? unauthorizedException,
    TResult Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult Function(RequestOptions requestOptions)? deadlineExceededException,
    required TResult orElse(),
  }) {
    if (unauthorizedException != null) {
      return unauthorizedException(requestOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequestException value) badRequestException,
    required TResult Function(_NotFoundException value) notFoundException,
    required TResult Function(_InternalServerErrorException value)
        internalServerErrorException,
    required TResult Function(_ConflictException value) conflictException,
    required TResult Function(_UnauthorizedException value)
        unauthorizedException,
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(_DeadlineExceededException value)
        deadlineExceededException,
  }) {
    return unauthorizedException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequestException value)? badRequestException,
    TResult? Function(_NotFoundException value)? notFoundException,
    TResult? Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult? Function(_ConflictException value)? conflictException,
    TResult? Function(_UnauthorizedException value)? unauthorizedException,
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(_DeadlineExceededException value)?
        deadlineExceededException,
  }) {
    return unauthorizedException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequestException value)? badRequestException,
    TResult Function(_NotFoundException value)? notFoundException,
    TResult Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult Function(_ConflictException value)? conflictException,
    TResult Function(_UnauthorizedException value)? unauthorizedException,
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(_DeadlineExceededException value)?
        deadlineExceededException,
    required TResult orElse(),
  }) {
    if (unauthorizedException != null) {
      return unauthorizedException(this);
    }
    return orElse();
  }
}

abstract class _UnauthorizedException implements DioExceptions {
  const factory _UnauthorizedException(
          {required final RequestOptions requestOptions}) =
      _$_UnauthorizedException;

  @override
  RequestOptions get requestOptions;
  @override
  @JsonKey(ignore: true)
  _$$_UnauthorizedExceptionCopyWith<_$_UnauthorizedException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoInternetConnectionExceptionCopyWith<$Res>
    implements $DioExceptionsCopyWith<$Res> {
  factory _$$_NoInternetConnectionExceptionCopyWith(
          _$_NoInternetConnectionException value,
          $Res Function(_$_NoInternetConnectionException) then) =
      __$$_NoInternetConnectionExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestOptions requestOptions});
}

/// @nodoc
class __$$_NoInternetConnectionExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$_NoInternetConnectionException>
    implements _$$_NoInternetConnectionExceptionCopyWith<$Res> {
  __$$_NoInternetConnectionExceptionCopyWithImpl(
      _$_NoInternetConnectionException _value,
      $Res Function(_$_NoInternetConnectionException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestOptions = null,
  }) {
    return _then(_$_NoInternetConnectionException(
      requestOptions: null == requestOptions
          ? _value.requestOptions
          : requestOptions // ignore: cast_nullable_to_non_nullable
              as RequestOptions,
    ));
  }
}

/// @nodoc

class _$_NoInternetConnectionException
    implements _NoInternetConnectionException {
  const _$_NoInternetConnectionException({required this.requestOptions});

  @override
  final RequestOptions requestOptions;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoInternetConnectionException &&
            (identical(other.requestOptions, requestOptions) ||
                other.requestOptions == requestOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoInternetConnectionExceptionCopyWith<_$_NoInternetConnectionException>
      get copyWith => __$$_NoInternetConnectionExceptionCopyWithImpl<
          _$_NoInternetConnectionException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestOptions requestOptions)
        badRequestException,
    required TResult Function(RequestOptions requestOptions) notFoundException,
    required TResult Function(RequestOptions requestOptions)
        internalServerErrorException,
    required TResult Function(RequestOptions requestOptions) conflictException,
    required TResult Function(RequestOptions requestOptions)
        unauthorizedException,
    required TResult Function(RequestOptions requestOptions)
        noInternetConnectionException,
    required TResult Function(RequestOptions requestOptions)
        deadlineExceededException,
  }) {
    return noInternetConnectionException(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestOptions requestOptions)? badRequestException,
    TResult? Function(RequestOptions requestOptions)? notFoundException,
    TResult? Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult? Function(RequestOptions requestOptions)? conflictException,
    TResult? Function(RequestOptions requestOptions)? unauthorizedException,
    TResult? Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult? Function(RequestOptions requestOptions)? deadlineExceededException,
  }) {
    return noInternetConnectionException?.call(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestOptions requestOptions)? badRequestException,
    TResult Function(RequestOptions requestOptions)? notFoundException,
    TResult Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult Function(RequestOptions requestOptions)? conflictException,
    TResult Function(RequestOptions requestOptions)? unauthorizedException,
    TResult Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult Function(RequestOptions requestOptions)? deadlineExceededException,
    required TResult orElse(),
  }) {
    if (noInternetConnectionException != null) {
      return noInternetConnectionException(requestOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequestException value) badRequestException,
    required TResult Function(_NotFoundException value) notFoundException,
    required TResult Function(_InternalServerErrorException value)
        internalServerErrorException,
    required TResult Function(_ConflictException value) conflictException,
    required TResult Function(_UnauthorizedException value)
        unauthorizedException,
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(_DeadlineExceededException value)
        deadlineExceededException,
  }) {
    return noInternetConnectionException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequestException value)? badRequestException,
    TResult? Function(_NotFoundException value)? notFoundException,
    TResult? Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult? Function(_ConflictException value)? conflictException,
    TResult? Function(_UnauthorizedException value)? unauthorizedException,
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(_DeadlineExceededException value)?
        deadlineExceededException,
  }) {
    return noInternetConnectionException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequestException value)? badRequestException,
    TResult Function(_NotFoundException value)? notFoundException,
    TResult Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult Function(_ConflictException value)? conflictException,
    TResult Function(_UnauthorizedException value)? unauthorizedException,
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(_DeadlineExceededException value)?
        deadlineExceededException,
    required TResult orElse(),
  }) {
    if (noInternetConnectionException != null) {
      return noInternetConnectionException(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnectionException implements DioExceptions {
  const factory _NoInternetConnectionException(
          {required final RequestOptions requestOptions}) =
      _$_NoInternetConnectionException;

  @override
  RequestOptions get requestOptions;
  @override
  @JsonKey(ignore: true)
  _$$_NoInternetConnectionExceptionCopyWith<_$_NoInternetConnectionException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeadlineExceededExceptionCopyWith<$Res>
    implements $DioExceptionsCopyWith<$Res> {
  factory _$$_DeadlineExceededExceptionCopyWith(
          _$_DeadlineExceededException value,
          $Res Function(_$_DeadlineExceededException) then) =
      __$$_DeadlineExceededExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestOptions requestOptions});
}

/// @nodoc
class __$$_DeadlineExceededExceptionCopyWithImpl<$Res>
    extends _$DioExceptionsCopyWithImpl<$Res, _$_DeadlineExceededException>
    implements _$$_DeadlineExceededExceptionCopyWith<$Res> {
  __$$_DeadlineExceededExceptionCopyWithImpl(
      _$_DeadlineExceededException _value,
      $Res Function(_$_DeadlineExceededException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestOptions = null,
  }) {
    return _then(_$_DeadlineExceededException(
      requestOptions: null == requestOptions
          ? _value.requestOptions
          : requestOptions // ignore: cast_nullable_to_non_nullable
              as RequestOptions,
    ));
  }
}

/// @nodoc

class _$_DeadlineExceededException implements _DeadlineExceededException {
  const _$_DeadlineExceededException({required this.requestOptions});

  @override
  final RequestOptions requestOptions;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeadlineExceededException &&
            (identical(other.requestOptions, requestOptions) ||
                other.requestOptions == requestOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeadlineExceededExceptionCopyWith<_$_DeadlineExceededException>
      get copyWith => __$$_DeadlineExceededExceptionCopyWithImpl<
          _$_DeadlineExceededException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestOptions requestOptions)
        badRequestException,
    required TResult Function(RequestOptions requestOptions) notFoundException,
    required TResult Function(RequestOptions requestOptions)
        internalServerErrorException,
    required TResult Function(RequestOptions requestOptions) conflictException,
    required TResult Function(RequestOptions requestOptions)
        unauthorizedException,
    required TResult Function(RequestOptions requestOptions)
        noInternetConnectionException,
    required TResult Function(RequestOptions requestOptions)
        deadlineExceededException,
  }) {
    return deadlineExceededException(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestOptions requestOptions)? badRequestException,
    TResult? Function(RequestOptions requestOptions)? notFoundException,
    TResult? Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult? Function(RequestOptions requestOptions)? conflictException,
    TResult? Function(RequestOptions requestOptions)? unauthorizedException,
    TResult? Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult? Function(RequestOptions requestOptions)? deadlineExceededException,
  }) {
    return deadlineExceededException?.call(requestOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestOptions requestOptions)? badRequestException,
    TResult Function(RequestOptions requestOptions)? notFoundException,
    TResult Function(RequestOptions requestOptions)?
        internalServerErrorException,
    TResult Function(RequestOptions requestOptions)? conflictException,
    TResult Function(RequestOptions requestOptions)? unauthorizedException,
    TResult Function(RequestOptions requestOptions)?
        noInternetConnectionException,
    TResult Function(RequestOptions requestOptions)? deadlineExceededException,
    required TResult orElse(),
  }) {
    if (deadlineExceededException != null) {
      return deadlineExceededException(requestOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequestException value) badRequestException,
    required TResult Function(_NotFoundException value) notFoundException,
    required TResult Function(_InternalServerErrorException value)
        internalServerErrorException,
    required TResult Function(_ConflictException value) conflictException,
    required TResult Function(_UnauthorizedException value)
        unauthorizedException,
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(_DeadlineExceededException value)
        deadlineExceededException,
  }) {
    return deadlineExceededException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequestException value)? badRequestException,
    TResult? Function(_NotFoundException value)? notFoundException,
    TResult? Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult? Function(_ConflictException value)? conflictException,
    TResult? Function(_UnauthorizedException value)? unauthorizedException,
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(_DeadlineExceededException value)?
        deadlineExceededException,
  }) {
    return deadlineExceededException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequestException value)? badRequestException,
    TResult Function(_NotFoundException value)? notFoundException,
    TResult Function(_InternalServerErrorException value)?
        internalServerErrorException,
    TResult Function(_ConflictException value)? conflictException,
    TResult Function(_UnauthorizedException value)? unauthorizedException,
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(_DeadlineExceededException value)?
        deadlineExceededException,
    required TResult orElse(),
  }) {
    if (deadlineExceededException != null) {
      return deadlineExceededException(this);
    }
    return orElse();
  }
}

abstract class _DeadlineExceededException implements DioExceptions {
  const factory _DeadlineExceededException(
          {required final RequestOptions requestOptions}) =
      _$_DeadlineExceededException;

  @override
  RequestOptions get requestOptions;
  @override
  @JsonKey(ignore: true)
  _$$_DeadlineExceededExceptionCopyWith<_$_DeadlineExceededException>
      get copyWith => throw _privateConstructorUsedError;
}
