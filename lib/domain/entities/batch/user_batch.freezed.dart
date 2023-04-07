// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_batch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBatch _$UserBatchFromJson(Map<String, dynamic> json) {
  return _UserBatch.fromJson(json);
}

/// @nodoc
mixin _$UserBatch {
  @JsonKey(name: 'id')
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'club')
  ClubBatchInfo get club => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_hours')
  double get availableHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_hours')
  int get totalHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'batch_duration')
  String get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'expire_at')
  String get expireAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_cancelled')
  bool get canCancell => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBatchCopyWith<UserBatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBatchCopyWith<$Res> {
  factory $UserBatchCopyWith(UserBatch value, $Res Function(UserBatch) then) =
      _$UserBatchCopyWithImpl<$Res, UserBatch>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String uuid,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'club') ClubBatchInfo club,
      @JsonKey(name: 'available_hours') double availableHours,
      @JsonKey(name: 'total_hours') int totalHours,
      @JsonKey(name: 'batch_duration') String duration,
      @JsonKey(name: 'expire_at') String expireAt,
      @JsonKey(name: 'can_cancelled') bool canCancell});

  $ClubBatchInfoCopyWith<$Res> get club;
}

/// @nodoc
class _$UserBatchCopyWithImpl<$Res, $Val extends UserBatch>
    implements $UserBatchCopyWith<$Res> {
  _$UserBatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? status = null,
    Object? club = null,
    Object? availableHours = null,
    Object? totalHours = null,
    Object? duration = null,
    Object? expireAt = null,
    Object? canCancell = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      club: null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as ClubBatchInfo,
      availableHours: null == availableHours
          ? _value.availableHours
          : availableHours // ignore: cast_nullable_to_non_nullable
              as double,
      totalHours: null == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as String,
      canCancell: null == canCancell
          ? _value.canCancell
          : canCancell // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClubBatchInfoCopyWith<$Res> get club {
    return $ClubBatchInfoCopyWith<$Res>(_value.club, (value) {
      return _then(_value.copyWith(club: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserBatchCopyWith<$Res> implements $UserBatchCopyWith<$Res> {
  factory _$$_UserBatchCopyWith(
          _$_UserBatch value, $Res Function(_$_UserBatch) then) =
      __$$_UserBatchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String uuid,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'club') ClubBatchInfo club,
      @JsonKey(name: 'available_hours') double availableHours,
      @JsonKey(name: 'total_hours') int totalHours,
      @JsonKey(name: 'batch_duration') String duration,
      @JsonKey(name: 'expire_at') String expireAt,
      @JsonKey(name: 'can_cancelled') bool canCancell});

  @override
  $ClubBatchInfoCopyWith<$Res> get club;
}

/// @nodoc
class __$$_UserBatchCopyWithImpl<$Res>
    extends _$UserBatchCopyWithImpl<$Res, _$_UserBatch>
    implements _$$_UserBatchCopyWith<$Res> {
  __$$_UserBatchCopyWithImpl(
      _$_UserBatch _value, $Res Function(_$_UserBatch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? status = null,
    Object? club = null,
    Object? availableHours = null,
    Object? totalHours = null,
    Object? duration = null,
    Object? expireAt = null,
    Object? canCancell = null,
  }) {
    return _then(_$_UserBatch(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      club: null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as ClubBatchInfo,
      availableHours: null == availableHours
          ? _value.availableHours
          : availableHours // ignore: cast_nullable_to_non_nullable
              as double,
      totalHours: null == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as String,
      canCancell: null == canCancell
          ? _value.canCancell
          : canCancell // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserBatch extends _UserBatch {
  _$_UserBatch(
      {@JsonKey(name: 'id') required this.uuid,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'club') required this.club,
      @JsonKey(name: 'available_hours') required this.availableHours,
      @JsonKey(name: 'total_hours') required this.totalHours,
      @JsonKey(name: 'batch_duration') required this.duration,
      @JsonKey(name: 'expire_at') required this.expireAt,
      @JsonKey(name: 'can_cancelled') required this.canCancell})
      : super._();

  factory _$_UserBatch.fromJson(Map<String, dynamic> json) =>
      _$$_UserBatchFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String uuid;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'club')
  final ClubBatchInfo club;
  @override
  @JsonKey(name: 'available_hours')
  final double availableHours;
  @override
  @JsonKey(name: 'total_hours')
  final int totalHours;
  @override
  @JsonKey(name: 'batch_duration')
  final String duration;
  @override
  @JsonKey(name: 'expire_at')
  final String expireAt;
  @override
  @JsonKey(name: 'can_cancelled')
  final bool canCancell;

  @override
  String toString() {
    return 'UserBatch(uuid: $uuid, status: $status, club: $club, availableHours: $availableHours, totalHours: $totalHours, duration: $duration, expireAt: $expireAt, canCancell: $canCancell)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserBatch &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.club, club) || other.club == club) &&
            (identical(other.availableHours, availableHours) ||
                other.availableHours == availableHours) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt) &&
            (identical(other.canCancell, canCancell) ||
                other.canCancell == canCancell));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, status, club,
      availableHours, totalHours, duration, expireAt, canCancell);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserBatchCopyWith<_$_UserBatch> get copyWith =>
      __$$_UserBatchCopyWithImpl<_$_UserBatch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBatchToJson(
      this,
    );
  }
}

abstract class _UserBatch extends UserBatch {
  factory _UserBatch(
      {@JsonKey(name: 'id')
          required final String uuid,
      @JsonKey(name: 'status')
          required final String status,
      @JsonKey(name: 'club')
          required final ClubBatchInfo club,
      @JsonKey(name: 'available_hours')
          required final double availableHours,
      @JsonKey(name: 'total_hours')
          required final int totalHours,
      @JsonKey(name: 'batch_duration')
          required final String duration,
      @JsonKey(name: 'expire_at')
          required final String expireAt,
      @JsonKey(name: 'can_cancelled')
          required final bool canCancell}) = _$_UserBatch;
  _UserBatch._() : super._();

  factory _UserBatch.fromJson(Map<String, dynamic> json) =
      _$_UserBatch.fromJson;

  @override
  @JsonKey(name: 'id')
  String get uuid;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'club')
  ClubBatchInfo get club;
  @override
  @JsonKey(name: 'available_hours')
  double get availableHours;
  @override
  @JsonKey(name: 'total_hours')
  int get totalHours;
  @override
  @JsonKey(name: 'batch_duration')
  String get duration;
  @override
  @JsonKey(name: 'expire_at')
  String get expireAt;
  @override
  @JsonKey(name: 'can_cancelled')
  bool get canCancell;
  @override
  @JsonKey(ignore: true)
  _$$_UserBatchCopyWith<_$_UserBatch> get copyWith =>
      throw _privateConstructorUsedError;
}
