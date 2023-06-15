// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_toggle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentToggleEvent {
  PaymentTypeEnum get paymentType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentTypeEnum paymentType) toggleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentTypeEnum paymentType)? toggleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentTypeEnum paymentType)? toggleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentToggleEventToggleChanged value)
        toggleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentToggleEventToggleChanged value)? toggleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentToggleEventToggleChanged value)? toggleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentToggleEventCopyWith<PaymentToggleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentToggleEventCopyWith<$Res> {
  factory $PaymentToggleEventCopyWith(
          PaymentToggleEvent value, $Res Function(PaymentToggleEvent) then) =
      _$PaymentToggleEventCopyWithImpl<$Res, PaymentToggleEvent>;
  @useResult
  $Res call({PaymentTypeEnum paymentType});
}

/// @nodoc
class _$PaymentToggleEventCopyWithImpl<$Res, $Val extends PaymentToggleEvent>
    implements $PaymentToggleEventCopyWith<$Res> {
  _$PaymentToggleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
  }) {
    return _then(_value.copyWith(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentTypeEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentToggleEventToggleChangedCopyWith<$Res>
    implements $PaymentToggleEventCopyWith<$Res> {
  factory _$$_PaymentToggleEventToggleChangedCopyWith(
          _$_PaymentToggleEventToggleChanged value,
          $Res Function(_$_PaymentToggleEventToggleChanged) then) =
      __$$_PaymentToggleEventToggleChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentTypeEnum paymentType});
}

/// @nodoc
class __$$_PaymentToggleEventToggleChangedCopyWithImpl<$Res>
    extends _$PaymentToggleEventCopyWithImpl<$Res,
        _$_PaymentToggleEventToggleChanged>
    implements _$$_PaymentToggleEventToggleChangedCopyWith<$Res> {
  __$$_PaymentToggleEventToggleChangedCopyWithImpl(
      _$_PaymentToggleEventToggleChanged _value,
      $Res Function(_$_PaymentToggleEventToggleChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
  }) {
    return _then(_$_PaymentToggleEventToggleChanged(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentTypeEnum,
    ));
  }
}

/// @nodoc

class _$_PaymentToggleEventToggleChanged
    implements _PaymentToggleEventToggleChanged {
  const _$_PaymentToggleEventToggleChanged({required this.paymentType});

  @override
  final PaymentTypeEnum paymentType;

  @override
  String toString() {
    return 'PaymentToggleEvent.toggleChanged(paymentType: $paymentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentToggleEventToggleChanged &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentToggleEventToggleChangedCopyWith<
          _$_PaymentToggleEventToggleChanged>
      get copyWith => __$$_PaymentToggleEventToggleChangedCopyWithImpl<
          _$_PaymentToggleEventToggleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentTypeEnum paymentType) toggleChanged,
  }) {
    return toggleChanged(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentTypeEnum paymentType)? toggleChanged,
  }) {
    return toggleChanged?.call(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentTypeEnum paymentType)? toggleChanged,
    required TResult orElse(),
  }) {
    if (toggleChanged != null) {
      return toggleChanged(paymentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentToggleEventToggleChanged value)
        toggleChanged,
  }) {
    return toggleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentToggleEventToggleChanged value)? toggleChanged,
  }) {
    return toggleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentToggleEventToggleChanged value)? toggleChanged,
    required TResult orElse(),
  }) {
    if (toggleChanged != null) {
      return toggleChanged(this);
    }
    return orElse();
  }
}

abstract class _PaymentToggleEventToggleChanged implements PaymentToggleEvent {
  const factory _PaymentToggleEventToggleChanged(
          {required final PaymentTypeEnum paymentType}) =
      _$_PaymentToggleEventToggleChanged;

  @override
  PaymentTypeEnum get paymentType;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentToggleEventToggleChangedCopyWith<
          _$_PaymentToggleEventToggleChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentToggleState {
  PaymentTypeEnum get paymentType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentTypeEnum paymentType) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentTypeEnum paymentType)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentTypeEnum paymentType)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentToggleStateInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentToggleStateInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentToggleStateInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentToggleStateCopyWith<PaymentToggleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentToggleStateCopyWith<$Res> {
  factory $PaymentToggleStateCopyWith(
          PaymentToggleState value, $Res Function(PaymentToggleState) then) =
      _$PaymentToggleStateCopyWithImpl<$Res, PaymentToggleState>;
  @useResult
  $Res call({PaymentTypeEnum paymentType});
}

/// @nodoc
class _$PaymentToggleStateCopyWithImpl<$Res, $Val extends PaymentToggleState>
    implements $PaymentToggleStateCopyWith<$Res> {
  _$PaymentToggleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
  }) {
    return _then(_value.copyWith(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentTypeEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentToggleStateInitialCopyWith<$Res>
    implements $PaymentToggleStateCopyWith<$Res> {
  factory _$$_PaymentToggleStateInitialCopyWith(
          _$_PaymentToggleStateInitial value,
          $Res Function(_$_PaymentToggleStateInitial) then) =
      __$$_PaymentToggleStateInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentTypeEnum paymentType});
}

/// @nodoc
class __$$_PaymentToggleStateInitialCopyWithImpl<$Res>
    extends _$PaymentToggleStateCopyWithImpl<$Res, _$_PaymentToggleStateInitial>
    implements _$$_PaymentToggleStateInitialCopyWith<$Res> {
  __$$_PaymentToggleStateInitialCopyWithImpl(
      _$_PaymentToggleStateInitial _value,
      $Res Function(_$_PaymentToggleStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
  }) {
    return _then(_$_PaymentToggleStateInitial(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentTypeEnum,
    ));
  }
}

/// @nodoc

class _$_PaymentToggleStateInitial implements _PaymentToggleStateInitial {
  const _$_PaymentToggleStateInitial(
      {this.paymentType = PaymentTypeEnum.corporateBalance});

  @override
  @JsonKey()
  final PaymentTypeEnum paymentType;

  @override
  String toString() {
    return 'PaymentToggleState.initial(paymentType: $paymentType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentToggleStateInitialCopyWith<_$_PaymentToggleStateInitial>
      get copyWith => __$$_PaymentToggleStateInitialCopyWithImpl<
          _$_PaymentToggleStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentTypeEnum paymentType) initial,
  }) {
    return initial(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentTypeEnum paymentType)? initial,
  }) {
    return initial?.call(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentTypeEnum paymentType)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(paymentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentToggleStateInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentToggleStateInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentToggleStateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PaymentToggleStateInitial implements PaymentToggleState {
  const factory _PaymentToggleStateInitial(
      {final PaymentTypeEnum paymentType}) = _$_PaymentToggleStateInitial;

  @override
  PaymentTypeEnum get paymentType;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentToggleStateInitialCopyWith<_$_PaymentToggleStateInitial>
      get copyWith => throw _privateConstructorUsedError;
}
