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
    required TResult Function(AccountUserFirstName firstName) firstNameChanged,
    required TResult Function() secondNameChanged,
    required TResult Function() birthdayChanged,
    required TResult Function() emailChanged,
    required TResult Function() genderChanged,
    required TResult Function() avatarChanged,
    required TResult Function() accountSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult? Function()? secondNameChanged,
    TResult? Function()? birthdayChanged,
    TResult? Function()? emailChanged,
    TResult? Function()? genderChanged,
    TResult? Function()? avatarChanged,
    TResult? Function()? accountSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult Function()? secondNameChanged,
    TResult Function()? birthdayChanged,
    TResult Function()? emailChanged,
    TResult Function()? genderChanged,
    TResult Function()? avatarChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value) firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value) secondNameChanged,
    required TResult Function(_AccountEventBirthdayChanged value) birthdayChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventAvatarChanged value) avatarChanged,
    required TResult Function(_AccountEventAccountSubmitted value) accountSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventAvatarChanged value)? avatarChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventAvatarChanged value)? avatarChanged,
    TResult Function(_AccountEventAccountSubmitted value)? accountSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent> implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AccountEventFirstNameChangedCopyWith<$Res> {
  factory _$$_AccountEventFirstNameChangedCopyWith(
          _$_AccountEventFirstNameChanged value, $Res Function(_$_AccountEventFirstNameChanged) then) =
      __$$_AccountEventFirstNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountUserFirstName firstName});
}

/// @nodoc
class __$$_AccountEventFirstNameChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventFirstNameChanged>
    implements _$$_AccountEventFirstNameChangedCopyWith<$Res> {
  __$$_AccountEventFirstNameChangedCopyWithImpl(
      _$_AccountEventFirstNameChanged _value, $Res Function(_$_AccountEventFirstNameChanged) _then)
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
              as AccountUserFirstName,
    ));
  }
}

/// @nodoc

class _$_AccountEventFirstNameChanged implements _AccountEventFirstNameChanged {
  const _$_AccountEventFirstNameChanged({required this.firstName});

  @override
  final AccountUserFirstName firstName;

  @override
  String toString() {
    return 'AccountEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountEventFirstNameChanged &&
            (identical(other.firstName, firstName) || other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountEventFirstNameChangedCopyWith<_$_AccountEventFirstNameChanged> get copyWith =>
      __$$_AccountEventFirstNameChangedCopyWithImpl<_$_AccountEventFirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountUserFirstName firstName) firstNameChanged,
    required TResult Function() secondNameChanged,
    required TResult Function() birthdayChanged,
    required TResult Function() emailChanged,
    required TResult Function() genderChanged,
    required TResult Function() avatarChanged,
    required TResult Function() accountSubmitted,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult? Function()? secondNameChanged,
    TResult? Function()? birthdayChanged,
    TResult? Function()? emailChanged,
    TResult? Function()? genderChanged,
    TResult? Function()? avatarChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult Function()? secondNameChanged,
    TResult Function()? birthdayChanged,
    TResult Function()? emailChanged,
    TResult Function()? genderChanged,
    TResult Function()? avatarChanged,
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
    required TResult Function(_AccountEventFirstNameChanged value) firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value) secondNameChanged,
    required TResult Function(_AccountEventBirthdayChanged value) birthdayChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventAvatarChanged value) avatarChanged,
    required TResult Function(_AccountEventAccountSubmitted value) accountSubmitted,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventAvatarChanged value)? avatarChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventAvatarChanged value)? avatarChanged,
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
  const factory _AccountEventFirstNameChanged({required final AccountUserFirstName firstName}) =
      _$_AccountEventFirstNameChanged;

  AccountUserFirstName get firstName;
  @JsonKey(ignore: true)
  _$$_AccountEventFirstNameChangedCopyWith<_$_AccountEventFirstNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountEventSecondNameChangedCopyWith<$Res> {
  factory _$$_AccountEventSecondNameChangedCopyWith(
          _$_AccountEventSecondNameChanged value, $Res Function(_$_AccountEventSecondNameChanged) then) =
      __$$_AccountEventSecondNameChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountEventSecondNameChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventSecondNameChanged>
    implements _$$_AccountEventSecondNameChangedCopyWith<$Res> {
  __$$_AccountEventSecondNameChangedCopyWithImpl(
      _$_AccountEventSecondNameChanged _value, $Res Function(_$_AccountEventSecondNameChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountEventSecondNameChanged implements _AccountEventSecondNameChanged {
  const _$_AccountEventSecondNameChanged();

  @override
  String toString() {
    return 'AccountEvent.secondNameChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_AccountEventSecondNameChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountUserFirstName firstName) firstNameChanged,
    required TResult Function() secondNameChanged,
    required TResult Function() birthdayChanged,
    required TResult Function() emailChanged,
    required TResult Function() genderChanged,
    required TResult Function() avatarChanged,
    required TResult Function() accountSubmitted,
  }) {
    return secondNameChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult? Function()? secondNameChanged,
    TResult? Function()? birthdayChanged,
    TResult? Function()? emailChanged,
    TResult? Function()? genderChanged,
    TResult? Function()? avatarChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return secondNameChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult Function()? secondNameChanged,
    TResult Function()? birthdayChanged,
    TResult Function()? emailChanged,
    TResult Function()? genderChanged,
    TResult Function()? avatarChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) {
    if (secondNameChanged != null) {
      return secondNameChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value) firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value) secondNameChanged,
    required TResult Function(_AccountEventBirthdayChanged value) birthdayChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventAvatarChanged value) avatarChanged,
    required TResult Function(_AccountEventAccountSubmitted value) accountSubmitted,
  }) {
    return secondNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventAvatarChanged value)? avatarChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return secondNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventAvatarChanged value)? avatarChanged,
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
  const factory _AccountEventSecondNameChanged() = _$_AccountEventSecondNameChanged;
}

