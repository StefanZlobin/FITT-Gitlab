// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'patronymic')
  String? get patronomicName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'birthday',
      toJson: dateToStringNullable,
      fromJson: dateFromStringNullable)
  DateTime? get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  List<UserRoleEnum>? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  UserGenderEnum? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet')
  Wallet? get wallet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name')
          String? firstName,
      @JsonKey(name: 'patronymic')
          String? patronomicName,
      @JsonKey(name: 'last_name')
          String? lastName,
      @JsonKey(name: 'birthday', toJson: dateToStringNullable, fromJson: dateFromStringNullable)
          DateTime? birthday,
      @JsonKey(name: 'email')
          String? email,
      @JsonKey(name: 'role')
          List<UserRoleEnum>? role,
      @JsonKey(name: 'gender')
          UserGenderEnum? gender,
      @JsonKey(name: 'phone_number')
          String? phoneNumber,
      @JsonKey(name: 'avatar')
          String? avatar,
      @JsonKey(name: 'wallet')
          Wallet? wallet});

  $WalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? patronomicName = freezed,
    Object? lastName = freezed,
    Object? birthday = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      patronomicName: freezed == patronomicName
          ? _value.patronomicName
          : patronomicName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as List<UserRoleEnum>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGenderEnum?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $WalletCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name')
          String? firstName,
      @JsonKey(name: 'patronymic')
          String? patronomicName,
      @JsonKey(name: 'last_name')
          String? lastName,
      @JsonKey(name: 'birthday', toJson: dateToStringNullable, fromJson: dateFromStringNullable)
          DateTime? birthday,
      @JsonKey(name: 'email')
          String? email,
      @JsonKey(name: 'role')
          List<UserRoleEnum>? role,
      @JsonKey(name: 'gender')
          UserGenderEnum? gender,
      @JsonKey(name: 'phone_number')
          String? phoneNumber,
      @JsonKey(name: 'avatar')
          String? avatar,
      @JsonKey(name: 'wallet')
          Wallet? wallet});

  @override
  $WalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? patronomicName = freezed,
    Object? lastName = freezed,
    Object? birthday = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_$_User(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      patronomicName: freezed == patronomicName
          ? _value.patronomicName
          : patronomicName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value._role
          : role // ignore: cast_nullable_to_non_nullable
              as List<UserRoleEnum>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGenderEnum?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  _$_User(
      {@JsonKey(name: 'first_name')
          required this.firstName,
      @JsonKey(name: 'patronymic')
          required this.patronomicName,
      @JsonKey(name: 'last_name')
          required this.lastName,
      @JsonKey(name: 'birthday', toJson: dateToStringNullable, fromJson: dateFromStringNullable)
          required this.birthday,
      @JsonKey(name: 'email')
          required this.email,
      @JsonKey(name: 'role')
          required final List<UserRoleEnum>? role,
      @JsonKey(name: 'gender')
          required this.gender,
      @JsonKey(name: 'phone_number')
          required this.phoneNumber,
      @JsonKey(name: 'avatar')
          required this.avatar,
      @JsonKey(name: 'wallet')
          required this.wallet})
      : _role = role,
        super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'patronymic')
  final String? patronomicName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(
      name: 'birthday',
      toJson: dateToStringNullable,
      fromJson: dateFromStringNullable)
  final DateTime? birthday;
  @override
  @JsonKey(name: 'email')
  final String? email;
  final List<UserRoleEnum>? _role;
  @override
  @JsonKey(name: 'role')
  List<UserRoleEnum>? get role {
    final value = _role;
    if (value == null) return null;
    if (_role is EqualUnmodifiableListView) return _role;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'gender')
  final UserGenderEnum? gender;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;
  @override
  @JsonKey(name: 'wallet')
  final Wallet? wallet;

  @override
  String toString() {
    return 'User(firstName: $firstName, patronomicName: $patronomicName, lastName: $lastName, birthday: $birthday, email: $email, role: $role, gender: $gender, phoneNumber: $phoneNumber, avatar: $avatar, wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.patronomicName, patronomicName) ||
                other.patronomicName == patronomicName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._role, _role) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.wallet, wallet) || other.wallet == wallet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      patronomicName,
      lastName,
      birthday,
      email,
      const DeepCollectionEquality().hash(_role),
      gender,
      phoneNumber,
      avatar,
      wallet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  factory _User(
      {@JsonKey(name: 'first_name')
          required final String? firstName,
      @JsonKey(name: 'patronymic')
          required final String? patronomicName,
      @JsonKey(name: 'last_name')
          required final String? lastName,
      @JsonKey(name: 'birthday', toJson: dateToStringNullable, fromJson: dateFromStringNullable)
          required final DateTime? birthday,
      @JsonKey(name: 'email')
          required final String? email,
      @JsonKey(name: 'role')
          required final List<UserRoleEnum>? role,
      @JsonKey(name: 'gender')
          required final UserGenderEnum? gender,
      @JsonKey(name: 'phone_number')
          required final String? phoneNumber,
      @JsonKey(name: 'avatar')
          required final String? avatar,
      @JsonKey(name: 'wallet')
          required final Wallet? wallet}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'patronymic')
  String? get patronomicName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(
      name: 'birthday',
      toJson: dateToStringNullable,
      fromJson: dateFromStringNullable)
  DateTime? get birthday;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'role')
  List<UserRoleEnum>? get role;
  @override
  @JsonKey(name: 'gender')
  UserGenderEnum? get gender;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(name: 'wallet')
  Wallet? get wallet;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
