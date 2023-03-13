// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Workout _$WorkoutFromJson(Map<String, dynamic> json) {
  return _Workout.fromJson(json);
}

/// @nodoc
mixin _$Workout {
  @JsonKey(name: 'id')
  String get uuid => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  @JsonKey(toJson: toCent, fromJson: toRubles)
  int get price => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
  DateTime get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'club')
  PartnerClub get club => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_form')
  String? get payForm => throw _privateConstructorUsedError;
  WorkoutStatusEnum get status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_start_time')
  DateTime? get factStartTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_end_time')
  DateTime? get factEndTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutCopyWith<Workout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) = _$WorkoutCopyWithImpl<$Res, Workout>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String uuid,
      String user,
      @JsonKey(toJson: toCent, fromJson: toRubles)
          int price,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
          DateTime startTime,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
          DateTime endTime,
      @JsonKey(name: 'club')
          PartnerClub club,
      @JsonKey(name: 'pay_form')
          String? payForm,
      WorkoutStatusEnum status,
      @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_start_time')
          DateTime? factStartTime,
      @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_end_time')
          DateTime? factEndTime});

  $PartnerClubCopyWith<$Res> get club;
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res, $Val extends Workout> implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? user = null,
    Object? price = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? club = null,
    Object? payForm = freezed,
    Object? status = null,
    Object? factStartTime = freezed,
    Object? factEndTime = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
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
      club: null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as PartnerClub,
      payForm: freezed == payForm
          ? _value.payForm
          : payForm // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WorkoutStatusEnum,
      factStartTime: freezed == factStartTime
          ? _value.factStartTime
          : factStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      factEndTime: freezed == factEndTime
          ? _value.factEndTime
          : factEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnerClubCopyWith<$Res> get club {
    return $PartnerClubCopyWith<$Res>(_value.club, (value) {
      return _then(_value.copyWith(club: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WorkoutCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$$_WorkoutCopyWith(_$_Workout value, $Res Function(_$_Workout) then) = __$$_WorkoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String uuid,
      String user,
      @JsonKey(toJson: toCent, fromJson: toRubles)
          int price,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
          DateTime startTime,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
          DateTime endTime,
      @JsonKey(name: 'club')
          PartnerClub club,
      @JsonKey(name: 'pay_form')
          String? payForm,
      WorkoutStatusEnum status,
      @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_start_time')
          DateTime? factStartTime,
      @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_end_time')
          DateTime? factEndTime});

  @override
  $PartnerClubCopyWith<$Res> get club;
}

/// @nodoc
class __$$_WorkoutCopyWithImpl<$Res> extends _$WorkoutCopyWithImpl<$Res, _$_Workout>
    implements _$$_WorkoutCopyWith<$Res> {
  __$$_WorkoutCopyWithImpl(_$_Workout _value, $Res Function(_$_Workout) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? user = null,
    Object? price = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? club = null,
    Object? payForm = freezed,
    Object? status = null,
    Object? factStartTime = freezed,
    Object? factEndTime = freezed,
  }) {
    return _then(_$_Workout(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
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
      club: null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as PartnerClub,
      payForm: freezed == payForm
          ? _value.payForm
          : payForm // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WorkoutStatusEnum,
      factStartTime: freezed == factStartTime
          ? _value.factStartTime
          : factStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      factEndTime: freezed == factEndTime
          ? _value.factEndTime
          : factEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Workout extends _Workout {
  _$_Workout(
      {@JsonKey(name: 'id')
          required this.uuid,
      required this.user,
      @JsonKey(toJson: toCent, fromJson: toRubles)
          required this.price,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
          required this.startTime,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
          required this.endTime,
      @JsonKey(name: 'club')
          required this.club,
      @JsonKey(name: 'pay_form')
          required this.payForm,
      required this.status,
      @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_start_time')
          required this.factStartTime,
      @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_end_time')
          required this.factEndTime})
      : super._();

  factory _$_Workout.fromJson(Map<String, dynamic> json) => _$$_WorkoutFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String uuid;
  @override
  final String user;
  @override
  @JsonKey(toJson: toCent, fromJson: toRubles)
  final int price;
  @override
  @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
  final DateTime startTime;
  @override
  @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
  final DateTime endTime;
  @override
  @JsonKey(name: 'club')
  final PartnerClub club;
  @override
  @JsonKey(name: 'pay_form')
  final String? payForm;
  @override
  final WorkoutStatusEnum status;
  @override
  @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_start_time')
  final DateTime? factStartTime;
  @override
  @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_end_time')
  final DateTime? factEndTime;

  @override
  String toString() {
    return 'Workout(uuid: $uuid, user: $user, price: $price, startTime: $startTime, endTime: $endTime, club: $club, payForm: $payForm, status: $status, factStartTime: $factStartTime, factEndTime: $factEndTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Workout &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.startTime, startTime) || other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.club, club) || other.club == club) &&
            (identical(other.payForm, payForm) || other.payForm == payForm) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.factStartTime, factStartTime) || other.factStartTime == factStartTime) &&
            (identical(other.factEndTime, factEndTime) || other.factEndTime == factEndTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uuid, user, price, startTime, endTime, club, payForm, status, factStartTime, factEndTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutCopyWith<_$_Workout> get copyWith => __$$_WorkoutCopyWithImpl<_$_Workout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutToJson(
      this,
    );
  }
}

abstract class _Workout extends Workout {
  factory _Workout(
      {@JsonKey(name: 'id')
          required final String uuid,
      required final String user,
      @JsonKey(toJson: toCent, fromJson: toRubles)
          required final int price,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
          required final DateTime startTime,
      @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
          required final DateTime endTime,
      @JsonKey(name: 'club')
          required final PartnerClub club,
      @JsonKey(name: 'pay_form')
          required final String? payForm,
      required final WorkoutStatusEnum status,
      @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_start_time')
          required final DateTime? factStartTime,
      @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_end_time')
          required final DateTime? factEndTime}) = _$_Workout;
  _Workout._() : super._();

  factory _Workout.fromJson(Map<String, dynamic> json) = _$_Workout.fromJson;

  @override
  @JsonKey(name: 'id')
  String get uuid;
  @override
  String get user;
  @override
  @JsonKey(toJson: toCent, fromJson: toRubles)
  int get price;
  @override
  @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_start_time')
  DateTime get startTime;
  @override
  @JsonKey(fromJson: dateTimeFromStringRemoveUTC, toJson: dateTimeToString, name: 'plan_end_time')
  DateTime get endTime;
  @override
  @JsonKey(name: 'club')
  PartnerClub get club;
  @override
  @JsonKey(name: 'pay_form')
  String? get payForm;
  @override
  WorkoutStatusEnum get status;
  @override
  @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_start_time')
  DateTime? get factStartTime;
  @override
  @JsonKey(fromJson: dateTimeFromStringNullable, toJson: dateTimeToStringNullable, name: 'fact_end_time')
  DateTime? get factEndTime;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutCopyWith<_$_Workout> get copyWith => throw _privateConstructorUsedError;
}
