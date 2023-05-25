// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String secondName) secondNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(UserGenderEnum gender) genderChanged,
    required TResult Function(ImagePicker imagePicker) photoChanged,
    required TResult Function() accountSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String secondName)? secondNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(DateTime birthday)? birthdayChanged,
    TResult? Function(UserGenderEnum gender)? genderChanged,
    TResult? Function(ImagePicker imagePicker)? photoChanged,
    TResult? Function()? accountSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String secondName)? secondNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(UserGenderEnum gender)? genderChanged,
    TResult Function(ImagePicker imagePicker)? photoChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value)
        firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value)
        secondNameChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventBirthdayChanged value)
        birthdayChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventPhotoChanged value) photoChanged,
    required TResult Function(_AccountEventAccountSubmitted value)
        accountSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult Function(_AccountEventAccountSubmitted value)? accountSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AccountEventFirstNameChangedCopyWith<$Res> {
  factory _$$_AccountEventFirstNameChangedCopyWith(
          _$_AccountEventFirstNameChanged value,
          $Res Function(_$_AccountEventFirstNameChanged) then) =
      __$$_AccountEventFirstNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$_AccountEventFirstNameChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventFirstNameChanged>
    implements _$$_AccountEventFirstNameChangedCopyWith<$Res> {
  __$$_AccountEventFirstNameChangedCopyWithImpl(
      _$_AccountEventFirstNameChanged _value,
      $Res Function(_$_AccountEventFirstNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$_AccountEventFirstNameChanged(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountEventFirstNameChanged implements _AccountEventFirstNameChanged {
  const _$_AccountEventFirstNameChanged({required this.firstName});

  @override
  final String firstName;

  @override
  String toString() {
    return 'AccountEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountEventFirstNameChanged &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountEventFirstNameChangedCopyWith<_$_AccountEventFirstNameChanged>
      get copyWith => __$$_AccountEventFirstNameChangedCopyWithImpl<
          _$_AccountEventFirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String secondName) secondNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(UserGenderEnum gender) genderChanged,
    required TResult Function(ImagePicker imagePicker) photoChanged,
    required TResult Function() accountSubmitted,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String secondName)? secondNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(DateTime birthday)? birthdayChanged,
    TResult? Function(UserGenderEnum gender)? genderChanged,
    TResult? Function(ImagePicker imagePicker)? photoChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String secondName)? secondNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(UserGenderEnum gender)? genderChanged,
    TResult Function(ImagePicker imagePicker)? photoChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value)
        firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value)
        secondNameChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventBirthdayChanged value)
        birthdayChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventPhotoChanged value) photoChanged,
    required TResult Function(_AccountEventAccountSubmitted value)
        accountSubmitted,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult Function(_AccountEventAccountSubmitted value)? accountSubmitted,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _AccountEventFirstNameChanged implements AccountEvent {
  const factory _AccountEventFirstNameChanged(
      {required final String firstName}) = _$_AccountEventFirstNameChanged;

  String get firstName;
  @JsonKey(ignore: true)
  _$$_AccountEventFirstNameChangedCopyWith<_$_AccountEventFirstNameChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountEventSecondNameChangedCopyWith<$Res> {
  factory _$$_AccountEventSecondNameChangedCopyWith(
          _$_AccountEventSecondNameChanged value,
          $Res Function(_$_AccountEventSecondNameChanged) then) =
      __$$_AccountEventSecondNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String secondName});
}