/// @nodoc
abstract class _$$_AccountEventBirthdayChangedCopyWith<$Res> {
  factory _$$_AccountEventBirthdayChangedCopyWith(
          _$_AccountEventBirthdayChanged value, $Res Function(_$_AccountEventBirthdayChanged) then) =
      __$$_AccountEventBirthdayChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountEventBirthdayChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventBirthdayChanged>
    implements _$$_AccountEventBirthdayChangedCopyWith<$Res> {
  __$$_AccountEventBirthdayChangedCopyWithImpl(
      _$_AccountEventBirthdayChanged _value, $Res Function(_$_AccountEventBirthdayChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountEventBirthdayChanged implements _AccountEventBirthdayChanged {
  const _$_AccountEventBirthdayChanged();

  @override
  String toString() {
    return 'AccountEvent.birthdayChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_AccountEventBirthdayChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountUserFirstName firstName) firstNameChanged,
    required TResult Function() secondNameChanged,
    required TResult Function() birthdayChanged,
    required TResult Function() emailChanged,
    required TResult Function() genderChanged,
    required TResult Function() avatarChanged,
    required TResult Function() accountSubmitted,
  }) {
    return birthdayChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult? Function()? secondNameChanged,
    TResult? Function()? birthdayChanged,
    TResult? Function()? emailChanged,
    TResult? Function()? genderChanged,
    TResult? Function()? avatarChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return birthdayChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult Function()? secondNameChanged,
    TResult Function()? birthdayChanged,
    TResult Function()? emailChanged,
    TResult Function()? genderChanged,
    TResult Function()? avatarChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) {
    if (birthdayChanged != null) {
      return birthdayChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value) firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value) secondNameChanged,
    required TResult Function(_AccountEventBirthdayChanged value) birthdayChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventAvatarChanged value) avatarChanged,
    required TResult Function(_AccountEventAccountSubmitted value) accountSubmitted,
  }) {
    return birthdayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventAvatarChanged value)? avatarChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return birthdayChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventAvatarChanged value)? avatarChanged,
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
  const factory _AccountEventBirthdayChanged() = _$_AccountEventBirthdayChanged;
}

