// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminWorkout _$AdminWorkoutFromJson(Map<String, dynamic> json) {
  return _AdminWorkout.fromJson(json);
}

/// @nodoc
mixin _$AdminWorkout {
  @JsonKey(name: 'id')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  AdminUser get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'price', fromJson: toRubles, toJson: toCent)
  int get price => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
  DateTime get planStartTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
  DateTime get planEndTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_start_time')
  DateTime? get factStartTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_end_time')
  DateTime? get factEndTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  WorkoutStatusEnum? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_overdue')
  bool? get isOverdue => throw _privateConstructorUsedError;
  @JsonKey(name: 'key')
  String? get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminWorkoutCopyWith<AdminWorkout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminWorkoutCopyWith<$Res> {
  factory $AdminWorkoutCopyWith(AdminWorkout value, $Res Function(AdminWorkout) then) =
      _$AdminWorkoutCopyWithImpl<$Res, AdminWorkout>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String? uuid,
      @JsonKey(name: 'user')
          AdminUser user,
      @JsonKey(name: 'price', fromJson: toRubles, toJson: toCent)
          int price,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
          DateTime planStartTime,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
          DateTime planEndTime,
      @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_start_time')
          DateTime? factStartTime,
      @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_end_time')
          DateTime? factEndTime,
      @JsonKey(name: 'status')
          WorkoutStatusEnum? status,
      @JsonKey(name: 'is_overdue')
          bool? isOverdue,
      @JsonKey(name: 'key')
          String? key});

  $AdminUserCopyWith<$Res> get user;
}

/// @nodoc
class _$AdminWorkoutCopyWithImpl<$Res, $Val extends AdminWorkout> implements $AdminWorkoutCopyWith<$Res> {
  _$AdminWorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? user = null,
    Object? price = null,
    Object? planStartTime = null,
    Object? planEndTime = null,
    Object? factStartTime = freezed,
    Object? factEndTime = freezed,
    Object? status = freezed,
    Object? isOverdue = freezed,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AdminUser,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      planStartTime: null == planStartTime
          ? _value.planStartTime
          : planStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      planEndTime: null == planEndTime
          ? _value.planEndTime
          : planEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      factStartTime: freezed == factStartTime
          ? _value.factStartTime
          : factStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      factEndTime: freezed == factEndTime
          ? _value.factEndTime
          : factEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WorkoutStatusEnum?,
      isOverdue: freezed == isOverdue
          ? _value.isOverdue
          : isOverdue // ignore: cast_nullable_to_non_nullable
              as bool?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdminUserCopyWith<$Res> get user {
    return $AdminUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AdminWorkoutCopyWith<$Res> implements $AdminWorkoutCopyWith<$Res> {
  factory _$$_AdminWorkoutCopyWith(_$_AdminWorkout value, $Res Function(_$_AdminWorkout) then) =
      __$$_AdminWorkoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String? uuid,
      @JsonKey(name: 'user')
          AdminUser user,
      @JsonKey(name: 'price', fromJson: toRubles, toJson: toCent)
          int price,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
          DateTime planStartTime,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
          DateTime planEndTime,
      @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_start_time')
          DateTime? factStartTime,
      @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_end_time')
          DateTime? factEndTime,
      @JsonKey(name: 'status')
          WorkoutStatusEnum? status,
      @JsonKey(name: 'is_overdue')
          bool? isOverdue,
      @JsonKey(name: 'key')
          String? key});