/// @nodoc
class __$$_AccountEventSecondNameChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventSecondNameChanged>
    implements _$$_AccountEventSecondNameChangedCopyWith<$Res> {
  __$$_AccountEventSecondNameChangedCopyWithImpl(
      _$_AccountEventSecondNameChanged _value,
      $Res Function(_$_AccountEventSecondNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secondName = null,
  }) {
    return _then(_$_AccountEventSecondNameChanged(
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountEventSecondNameChanged
    implements _AccountEventSecondNameChanged {
  const _$_AccountEventSecondNameChanged({required this.secondName});

  @override
  final String secondName;

  @override
  String toString() {
    return 'AccountEvent.secondNameChanged(secondName: $secondName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountEventSecondNameChanged &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, secondName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountEventSecondNameChangedCopyWith<_$_AccountEventSecondNameChanged>
      get copyWith => __$$_AccountEventSecondNameChangedCopyWithImpl<
          _$_AccountEventSecondNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String secondName) secondNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(UserGenderEnum gender) genderChanged,
    required TResult Function(ImagePicker imagePicker) photoChanged,
    required TResult Function() accountSubmitted,
  }) {
    return secondNameChanged(secondName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String secondName)? secondNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(DateTime birthday)? birthdayChanged,
    TResult? Function(UserGenderEnum gender)? genderChanged,
    TResult? Function(ImagePicker imagePicker)? photoChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return secondNameChanged?.call(secondName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String secondName)? secondNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(UserGenderEnum gender)? genderChanged,
    TResult Function(ImagePicker imagePicker)? photoChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) {
    if (secondNameChanged != null) {
      return secondNameChanged(secondName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value)
        firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value)
        secondNameChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventBirthdayChanged value)
        birthdayChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventPhotoChanged value) photoChanged,
    required TResult Function(_AccountEventAccountSubmitted value)
        accountSubmitted,
  }) {
    return secondNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return secondNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult Function(_AccountEventAccountSubmitted value)? accountSubmitted,
    required TResult orElse(),
  }) {
    if (secondNameChanged != null) {
      return secondNameChanged(this);
    }
    return orElse();
  }
}

abstract class _AccountEventSecondNameChanged implements AccountEvent {
  const factory _AccountEventSecondNameChanged(
      {required final String secondName}) = _$_AccountEventSecondNameChanged;

  String get secondName;
  @JsonKey(ignore: true)
  _$$_AccountEventSecondNameChangedCopyWith<_$_AccountEventSecondNameChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountEventEmailChangedCopyWith<$Res> {
  factory _$$_AccountEventEmailChangedCopyWith(
          _$_AccountEventEmailChanged value,
          $Res Function(_$_AccountEventEmailChanged) then) =
      __$$_AccountEventEmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_AccountEventEmailChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventEmailChanged>
    implements _$$_AccountEventEmailChangedCopyWith<$Res> {
  __$$_AccountEventEmailChangedCopyWithImpl(_$_AccountEventEmailChanged _value,
      $Res Function(_$_AccountEventEmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_AccountEventEmailChanged(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountEventEmailChanged implements _AccountEventEmailChanged {
  const _$_AccountEventEmailChanged({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AccountEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountEventEmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountEventEmailChangedCopyWith<_$_AccountEventEmailChanged>
      get copyWith => __$$_AccountEventEmailChangedCopyWithImpl<
          _$_AccountEventEmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String secondName) secondNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(UserGenderEnum gender) genderChanged,
    required TResult Function(ImagePicker imagePicker) photoChanged,
    required TResult Function() accountSubmitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String secondName)? secondNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(DateTime birthday)? birthdayChanged,
    TResult? Function(UserGenderEnum gender)? genderChanged,
    TResult? Function(ImagePicker imagePicker)? photoChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String secondName)? secondNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(UserGenderEnum gender)? genderChanged,
    TResult Function(ImagePicker imagePicker)? photoChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value)
        firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value)
        secondNameChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventBirthdayChanged value)
        birthdayChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventPhotoChanged value) photoChanged,
    required TResult Function(_AccountEventAccountSubmitted value)
        accountSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult Function(_AccountEventAccountSubmitted value)? accountSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _AccountEventEmailChanged implements AccountEvent {
  const factory _AccountEventEmailChanged({required final String email}) =
      _$_AccountEventEmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_AccountEventEmailChangedCopyWith<_$_AccountEventEmailChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountEventBirthdayChangedCopyWith<$Res> {
  factory _$$_AccountEventBirthdayChangedCopyWith(
          _$_AccountEventBirthdayChanged value,
          $Res Function(_$_AccountEventBirthdayChanged) then) =
      __$$_AccountEventBirthdayChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime birthday});
}

/// @nodoc
class __$$_AccountEventBirthdayChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventBirthdayChanged>
    implements _$$_AccountEventBirthdayChangedCopyWith<$Res> {
  __$$_AccountEventBirthdayChangedCopyWithImpl(
      _$_AccountEventBirthdayChanged _value,
      $Res Function(_$_AccountEventBirthdayChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthday = null,
  }) {
    return _then(_$_AccountEventBirthdayChanged(
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_AccountEventBirthdayChanged implements _AccountEventBirthdayChanged {
  const _$_AccountEventBirthdayChanged({required this.birthday});

  @override
  final DateTime birthday;

  @override
  String toString() {
    return 'AccountEvent.birthdayChanged(birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountEventBirthdayChanged &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, birthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountEventBirthdayChangedCopyWith<_$_AccountEventBirthdayChanged>
      get copyWith => __$$_AccountEventBirthdayChangedCopyWithImpl<
          _$_AccountEventBirthdayChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String secondName) secondNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(UserGenderEnum gender) genderChanged,
    required TResult Function(ImagePicker imagePicker) photoChanged,
    required TResult Function() accountSubmitted,
  }) {
    return birthdayChanged(birthday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String secondName)? secondNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(DateTime birthday)? birthdayChanged,
    TResult? Function(UserGenderEnum gender)? genderChanged,
    TResult? Function(ImagePicker imagePicker)? photoChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return birthdayChanged?.call(birthday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String secondName)? secondNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(UserGenderEnum gender)? genderChanged,
    TResult Function(ImagePicker imagePicker)? photoChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) {
    if (birthdayChanged != null) {
      return birthdayChanged(birthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value)
        firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value)
        secondNameChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventBirthdayChanged value)
        birthdayChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventPhotoChanged value) photoChanged,
    required TResult Function(_AccountEventAccountSubmitted value)
        accountSubmitted,
  }) {
    return birthdayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return birthdayChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult Function(_AccountEventAccountSubmitted value)? accountSubmitted,
    required TResult orElse(),
  }) {
    if (birthdayChanged != null) {
      return birthdayChanged(this);
    }
    return orElse();
  }
}

