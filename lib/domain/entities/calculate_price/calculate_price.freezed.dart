// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculate_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalculatePrice _$CalculatePriceFromJson(Map<String, dynamic> json) {
  return _CalculatePrice.fromJson(json);
}

/// @nodoc
mixin _$CalculatePrice {
  @JsonKey(name: 'price', fromJson: toRubles)
  int get price => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'start_time',
      fromJson: dateTimeFromString,
      toJson: dateTimeToString)
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'end_time', fromJson: dateTimeFromString, toJson: dateTimeToString)
  DateTime get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculatePriceCopyWith<CalculatePrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatePriceCopyWith<$Res> {
  factory $CalculatePriceCopyWith(
          CalculatePrice value, $Res Function(CalculatePrice) then) =
      _$CalculatePriceCopyWithImpl<$Res, CalculatePrice>;
  @useResult
  $Res call(
      {@JsonKey(name: 'price', fromJson: toRubles)
          int price,
      @JsonKey(name: 'start_time', fromJson: dateTimeFromString, toJson: dateTimeToString)
          DateTime startTime,
      @JsonKey(name: 'end_time', fromJson: dateTimeFromString, toJson: dateTimeToString)
          DateTime endTime});
}

/// @nodoc
class _$CalculatePriceCopyWithImpl<$Res, $Val extends CalculatePrice>
    implements $CalculatePriceCopyWith<$Res> {
  _$CalculatePriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalculatePriceCopyWith<$Res>
    implements $CalculatePriceCopyWith<$Res> {
  factory _$$_CalculatePriceCopyWith(
          _$_CalculatePrice value, $Res Function(_$_CalculatePrice) then) =
      __$$_CalculatePriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'price', fromJson: toRubles)
          int price,
      @JsonKey(name: 'start_time', fromJson: dateTimeFromString, toJson: dateTimeToString)
          DateTime startTime,
      @JsonKey(name: 'end_time', fromJson: dateTimeFromString, toJson: dateTimeToString)
          DateTime endTime});
}

/// @nodoc
class __$$_CalculatePriceCopyWithImpl<$Res>
    extends _$CalculatePriceCopyWithImpl<$Res, _$_CalculatePrice>
    implements _$$_CalculatePriceCopyWith<$Res> {
  __$$_CalculatePriceCopyWithImpl(
      _$_CalculatePrice _value, $Res Function(_$_CalculatePrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$_CalculatePrice(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalculatePrice implements _CalculatePrice {
  _$_CalculatePrice(
      {@JsonKey(name: 'price', fromJson: toRubles)
          required this.price,
      @JsonKey(name: 'start_time', fromJson: dateTimeFromString, toJson: dateTimeToString)
          required this.startTime,
      @JsonKey(name: 'end_time', fromJson: dateTimeFromString, toJson: dateTimeToString)
          required this.endTime});

  factory _$_CalculatePrice.fromJson(Map<String, dynamic> json) =>
      _$$_CalculatePriceFromJson(json);

  @override
  @JsonKey(name: 'price', fromJson: toRubles)
  final int price;
  @override
  @JsonKey(
      name: 'start_time',
      fromJson: dateTimeFromString,
      toJson: dateTimeToString)
  final DateTime startTime;
  @override
  @JsonKey(
      name: 'end_time', fromJson: dateTimeFromString, toJson: dateTimeToString)
  final DateTime endTime;

  @override
  String toString() {
    return 'CalculatePrice(price: $price, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalculatePrice &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculatePriceCopyWith<_$_CalculatePrice> get copyWith =>
      __$$_CalculatePriceCopyWithImpl<_$_CalculatePrice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalculatePriceToJson(
      this,
    );
  }
}

abstract class _CalculatePrice implements CalculatePrice {
  factory _CalculatePrice(
      {@JsonKey(name: 'price', fromJson: toRubles)
          required final int price,
      @JsonKey(name: 'start_time', fromJson: dateTimeFromString, toJson: dateTimeToString)
          required final DateTime startTime,
      @JsonKey(name: 'end_time', fromJson: dateTimeFromString, toJson: dateTimeToString)
          required final DateTime endTime}) = _$_CalculatePrice;

  factory _CalculatePrice.fromJson(Map<String, dynamic> json) =
      _$_CalculatePrice.fromJson;

  @override
  @JsonKey(name: 'price', fromJson: toRubles)
  int get price;
  @override
  @JsonKey(
      name: 'start_time',
      fromJson: dateTimeFromString,
      toJson: dateTimeToString)
  DateTime get startTime;
  @override
  @JsonKey(
      name: 'end_time', fromJson: dateTimeFromString, toJson: dateTimeToString)
  DateTime get endTime;
  @override
  @JsonKey(ignore: true)
  _$$_CalculatePriceCopyWith<_$_CalculatePrice> get copyWith =>
      throw _privateConstructorUsedError;
}
