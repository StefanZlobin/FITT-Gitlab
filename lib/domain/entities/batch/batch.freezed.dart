// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'batch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Batch _$BatchFromJson(Map<String, dynamic> json) {
  return _Batch.fromJson(json);
}

/// @nodoc
mixin _$Batch {
  @JsonKey(name: 'id')
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'club_id')
  String get clubUuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'expire_at')
  DateTime? get expireAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'hours')
  int? get hours => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_price', fromJson: toRubles, toJson: toCent)
  int get fullPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'fact_price', fromJson: toRubles, toJson: toCent)
  int get factPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  String? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale')
  int? get sale => throw _privateConstructorUsedError;
  @JsonKey(name: 'marks')
  List<BatchMark>? get marks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BatchCopyWith<Batch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchCopyWith<$Res> {
  factory $BatchCopyWith(Batch value, $Res Function(Batch) then) = _$BatchCopyWithImpl<$Res, Batch>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int uuid,
      @JsonKey(name: 'club_id') String clubUuid,
      @JsonKey(name: 'expire_at') DateTime? expireAt,
      @JsonKey(name: 'hours') int? hours,
      @JsonKey(name: 'full_price', fromJson: toRubles, toJson: toCent) int fullPrice,
      @JsonKey(name: 'fact_price', fromJson: toRubles, toJson: toCent) int factPrice,
      @JsonKey(name: 'duration') String? duration,
      @JsonKey(name: 'sale') int? sale,
      @JsonKey(name: 'marks') List<BatchMark>? marks});
}

/// @nodoc
class _$BatchCopyWithImpl<$Res, $Val extends Batch> implements $BatchCopyWith<$Res> {
  _$BatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? clubUuid = null,
    Object? expireAt = freezed,
    Object? hours = freezed,
    Object? fullPrice = null,
    Object? factPrice = null,
    Object? duration = freezed,
    Object? sale = freezed,
    Object? marks = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      clubUuid: null == clubUuid
          ? _value.clubUuid
          : clubUuid // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: freezed == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      fullPrice: null == fullPrice
          ? _value.fullPrice
          : fullPrice // ignore: cast_nullable_to_non_nullable
              as int,
      factPrice: null == factPrice
          ? _value.factPrice
          : factPrice // ignore: cast_nullable_to_non_nullable
              as int,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      sale: freezed == sale
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as int?,
      marks: freezed == marks
          ? _value.marks
          : marks // ignore: cast_nullable_to_non_nullable
              as List<BatchMark>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BatchCopyWith<$Res> implements $BatchCopyWith<$Res> {
  factory _$$_BatchCopyWith(_$_Batch value, $Res Function(_$_Batch) then) = __$$_BatchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int uuid,
      @JsonKey(name: 'club_id') String clubUuid,
      @JsonKey(name: 'expire_at') DateTime? expireAt,
      @JsonKey(name: 'hours') int? hours,
      @JsonKey(name: 'full_price', fromJson: toRubles, toJson: toCent) int fullPrice,
      @JsonKey(name: 'fact_price', fromJson: toRubles, toJson: toCent) int factPrice,
      @JsonKey(name: 'duration') String? duration,
      @JsonKey(name: 'sale') int? sale,
      @JsonKey(name: 'marks') List<BatchMark>? marks});
}

