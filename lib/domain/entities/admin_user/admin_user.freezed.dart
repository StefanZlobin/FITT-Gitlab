// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminUser _$AdminUserFromJson(Map<String, dynamic> json) {
  return _AdminUser.fromJson(json);
}

/// @nodoc
mixin _$AdminUser {
  @JsonKey(name: 'fullname')
  String? get fullname => throw _privateConstructorUsedError;
  @JsonKey(name: 'age')
  int? get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  UserGenderEnum? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_num')
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminUserCopyWith<AdminUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminUserCopyWith<$Res> {
  factory $AdminUserCopyWith(AdminUser value, $Res Function(AdminUser) then) = _$AdminUserCopyWithImpl<$Res, AdminUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fullname') String? fullname,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'gender') UserGenderEnum? gender,
      @JsonKey(name: 'check_num') String? userId});
}

/// @nodoc
class _$AdminUserCopyWithImpl<$Res, $Val extends AdminUser> implements $AdminUserCopyWith<$Res> {
  _$AdminUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGenderEnum?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminUserCopyWith<$Res> implements $AdminUserCopyWith<$Res> {
  factory _$$_AdminUserCopyWith(_$_AdminUser value, $Res Function(_$_AdminUser) then) =
      __$$_AdminUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fullname') String? fullname,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'gender') UserGenderEnum? gender,
      @JsonKey(name: 'check_num') String? userId});
}

/// @nodoc
class __$$_AdminUserCopyWithImpl<$Res> extends _$AdminUserCopyWithImpl<$Res, _$_AdminUser>
    implements _$$_AdminUserCopyWith<$Res> {
  __$$_AdminUserCopyWithImpl(_$_AdminUser _value, $Res Function(_$_AdminUser) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_AdminUser(
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGenderEnum?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminUser implements _AdminUser {
  const _$_AdminUser(
      {@JsonKey(name: 'fullname') this.fullname,
      @JsonKey(name: 'age') this.age,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'check_num') this.userId});

  factory _$_AdminUser.fromJson(Map<String, dynamic> json) => _$$_AdminUserFromJson(json);

  @override
  @JsonKey(name: 'fullname')
  final String? fullname;
  @override
  @JsonKey(name: 'age')
  final int? age;
  @override
  @JsonKey(name: 'gender')
  final UserGenderEnum? gender;
  @override
  @JsonKey(name: 'check_num')
  final String? userId;

  @override
  String toString() {
    return 'AdminUser(fullname: $fullname, age: $age, gender: $gender, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminUser &&
            (identical(other.fullname, fullname) || other.fullname == fullname) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullname, age, gender, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminUserCopyWith<_$_AdminUser> get copyWith => __$$_AdminUserCopyWithImpl<_$_AdminUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminUserToJson(
      this,
    );
  }
}

abstract class _AdminUser implements AdminUser {
  const factory _AdminUser(
      {@JsonKey(name: 'fullname') final String? fullname,
      @JsonKey(name: 'age') final int? age,
      @JsonKey(name: 'gender') final UserGenderEnum? gender,
      @JsonKey(name: 'check_num') final String? userId}) = _$_AdminUser;

  factory _AdminUser.fromJson(Map<String, dynamic> json) = _$_AdminUser.fromJson;

  @override
  @JsonKey(name: 'fullname')
  String? get fullname;
  @override
  @JsonKey(name: 'age')
  int? get age;
  @override
  @JsonKey(name: 'gender')
  UserGenderEnum? get gender;
  @override
  @JsonKey(name: 'check_num')
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$_AdminUserCopyWith<_$_AdminUser> get copyWith => throw _privateConstructorUsedError;
}
