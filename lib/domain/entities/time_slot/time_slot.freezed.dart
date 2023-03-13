// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeSlot _$TimeSlotFromJson(Map<String, dynamic> json) {
  return _TimeSlot.fromJson(json);
}

/// @nodoc
mixin _$TimeSlot {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time', fromJson: timeFromString, toJson: timeToString)
  DateTime get startTime => throw _privateConstructorUsedError;
  @DurationConverter()
  Duration get duration => throw _privateConstructorUsedError;
  @JsonKey(fromJson: toRubles, toJson: toCent)
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSlotCopyWith<TimeSlot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotCopyWith<$Res> {
  factory $TimeSlotCopyWith(TimeSlot value, $Res Function(TimeSlot) then) = _$TimeSlotCopyWithImpl<$Res, TimeSlot>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'start_time', fromJson: timeFromString, toJson: timeToString) DateTime startTime,
      @DurationConverter() Duration duration,
      @JsonKey(fromJson: toRubles, toJson: toCent) int price});
}

/// @nodoc
class _$TimeSlotCopyWithImpl<$Res, $Val extends TimeSlot> implements $TimeSlotCopyWith<$Res> {
  _$TimeSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? duration = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeSlotCopyWith<$Res> implements $TimeSlotCopyWith<$Res> {
  factory _$$_TimeSlotCopyWith(_$_TimeSlot value, $Res Function(_$_TimeSlot) then) = __$$_TimeSlotCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'start_time', fromJson: timeFromString, toJson: timeToString) DateTime startTime,
      @DurationConverter() Duration duration,
      @JsonKey(fromJson: toRubles, toJson: toCent) int price});
}

/// @nodoc
class __$$_TimeSlotCopyWithImpl<$Res> extends _$TimeSlotCopyWithImpl<$Res, _$_TimeSlot>
    implements _$$_TimeSlotCopyWith<$Res> {
  __$$_TimeSlotCopyWithImpl(_$_TimeSlot _value, $Res Function(_$_TimeSlot) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? duration = null,
    Object? price = null,
  }) {
    return _then(_$_TimeSlot(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeSlot extends _TimeSlot {
  _$_TimeSlot(
      {required this.id,
      @JsonKey(name: 'start_time', fromJson: timeFromString, toJson: timeToString) required this.startTime,
      @DurationConverter() required this.duration,
      @JsonKey(fromJson: toRubles, toJson: toCent) required this.price})
      : super._();

  factory _$_TimeSlot.fromJson(Map<String, dynamic> json) => _$$_TimeSlotFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'start_time', fromJson: timeFromString, toJson: timeToString)
  final DateTime startTime;
  @override
  @DurationConverter()
  final Duration duration;
  @override
  @JsonKey(fromJson: toRubles, toJson: toCent)
  final int price;

  @override
  String toString() {
    return 'TimeSlot(id: $id, startTime: $startTime, duration: $duration, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeSlot &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) || other.startTime == startTime) &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, startTime, duration, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeSlotCopyWith<_$_TimeSlot> get copyWith => __$$_TimeSlotCopyWithImpl<_$_TimeSlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeSlotToJson(
      this,
    );
  }
}

abstract class _TimeSlot extends TimeSlot {
  factory _TimeSlot(
      {required final String id,
      @JsonKey(name: 'start_time', fromJson: timeFromString, toJson: timeToString) required final DateTime startTime,
      @DurationConverter() required final Duration duration,
      @JsonKey(fromJson: toRubles, toJson: toCent) required final int price}) = _$_TimeSlot;
  _TimeSlot._() : super._();

  factory _TimeSlot.fromJson(Map<String, dynamic> json) = _$_TimeSlot.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'start_time', fromJson: timeFromString, toJson: timeToString)
  DateTime get startTime;
  @override
  @DurationConverter()
  Duration get duration;
  @override
  @JsonKey(fromJson: toRubles, toJson: toCent)
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_TimeSlotCopyWith<_$_TimeSlot> get copyWith => throw _privateConstructorUsedError;
}