/// @nodoc
abstract class _$$_AccountEventEmailChangedCopyWith<$Res> {
  factory _$$_AccountEventEmailChangedCopyWith(
          _$_AccountEventEmailChanged value, $Res Function(_$_AccountEventEmailChanged) then) =
      __$$_AccountEventEmailChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountEventEmailChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventEmailChanged>
    implements _$$_AccountEventEmailChangedCopyWith<$Res> {
  __$$_AccountEventEmailChangedCopyWithImpl(
      _$_AccountEventEmailChanged _value, $Res Function(_$_AccountEventEmailChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountEventEmailChanged implements _AccountEventEmailChanged {
  const _$_AccountEventEmailChanged();

  @override
  String toString() {
    return 'AccountEvent.emailChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_AccountEventEmailChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountUserFirstName firstName) firstNameChanged,
    required TResult Function() secondNameChanged,
    required TResult Function() birthdayChanged,
    required TResult Function() emailChanged,
    required TResult Function() genderChanged,
    required TResult Function() avatarChanged,
    required TResult Function() accountSubmitted,
  }) {
    return emailChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult? Function()? secondNameChanged,
    TResult? Function()? birthdayChanged,
    TResult? Function()? emailChanged,
    TResult? Function()? genderChanged,
    TResult? Function()? avatarChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return emailChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult Function()? secondNameChanged,
    TResult Function()? birthdayChanged,
    TResult Function()? emailChanged,
    TResult Function()? genderChanged,
    TResult Function()? avatarChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value) firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value) secondNameChanged,
    required TResult Function(_AccountEventBirthdayChanged value) birthdayChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventAvatarChanged value) avatarChanged,
    required TResult Function(_AccountEventAccountSubmitted value) accountSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventAvatarChanged value)? avatarChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventAvatarChanged value)? avatarChanged,
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
  const factory _AccountEventEmailChanged() = _$_AccountEventEmailChanged;
}

/// @nodoc
abstract class _$$_AccountEventGenderChangedCopyWith<$Res> {
  factory _$$_AccountEventGenderChangedCopyWith(
          _$_AccountEventGenderChanged value, $Res Function(_$_AccountEventGenderChanged) then) =
      __$$_AccountEventGenderChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountEventGenderChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventGenderChanged>
    implements _$$_AccountEventGenderChangedCopyWith<$Res> {
  __$$_AccountEventGenderChangedCopyWithImpl(
      _$_AccountEventGenderChanged _value, $Res Function(_$_AccountEventGenderChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountEventGenderChanged implements _AccountEventGenderChanged {
  const _$_AccountEventGenderChanged();

  @override
  String toString() {
    return 'AccountEvent.genderChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_AccountEventGenderChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountUserFirstName firstName) firstNameChanged,
    required TResult Function() secondNameChanged,
    required TResult Function() birthdayChanged,
    required TResult Function() emailChanged,
    required TResult Function() genderChanged,
    required TResult Function() avatarChanged,
    required TResult Function() accountSubmitted,
  }) {
    return genderChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult? Function()? secondNameChanged,
    TResult? Function()? birthdayChanged,
    TResult? Function()? emailChanged,
    TResult? Function()? genderChanged,
    TResult? Function()? avatarChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return genderChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult Function()? secondNameChanged,
    TResult Function()? birthdayChanged,
    TResult Function()? emailChanged,
    TResult Function()? genderChanged,
    TResult Function()? avatarChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value) firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value) secondNameChanged,
    required TResult Function(_AccountEventBirthdayChanged value) birthdayChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventAvatarChanged value) avatarChanged,
    required TResult Function(_AccountEventAccountSubmitted value) accountSubmitted,
  }) {
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventAvatarChanged value)? avatarChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return genderChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventAvatarChanged value)? avatarChanged,
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
  const factory _AccountEventGenderChanged() = _$_AccountEventGenderChanged;
}

/// @nodoc
abstract class _$$_AccountEventAvatarChangedCopyWith<$Res> {
  factory _$$_AccountEventAvatarChangedCopyWith(
          _$_AccountEventAvatarChanged value, $Res Function(_$_AccountEventAvatarChanged) then) =
      __$$_AccountEventAvatarChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountEventAvatarChangedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventAvatarChanged>
    implements _$$_AccountEventAvatarChangedCopyWith<$Res> {
  __$$_AccountEventAvatarChangedCopyWithImpl(
      _$_AccountEventAvatarChanged _value, $Res Function(_$_AccountEventAvatarChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountEventAvatarChanged implements _AccountEventAvatarChanged {
  const _$_AccountEventAvatarChanged();

  @override
  String toString() {
    return 'AccountEvent.avatarChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_AccountEventAvatarChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountUserFirstName firstName) firstNameChanged,
    required TResult Function() secondNameChanged,
    required TResult Function() birthdayChanged,
    required TResult Function() emailChanged,
    required TResult Function() genderChanged,
    required TResult Function() avatarChanged,
    required TResult Function() accountSubmitted,
  }) {
    return avatarChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult? Function()? secondNameChanged,
    TResult? Function()? birthdayChanged,
    TResult? Function()? emailChanged,
    TResult? Function()? genderChanged,
    TResult? Function()? avatarChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return avatarChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult Function()? secondNameChanged,
    TResult Function()? birthdayChanged,
    TResult Function()? emailChanged,
    TResult Function()? genderChanged,
    TResult Function()? avatarChanged,
    TResult Function()? accountSubmitted,
    required TResult orElse(),
  }) {
    if (avatarChanged != null) {
      return avatarChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEventFirstNameChanged value) firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value) secondNameChanged,
    required TResult Function(_AccountEventBirthdayChanged value) birthdayChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventAvatarChanged value) avatarChanged,
    required TResult Function(_AccountEventAccountSubmitted value) accountSubmitted,
  }) {
    return avatarChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventAvatarChanged value)? avatarChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return avatarChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventAvatarChanged value)? avatarChanged,
    TResult Function(_AccountEventAccountSubmitted value)? accountSubmitted,
    required TResult orElse(),
  }) {
    if (avatarChanged != null) {
      return avatarChanged(this);
    }
    return orElse();
  }
}