abstract class _AccountEventBirthdayChanged implements AccountEvent {
  const factory _AccountEventBirthdayChanged(
      {required final DateTime birthday}) = _$_AccountEventBirthdayChanged;

  DateTime get birthday;
  @JsonKey(ignore: true)
  _$$_AccountEventBirthdayChangedCopyWith<_$_AccountEventBirthdayChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountEventGenderChangedCopyWith<$Res> {
  factory _$$_AccountEventGenderChangedCopyWith(
          _$_AccountEventGenderChanged value,
          $Res Function(_$_AccountEventGenderChanged) then) =
      __$$_AccountEventGenderChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserGenderEnum gender});
}

/// @nodoc
class __$$_AccountEventGenderChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventGenderChanged>
    implements _$$_AccountEventGenderChangedCopyWith<$Res> {
  __$$_AccountEventGenderChangedCopyWithImpl(
      _$_AccountEventGenderChanged _value,
      $Res Function(_$_AccountEventGenderChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$_AccountEventGenderChanged(
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGenderEnum,
    ));
  }
}

/// @nodoc

class _$_AccountEventGenderChanged implements _AccountEventGenderChanged {
  const _$_AccountEventGenderChanged({required this.gender});

  @override
  final UserGenderEnum gender;

  @override
  String toString() {
    return 'AccountEvent.genderChanged(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountEventGenderChanged &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountEventGenderChangedCopyWith<_$_AccountEventGenderChanged>
      get copyWith => __$$_AccountEventGenderChangedCopyWithImpl<
          _$_AccountEventGenderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String secondName) secondNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(UserGenderEnum gender) genderChanged,
    required TResult Function(ImagePicker imagePicker) photoChanged,
    required TResult Function() accountSubmitted,
  }) {
    return genderChanged(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String secondName)? secondNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(DateTime birthday)? birthdayChanged,
    TResult? Function(UserGenderEnum gender)? genderChanged,
    TResult? Function(ImagePicker imagePicker)? photoChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return genderChanged?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String secondName)? secondNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(UserGenderEnum gender)? genderChanged,
    TResult Function(ImagePicker imagePicker)? photoChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value)
        firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value)
        secondNameChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventBirthdayChanged value)
        birthdayChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventPhotoChanged value) photoChanged,
    required TResult Function(_AccountEventAccountSubmitted value)
        accountSubmitted,
  }) {
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return genderChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult Function(_AccountEventAccountSubmitted value)? accountSubmitted,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class _AccountEventGenderChanged implements AccountEvent {
  const factory _AccountEventGenderChanged(
      {required final UserGenderEnum gender}) = _$_AccountEventGenderChanged;

  UserGenderEnum get gender;
  @JsonKey(ignore: true)
  _$$_AccountEventGenderChangedCopyWith<_$_AccountEventGenderChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountEventPhotoChangedCopyWith<$Res> {
  factory _$$_AccountEventPhotoChangedCopyWith(
          _$_AccountEventPhotoChanged value,
          $Res Function(_$_AccountEventPhotoChanged) then) =
      __$$_AccountEventPhotoChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({ImagePicker imagePicker});
}

/// @nodoc
class __$$_AccountEventPhotoChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventPhotoChanged>
    implements _$$_AccountEventPhotoChangedCopyWith<$Res> {
  __$$_AccountEventPhotoChangedCopyWithImpl(_$_AccountEventPhotoChanged _value,
      $Res Function(_$_AccountEventPhotoChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePicker = null,
  }) {
    return _then(_$_AccountEventPhotoChanged(
      imagePicker: null == imagePicker
          ? _value.imagePicker
          : imagePicker // ignore: cast_nullable_to_non_nullable
              as ImagePicker,
    ));
  }
}

/// @nodoc

class _$_AccountEventPhotoChanged implements _AccountEventPhotoChanged {
  const _$_AccountEventPhotoChanged({required this.imagePicker});

  @override
  final ImagePicker imagePicker;

  @override
  String toString() {
    return 'AccountEvent.photoChanged(imagePicker: $imagePicker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountEventPhotoChanged &&
            (identical(other.imagePicker, imagePicker) ||
                other.imagePicker == imagePicker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePicker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountEventPhotoChangedCopyWith<_$_AccountEventPhotoChanged>
      get copyWith => __$$_AccountEventPhotoChangedCopyWithImpl<
          _$_AccountEventPhotoChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String secondName) secondNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(UserGenderEnum gender) genderChanged,
    required TResult Function(ImagePicker imagePicker) photoChanged,
    required TResult Function() accountSubmitted,
  }) {
    return photoChanged(imagePicker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String secondName)? secondNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(DateTime birthday)? birthdayChanged,
    TResult? Function(UserGenderEnum gender)? genderChanged,
    TResult? Function(ImagePicker imagePicker)? photoChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return photoChanged?.call(imagePicker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String secondName)? secondNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(UserGenderEnum gender)? genderChanged,
    TResult Function(ImagePicker imagePicker)? photoChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) {
    if (photoChanged != null) {
      return photoChanged(imagePicker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value)
        firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value)
        secondNameChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventBirthdayChanged value)
        birthdayChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventPhotoChanged value) photoChanged,
    required TResult Function(_AccountEventAccountSubmitted value)
        accountSubmitted,
  }) {
    return photoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return photoChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult Function(_AccountEventAccountSubmitted value)? accountSubmitted,
    required TResult orElse(),
  }) {
    if (photoChanged != null) {
      return photoChanged(this);
    }
    return orElse();
  }
}

