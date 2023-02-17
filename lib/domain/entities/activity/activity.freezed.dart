// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return _Activity.fromJson(json);
}

/// @nodoc
mixin _$Activity {
  @JsonKey(name: 'id')
  String get uuid => throw _privateConstructorUsedError;
  ActivityTypeEnum get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_slots')
  List<DateSlot> get dateSlots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res, Activity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String uuid,
      ActivityTypeEnum type,
      String description,
      @JsonKey(name: 'date_slots') List<DateSlot> dateSlots});
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res, $Val extends Activity>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? type = null,
    Object? description = null,
    Object? dateSlots = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActivityTypeEnum,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateSlots: null == dateSlots
          ? _value.dateSlots
          : dateSlots // ignore: cast_nullable_to_non_nullable
              as List<DateSlot>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$$_ActivityCopyWith(
          _$_Activity value, $Res Function(_$_Activity) then) =
      __$$_ActivityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String uuid,
      ActivityTypeEnum type,
      String description,
      @JsonKey(name: 'date_slots') List<DateSlot> dateSlots});
}

/// @nodoc
class __$$_ActivityCopyWithImpl<$Res>
    extends _$ActivityCopyWithImpl<$Res, _$_Activity>
    implements _$$_ActivityCopyWith<$Res> {
  __$$_ActivityCopyWithImpl(
      _$_Activity _value, $Res Function(_$_Activity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? type = null,
    Object? description = null,
    Object? dateSlots = null,
  }) {
    return _then(_$_Activity(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActivityTypeEnum,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateSlots: null == dateSlots
          ? _value._dateSlots
          : dateSlots // ignore: cast_nullable_to_non_nullable
              as List<DateSlot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Activity implements _Activity {
  _$_Activity(
      {@JsonKey(name: 'id') required this.uuid,
      required this.type,
      required this.description,
      @JsonKey(name: 'date_slots') required final List<DateSlot> dateSlots})
      : _dateSlots = dateSlots;

  factory _$_Activity.fromJson(Map<String, dynamic> json) =>
      _$$_ActivityFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String uuid;
  @override
  final ActivityTypeEnum type;
  @override
  final String description;
  final List<DateSlot> _dateSlots;
  @override
  @JsonKey(name: 'date_slots')
  List<DateSlot> get dateSlots {
    if (_dateSlots is EqualUnmodifiableListView) return _dateSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateSlots);
  }

  @override
  String toString() {
    return 'Activity(uuid: $uuid, type: $type, description: $description, dateSlots: $dateSlots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Activity &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._dateSlots, _dateSlots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, type, description,
      const DeepCollectionEquality().hash(_dateSlots));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActivityCopyWith<_$_Activity> get copyWith =>
      __$$_ActivityCopyWithImpl<_$_Activity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivityToJson(
      this,
    );
  }
}

abstract class _Activity implements Activity {
  factory _Activity(
      {@JsonKey(name: 'id')
          required final String uuid,
      required final ActivityTypeEnum type,
      required final String description,
      @JsonKey(name: 'date_slots')
          required final List<DateSlot> dateSlots}) = _$_Activity;

  factory _Activity.fromJson(Map<String, dynamic> json) = _$_Activity.fromJson;

  @override
  @JsonKey(name: 'id')
  String get uuid;
  @override
  ActivityTypeEnum get type;
  @override
  String get description;
  @override
  @JsonKey(name: 'date_slots')
  List<DateSlot> get dateSlots;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityCopyWith<_$_Activity> get copyWith =>
      throw _privateConstructorUsedError;
}