  @override
  $AdminUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AdminWorkoutCopyWithImpl<$Res> extends _$AdminWorkoutCopyWithImpl<$Res, _$_AdminWorkout>
    implements _$$_AdminWorkoutCopyWith<$Res> {
  __$$_AdminWorkoutCopyWithImpl(_$_AdminWorkout _value, $Res Function(_$_AdminWorkout) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? user = null,
    Object? price = null,
    Object? planStartTime = null,
    Object? planEndTime = null,
    Object? factStartTime = freezed,
    Object? factEndTime = freezed,
    Object? status = freezed,
    Object? isOverdue = freezed,
    Object? key = freezed,
  }) {
    return _then(_$_AdminWorkout(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AdminUser,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      planStartTime: null == planStartTime
          ? _value.planStartTime
          : planStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      planEndTime: null == planEndTime
          ? _value.planEndTime
          : planEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      factStartTime: freezed == factStartTime
          ? _value.factStartTime
          : factStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      factEndTime: freezed == factEndTime
          ? _value.factEndTime
          : factEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WorkoutStatusEnum?,
      isOverdue: freezed == isOverdue
          ? _value.isOverdue
          : isOverdue // ignore: cast_nullable_to_non_nullable
              as bool?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminWorkout extends _AdminWorkout {
  const _$_AdminWorkout(
      {@JsonKey(name: 'id')
          this.uuid,
      @JsonKey(name: 'user')
          required this.user,
      @JsonKey(name: 'price', fromJson: toRubles, toJson: toCent)
          required this.price,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
          required this.planStartTime,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
          required this.planEndTime,
      @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_start_time')
          this.factStartTime,
      @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_end_time')
          this.factEndTime,
      @JsonKey(name: 'status')
          this.status,
      @JsonKey(name: 'is_overdue')
          this.isOverdue,
      @JsonKey(name: 'key')
          this.key})
      : super._();

  factory _$_AdminWorkout.fromJson(Map<String, dynamic> json) => _$$_AdminWorkoutFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? uuid;
  @override
  @JsonKey(name: 'user')
  final AdminUser user;
  @override
  @JsonKey(name: 'price', fromJson: toRubles, toJson: toCent)
  final int price;
  @override
  @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
  final DateTime planStartTime;
  @override
  @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
  final DateTime planEndTime;
  @override
  @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_start_time')
  final DateTime? factStartTime;
  @override
  @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_end_time')
  final DateTime? factEndTime;
  @override
  @JsonKey(name: 'status')
  final WorkoutStatusEnum? status;
  @override
  @JsonKey(name: 'is_overdue')
  final bool? isOverdue;
  @override
  @JsonKey(name: 'key')
  final String? key;

  @override
  String toString() {
    return 'AdminWorkout(uuid: $uuid, user: $user, price: $price, planStartTime: $planStartTime, planEndTime: $planEndTime, factStartTime: $factStartTime, factEndTime: $factEndTime, status: $status, isOverdue: $isOverdue, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminWorkout &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.planStartTime, planStartTime) || other.planStartTime == planStartTime) &&
            (identical(other.planEndTime, planEndTime) || other.planEndTime == planEndTime) &&
            (identical(other.factStartTime, factStartTime) || other.factStartTime == factStartTime) &&
            (identical(other.factEndTime, factEndTime) || other.factEndTime == factEndTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isOverdue, isOverdue) || other.isOverdue == isOverdue) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uuid, user, price, planStartTime, planEndTime, factStartTime, factEndTime, status, isOverdue, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminWorkoutCopyWith<_$_AdminWorkout> get copyWith =>
      __$$_AdminWorkoutCopyWithImpl<_$_AdminWorkout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminWorkoutToJson(
      this,
    );
  }
}

abstract class _AdminWorkout extends AdminWorkout {
  const factory _AdminWorkout(
      {@JsonKey(name: 'id')
          final String? uuid,
      @JsonKey(name: 'user')
          required final AdminUser user,
      @JsonKey(name: 'price', fromJson: toRubles, toJson: toCent)
          required final int price,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
          required final DateTime planStartTime,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
          required final DateTime planEndTime,
      @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_start_time')
          final DateTime? factStartTime,
      @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_end_time')
          final DateTime? factEndTime,
      @JsonKey(name: 'status')
          final WorkoutStatusEnum? status,
      @JsonKey(name: 'is_overdue')
          final bool? isOverdue,
      @JsonKey(name: 'key')
          final String? key}) = _$_AdminWorkout;
  const _AdminWorkout._() : super._();

  factory _AdminWorkout.fromJson(Map<String, dynamic> json) = _$_AdminWorkout.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get uuid;
  @override
  @JsonKey(name: 'user')
  AdminUser get user;
  @override
  @JsonKey(name: 'price', fromJson: toRubles, toJson: toCent)
  int get price;
  @override
  @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
  DateTime get planStartTime;
  @override
  @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
  DateTime get planEndTime;
  @override
  @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_start_time')
  DateTime? get factStartTime;
  @override
  @JsonKey(fromJson: dateTimeFromStringNullableRemoveUTC, toJson: dateTimeToStringNullable, name: 'fact_end_time')
  DateTime? get factEndTime;
  @override
  @JsonKey(name: 'status')
  WorkoutStatusEnum? get status;
  @override
  @JsonKey(name: 'is_overdue')
  bool? get isOverdue;
  @override
  @JsonKey(name: 'key')
  String? get key;
  @override
  @JsonKey(ignore: true)
  _$$_AdminWorkoutCopyWith<_$_AdminWorkout> get copyWith => throw _privateConstructorUsedError;
}