abstract class _AccountEventPhotoChanged implements AccountEvent {
  const factory _AccountEventPhotoChanged(
      {required final ImagePicker imagePicker}) = _$_AccountEventPhotoChanged;

  ImagePicker get imagePicker;
  @JsonKey(ignore: true)
  _$$_AccountEventPhotoChangedCopyWith<_$_AccountEventPhotoChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountEventAccountSubmittedCopyWith<$Res> {
  factory _$$_AccountEventAccountSubmittedCopyWith(
          _$_AccountEventAccountSubmitted value,
          $Res Function(_$_AccountEventAccountSubmitted) then) =
      __$$_AccountEventAccountSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountEventAccountSubmittedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventAccountSubmitted>
    implements _$$_AccountEventAccountSubmittedCopyWith<$Res> {
  __$$_AccountEventAccountSubmittedCopyWithImpl(
      _$_AccountEventAccountSubmitted _value,
      $Res Function(_$_AccountEventAccountSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountEventAccountSubmitted implements _AccountEventAccountSubmitted {
  const _$_AccountEventAccountSubmitted();

  @override
  String toString() {
    return 'AccountEvent.accountSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountEventAccountSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String secondName) secondNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(DateTime birthday) birthdayChanged,
    required TResult Function(UserGenderEnum gender) genderChanged,
    required TResult Function(ImagePicker imagePicker) photoChanged,
    required TResult Function() accountSubmitted,
  }) {
    return accountSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String secondName)? secondNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(DateTime birthday)? birthdayChanged,
    TResult? Function(UserGenderEnum gender)? genderChanged,
    TResult? Function(ImagePicker imagePicker)? photoChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return accountSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String secondName)? secondNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(DateTime birthday)? birthdayChanged,
    TResult Function(UserGenderEnum gender)? genderChanged,
    TResult Function(ImagePicker imagePicker)? photoChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) {
    if (accountSubmitted != null) {
      return accountSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value)
        firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value)
        secondNameChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventBirthdayChanged value)
        birthdayChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventPhotoChanged value) photoChanged,
    required TResult Function(_AccountEventAccountSubmitted value)
        accountSubmitted,
  }) {
    return accountSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return accountSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventPhotoChanged value)? photoChanged,
    TResult Function(_AccountEventAccountSubmitted value)? accountSubmitted,
    required TResult orElse(),
  }) {
    if (accountSubmitted != null) {
      return accountSubmitted(this);
    }
    return orElse();
  }
}