abstract class _AccountEventAvatarChanged implements AccountEvent {
  const factory _AccountEventAvatarChanged() = _$_AccountEventAvatarChanged;
}

/// @nodoc
abstract class _$$_AccountEventAccountSubmittedCopyWith<$Res> {
  factory _$$_AccountEventAccountSubmittedCopyWith(
          _$_AccountEventAccountSubmitted value, $Res Function(_$_AccountEventAccountSubmitted) then) =
      __$$_AccountEventAccountSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountEventAccountSubmittedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountEventAccountSubmitted>
    implements _$$_AccountEventAccountSubmittedCopyWith<$Res> {
  __$$_AccountEventAccountSubmittedCopyWithImpl(
      _$_AccountEventAccountSubmitted _value, $Res Function(_$_AccountEventAccountSubmitted) _then)
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_AccountEventAccountSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountUserFirstName firstName) firstNameChanged,
    required TResult Function() secondNameChanged,
    required TResult Function() birthdayChanged,
    required TResult Function() emailChanged,
    required TResult Function() genderChanged,
    required TResult Function() avatarChanged,
    required TResult Function() accountSubmitted,
  }) {
    return accountSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult? Function()? secondNameChanged,
    TResult? Function()? birthdayChanged,
    TResult? Function()? emailChanged,
    TResult? Function()? genderChanged,
    TResult? Function()? avatarChanged,
    TResult? Function()? accountSubmitted,
  }) {
    return accountSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountUserFirstName firstName)? firstNameChanged,
    TResult Function()? secondNameChanged,
    TResult Function()? birthdayChanged,
    TResult Function()? emailChanged,
    TResult Function()? genderChanged,
    TResult Function()? avatarChanged,
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
    required TResult Function(_AccountEventFirstNameChanged value) firstNameChanged,
    required TResult Function(_AccountEventSecondNameChanged value) secondNameChanged,
    required TResult Function(_AccountEventBirthdayChanged value) birthdayChanged,
    required TResult Function(_AccountEventEmailChanged value) emailChanged,
    required TResult Function(_AccountEventGenderChanged value) genderChanged,
    required TResult Function(_AccountEventAvatarChanged value) avatarChanged,
    required TResult Function(_AccountEventAccountSubmitted value) accountSubmitted,
  }) {
    return accountSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult? Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult? Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult? Function(_AccountEventEmailChanged value)? emailChanged,
    TResult? Function(_AccountEventGenderChanged value)? genderChanged,
    TResult? Function(_AccountEventAvatarChanged value)? avatarChanged,
    TResult? Function(_AccountEventAccountSubmitted value)? accountSubmitted,
  }) {
    return accountSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEventFirstNameChanged value)? firstNameChanged,
    TResult Function(_AccountEventSecondNameChanged value)? secondNameChanged,
    TResult Function(_AccountEventBirthdayChanged value)? birthdayChanged,
    TResult Function(_AccountEventEmailChanged value)? emailChanged,
    TResult Function(_AccountEventGenderChanged value)? genderChanged,
    TResult Function(_AccountEventAvatarChanged value)? avatarChanged,
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
  const factory _AccountEventAccountSubmitted() = _$_AccountEventAccountSubmitted;
}

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState> implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(_$_Initial value, $Res Function(_$_Initial) then) = __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AccountStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then) : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AccountState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AccountState {
  const factory _Initial() = _$_Initial;
}