/// @nodoc
class __$$_BatchCopyWithImpl<$Res> extends _$BatchCopyWithImpl<$Res, _$_Batch> implements _$$_BatchCopyWith<$Res> {
  __$$_BatchCopyWithImpl(_$_Batch _value, $Res Function(_$_Batch) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? clubUuid = null,
    Object? expireAt = freezed,
    Object? hours = freezed,
    Object? fullPrice = null,
    Object? factPrice = null,
    Object? duration = freezed,
    Object? sale = freezed,
    Object? marks = freezed,
  }) {
    return _then(_$_Batch(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      clubUuid: null == clubUuid
          ? _value.clubUuid
          : clubUuid // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: freezed == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      fullPrice: null == fullPrice
          ? _value.fullPrice
          : fullPrice // ignore: cast_nullable_to_non_nullable
              as int,
      factPrice: null == factPrice
          ? _value.factPrice
          : factPrice // ignore: cast_nullable_to_non_nullable
              as int,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      sale: freezed == sale
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as int?,
      marks: freezed == marks
          ? _value._marks
          : marks // ignore: cast_nullable_to_non_nullable
              as List<BatchMark>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Batch extends _Batch {
  _$_Batch(
      {@JsonKey(name: 'id') required this.uuid,
      @JsonKey(name: 'club_id') required this.clubUuid,
      @JsonKey(name: 'expire_at') this.expireAt,
      @JsonKey(name: 'hours') this.hours,
      @JsonKey(name: 'full_price', fromJson: toRubles, toJson: toCent) required this.fullPrice,
      @JsonKey(name: 'fact_price', fromJson: toRubles, toJson: toCent) required this.factPrice,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'sale') this.sale,
      @JsonKey(name: 'marks') final List<BatchMark>? marks})
      : _marks = marks,
        super._();

  factory _$_Batch.fromJson(Map<String, dynamic> json) => _$$_BatchFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int uuid;
  @override
  @JsonKey(name: 'club_id')
  final String clubUuid;
  @override
  @JsonKey(name: 'expire_at')
  final DateTime? expireAt;
  @override
  @JsonKey(name: 'hours')
  final int? hours;
  @override
  @JsonKey(name: 'full_price', fromJson: toRubles, toJson: toCent)
  final int fullPrice;
  @override
  @JsonKey(name: 'fact_price', fromJson: toRubles, toJson: toCent)
  final int factPrice;
  @override
  @JsonKey(name: 'duration')
  final String? duration;
  @override
  @JsonKey(name: 'sale')
  final int? sale;
  final List<BatchMark>? _marks;
  @override
  @JsonKey(name: 'marks')
  List<BatchMark>? get marks {
    final value = _marks;
    if (value == null) return null;
    if (_marks is EqualUnmodifiableListView) return _marks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Batch(uuid: $uuid, clubUuid: $clubUuid, expireAt: $expireAt, hours: $hours, fullPrice: $fullPrice, factPrice: $factPrice, duration: $duration, sale: $sale, marks: $marks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Batch &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.clubUuid, clubUuid) || other.clubUuid == clubUuid) &&
            (identical(other.expireAt, expireAt) || other.expireAt == expireAt) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.fullPrice, fullPrice) || other.fullPrice == fullPrice) &&
            (identical(other.factPrice, factPrice) || other.factPrice == factPrice) &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.sale, sale) || other.sale == sale) &&
            const DeepCollectionEquality().equals(other._marks, _marks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, clubUuid, expireAt, hours, fullPrice, factPrice, duration, sale,
      const DeepCollectionEquality().hash(_marks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BatchCopyWith<_$_Batch> get copyWith => __$$_BatchCopyWithImpl<_$_Batch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BatchToJson(
      this,
    );
  }
}

abstract class _Batch extends Batch {
  factory _Batch(
      {@JsonKey(name: 'id') required final int uuid,
      @JsonKey(name: 'club_id') required final String clubUuid,
      @JsonKey(name: 'expire_at') final DateTime? expireAt,
      @JsonKey(name: 'hours') final int? hours,
      @JsonKey(name: 'full_price', fromJson: toRubles, toJson: toCent) required final int fullPrice,
      @JsonKey(name: 'fact_price', fromJson: toRubles, toJson: toCent) required final int factPrice,
      @JsonKey(name: 'duration') final String? duration,
      @JsonKey(name: 'sale') final int? sale,
      @JsonKey(name: 'marks') final List<BatchMark>? marks}) = _$_Batch;
  _Batch._() : super._();

  factory _Batch.fromJson(Map<String, dynamic> json) = _$_Batch.fromJson;

  @override
  @JsonKey(name: 'id')
  int get uuid;
  @override
  @JsonKey(name: 'club_id')
  String get clubUuid;
  @override
  @JsonKey(name: 'expire_at')
  DateTime? get expireAt;
  @override
  @JsonKey(name: 'hours')
  int? get hours;
  @override
  @JsonKey(name: 'full_price', fromJson: toRubles, toJson: toCent)
  int get fullPrice;
  @override
  @JsonKey(name: 'fact_price', fromJson: toRubles, toJson: toCent)
  int get factPrice;
  @override
  @JsonKey(name: 'duration')
  String? get duration;
  @override
  @JsonKey(name: 'sale')
  int? get sale;
  @override
  @JsonKey(name: 'marks')
  List<BatchMark>? get marks;
  @override
  @JsonKey(ignore: true)
  _$$_BatchCopyWith<_$_Batch> get copyWith => throw _privateConstructorUsedError;
}