abstract class _AccountEventAccountSubmitted implements AccountEvent {
  const factory _AccountEventAccountSubmitted() =
      _$_AccountEventAccountSubmitted;
}

/// @nodoc
mixin _$AccountState {
  FormzSubmissionStatus? get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountUserFirstName firstName,
            AccountUserSecondName secondName,
            AccountUserBirthday birthday,
            AccountUserEmail email,
            AccountUserGender gender,
            bool isValid,
            FormzSubmissionStatus status)
        loaded,
    required TResult Function(FormzSubmissionStatus? status, String error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AccountUserFirstName firstName,
            AccountUserSecondName secondName,
            AccountUserBirthday birthday,
            AccountUserEmail email,
            AccountUserGender gender,
            bool isValid,
            FormzSubmissionStatus status)?
        loaded,
    TResult? Function(FormzSubmissionStatus? status, String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AccountUserFirstName firstName,
            AccountUserSecondName secondName,
            AccountUserBirthday birthday,
            AccountUserEmail email,
            AccountUserGender gender,
            bool isValid,
            FormzSubmissionStatus status)?
        loaded,
    TResult Function(FormzSubmissionStatus? status, String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountStateLoaded value) loaded,
    required TResult Function(_AccountStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountStateLoaded value)? loaded,
    TResult? Function(_AccountStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountStateLoaded value)? loaded,
    TResult Function(_AccountStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call({FormzSubmissionStatus status});
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status!
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountStateLoadedCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$_AccountStateLoadedCopyWith(_$_AccountStateLoaded value,
          $Res Function(_$_AccountStateLoaded) then) =
      __$$_AccountStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccountUserFirstName firstName,
      AccountUserSecondName secondName,
      AccountUserBirthday birthday,
      AccountUserEmail email,
      AccountUserGender gender,
      bool isValid,
      FormzSubmissionStatus status});
}

/// @nodoc
class __$$_AccountStateLoadedCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_AccountStateLoaded>
    implements _$$_AccountStateLoadedCopyWith<$Res> {
  __$$_AccountStateLoadedCopyWithImpl(
      _$_AccountStateLoaded _value, $Res Function(_$_AccountStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? secondName = null,
    Object? birthday = null,
    Object? email = null,
    Object? gender = null,
    Object? isValid = null,
    Object? status = null,
  }) {
    return _then(_$_AccountStateLoaded(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as AccountUserFirstName,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as AccountUserSecondName,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as AccountUserBirthday,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as AccountUserEmail,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as AccountUserGender,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$_AccountStateLoaded implements _AccountStateLoaded {
  _$_AccountStateLoaded(
      {this.firstName = const AccountUserFirstName.pure(),
      this.secondName = const AccountUserSecondName.pure(),
      this.birthday = const AccountUserBirthday.pure(),
      this.email = const AccountUserEmail.pure(),
      this.gender = const AccountUserGender.pure(),
      this.isValid = false,
      this.status = FormzSubmissionStatus.initial});

  @override
  @JsonKey()
  final AccountUserFirstName firstName;
  @override
  @JsonKey()
  final AccountUserSecondName secondName;
  @override
  @JsonKey()
  final AccountUserBirthday birthday;
  @override
  @JsonKey()
  final AccountUserEmail email;
  @override
  @JsonKey()
  final AccountUserGender gender;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;

  @override
  String toString() {
    return 'AccountState.loaded(firstName: $firstName, secondName: $secondName, birthday: $birthday, email: $email, gender: $gender, isValid: $isValid, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountStateLoaded &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, secondName, birthday,
      email, gender, isValid, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountStateLoadedCopyWith<_$_AccountStateLoaded> get copyWith =>
      __$$_AccountStateLoadedCopyWithImpl<_$_AccountStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountUserFirstName firstName,
            AccountUserSecondName secondName,
            AccountUserBirthday birthday,
            AccountUserEmail email,
            AccountUserGender gender,
            bool isValid,
            FormzSubmissionStatus status)
        loaded,
    required TResult Function(FormzSubmissionStatus? status, String error)
        error,
  }) {
    return loaded(
        firstName, secondName, birthday, email, gender, isValid, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AccountUserFirstName firstName,
            AccountUserSecondName secondName,
            AccountUserBirthday birthday,
            AccountUserEmail email,
            AccountUserGender gender,
            bool isValid,
            FormzSubmissionStatus status)?
        loaded,
    TResult? Function(FormzSubmissionStatus? status, String error)? error,
  }) {
    return loaded?.call(
        firstName, secondName, birthday, email, gender, isValid, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AccountUserFirstName firstName,
            AccountUserSecondName secondName,
            AccountUserBirthday birthday,
            AccountUserEmail email,
            AccountUserGender gender,
            bool isValid,
            FormzSubmissionStatus status)?
        loaded,
    TResult Function(FormzSubmissionStatus? status, String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          firstName, secondName, birthday, email, gender, isValid, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountStateLoaded value) loaded,
    required TResult Function(_AccountStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountStateLoaded value)? loaded,
    TResult? Function(_AccountStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountStateLoaded value)? loaded,
    TResult Function(_AccountStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AccountStateLoaded implements AccountState {
  factory _AccountStateLoaded(
      {final AccountUserFirstName firstName,
      final AccountUserSecondName secondName,
      final AccountUserBirthday birthday,
      final AccountUserEmail email,
      final AccountUserGender gender,
      final bool isValid,
      final FormzSubmissionStatus status}) = _$_AccountStateLoaded;

  AccountUserFirstName get firstName;
  AccountUserSecondName get secondName;
  AccountUserBirthday get birthday;
  AccountUserEmail get email;
  AccountUserGender get gender;
  bool get isValid;
  @override
  FormzSubmissionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_AccountStateLoadedCopyWith<_$_AccountStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountStateErrorCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$_AccountStateErrorCopyWith(_$_AccountStateError value,
          $Res Function(_$_AccountStateError) then) =
      __$$_AccountStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormzSubmissionStatus? status, String error});
}

/// @nodoc
class __$$_AccountStateErrorCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_AccountStateError>
    implements _$$_AccountStateErrorCopyWith<$Res> {
  __$$_AccountStateErrorCopyWithImpl(
      _$_AccountStateError _value, $Res Function(_$_AccountStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = null,
  }) {
    return _then(_$_AccountStateError(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountStateError implements _AccountStateError {
  const _$_AccountStateError({this.status, required this.error});

  @override
  final FormzSubmissionStatus? status;
  @override
  final String error;

  @override
  String toString() {
    return 'AccountState.error(status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountStateError &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountStateErrorCopyWith<_$_AccountStateError> get copyWith =>
      __$$_AccountStateErrorCopyWithImpl<_$_AccountStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountUserFirstName firstName,
            AccountUserSecondName secondName,
            AccountUserBirthday birthday,
            AccountUserEmail email,
            AccountUserGender gender,
            bool isValid,
            FormzSubmissionStatus status)
        loaded,
    required TResult Function(FormzSubmissionStatus? status, String error)
        error,
  }) {
    return error(status, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AccountUserFirstName firstName,
            AccountUserSecondName secondName,
            AccountUserBirthday birthday,
            AccountUserEmail email,
            AccountUserGender gender,
            bool isValid,
            FormzSubmissionStatus status)?
        loaded,
    TResult? Function(FormzSubmissionStatus? status, String error)? error,
  }) {
    return error?.call(status, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AccountUserFirstName firstName,
            AccountUserSecondName secondName,
            AccountUserBirthday birthday,
            AccountUserEmail email,
            AccountUserGender gender,
            bool isValid,
            FormzSubmissionStatus status)?
        loaded,
    TResult Function(FormzSubmissionStatus? status, String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(status, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountStateLoaded value) loaded,
    required TResult Function(_AccountStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountStateLoaded value)? loaded,
    TResult? Function(_AccountStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountStateLoaded value)? loaded,
    TResult Function(_AccountStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AccountStateError implements AccountState {
  const factory _AccountStateError(
      {final FormzSubmissionStatus? status,
      required final String error}) = _$_AccountStateError;

  @override
  FormzSubmissionStatus? get status;
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_AccountStateErrorCopyWith<_$_AccountStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
