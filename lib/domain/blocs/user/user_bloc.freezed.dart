// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUser,
    required TResult Function() getUserFromNetwork,
    required TResult Function(User user) updateUserData,
    required TResult Function(File avatar) updateUserAvatar,
    required TResult Function(User user) logout,
    required TResult Function() deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUser,
    TResult? Function()? getUserFromNetwork,
    TResult? Function(User user)? updateUserData,
    TResult? Function(File avatar)? updateUserAvatar,
    TResult? Function(User user)? logout,
    TResult? Function()? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUser,
    TResult Function()? getUserFromNetwork,
    TResult Function(User user)? updateUserData,
    TResult Function(File avatar)? updateUserAvatar,
    TResult Function(User user)? logout,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserEventCheckUser value) checkUser,
    required TResult Function(_UserEventGetUserFromNetwork value)
        getUserFromNetwork,
    required TResult Function(_UserEventUpdateUserData value) updateUserData,
    required TResult Function(_UserEventUpdateUserAvatar value)
        updateUserAvatar,
    required TResult Function(_UserEventLogout value) logout,
    required TResult Function(_UserEventDeleteAccount value) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserEventCheckUser value)? checkUser,
    TResult? Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult? Function(_UserEventUpdateUserData value)? updateUserData,
    TResult? Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult? Function(_UserEventLogout value)? logout,
    TResult? Function(_UserEventDeleteAccount value)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserEventCheckUser value)? checkUser,
    TResult Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult Function(_UserEventUpdateUserData value)? updateUserData,
    TResult Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult Function(_UserEventLogout value)? logout,
    TResult Function(_UserEventDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserEventCheckUserCopyWith<$Res> {
  factory _$$_UserEventCheckUserCopyWith(_$_UserEventCheckUser value,
          $Res Function(_$_UserEventCheckUser) then) =
      __$$_UserEventCheckUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserEventCheckUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserEventCheckUser>
    implements _$$_UserEventCheckUserCopyWith<$Res> {
  __$$_UserEventCheckUserCopyWithImpl(
      _$_UserEventCheckUser _value, $Res Function(_$_UserEventCheckUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserEventCheckUser implements _UserEventCheckUser {
  const _$_UserEventCheckUser();

  @override
  String toString() {
    return 'UserEvent.checkUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserEventCheckUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUser,
    required TResult Function() getUserFromNetwork,
    required TResult Function(User user) updateUserData,
    required TResult Function(File avatar) updateUserAvatar,
    required TResult Function(User user) logout,
    required TResult Function() deleteAccount,
  }) {
    return checkUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUser,
    TResult? Function()? getUserFromNetwork,
    TResult? Function(User user)? updateUserData,
    TResult? Function(File avatar)? updateUserAvatar,
    TResult? Function(User user)? logout,
    TResult? Function()? deleteAccount,
  }) {
    return checkUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUser,
    TResult Function()? getUserFromNetwork,
    TResult Function(User user)? updateUserData,
    TResult Function(File avatar)? updateUserAvatar,
    TResult Function(User user)? logout,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (checkUser != null) {
      return checkUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserEventCheckUser value) checkUser,
    required TResult Function(_UserEventGetUserFromNetwork value)
        getUserFromNetwork,
    required TResult Function(_UserEventUpdateUserData value) updateUserData,
    required TResult Function(_UserEventUpdateUserAvatar value)
        updateUserAvatar,
    required TResult Function(_UserEventLogout value) logout,
    required TResult Function(_UserEventDeleteAccount value) deleteAccount,
  }) {
    return checkUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserEventCheckUser value)? checkUser,
    TResult? Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult? Function(_UserEventUpdateUserData value)? updateUserData,
    TResult? Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult? Function(_UserEventLogout value)? logout,
    TResult? Function(_UserEventDeleteAccount value)? deleteAccount,
  }) {
    return checkUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserEventCheckUser value)? checkUser,
    TResult Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult Function(_UserEventUpdateUserData value)? updateUserData,
    TResult Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult Function(_UserEventLogout value)? logout,
    TResult Function(_UserEventDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (checkUser != null) {
      return checkUser(this);
    }
    return orElse();
  }
}

abstract class _UserEventCheckUser implements UserEvent {
  const factory _UserEventCheckUser() = _$_UserEventCheckUser;
}

/// @nodoc
abstract class _$$_UserEventGetUserFromNetworkCopyWith<$Res> {
  factory _$$_UserEventGetUserFromNetworkCopyWith(
          _$_UserEventGetUserFromNetwork value,
          $Res Function(_$_UserEventGetUserFromNetwork) then) =
      __$$_UserEventGetUserFromNetworkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserEventGetUserFromNetworkCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserEventGetUserFromNetwork>
    implements _$$_UserEventGetUserFromNetworkCopyWith<$Res> {
  __$$_UserEventGetUserFromNetworkCopyWithImpl(
      _$_UserEventGetUserFromNetwork _value,
      $Res Function(_$_UserEventGetUserFromNetwork) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserEventGetUserFromNetwork implements _UserEventGetUserFromNetwork {
  const _$_UserEventGetUserFromNetwork();

  @override
  String toString() {
    return 'UserEvent.getUserFromNetwork()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEventGetUserFromNetwork);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUser,
    required TResult Function() getUserFromNetwork,
    required TResult Function(User user) updateUserData,
    required TResult Function(File avatar) updateUserAvatar,
    required TResult Function(User user) logout,
    required TResult Function() deleteAccount,
  }) {
    return getUserFromNetwork();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUser,
    TResult? Function()? getUserFromNetwork,
    TResult? Function(User user)? updateUserData,
    TResult? Function(File avatar)? updateUserAvatar,
    TResult? Function(User user)? logout,
    TResult? Function()? deleteAccount,
  }) {
    return getUserFromNetwork?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUser,
    TResult Function()? getUserFromNetwork,
    TResult Function(User user)? updateUserData,
    TResult Function(File avatar)? updateUserAvatar,
    TResult Function(User user)? logout,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (getUserFromNetwork != null) {
      return getUserFromNetwork();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserEventCheckUser value) checkUser,
    required TResult Function(_UserEventGetUserFromNetwork value)
        getUserFromNetwork,
    required TResult Function(_UserEventUpdateUserData value) updateUserData,
    required TResult Function(_UserEventUpdateUserAvatar value)
        updateUserAvatar,
    required TResult Function(_UserEventLogout value) logout,
    required TResult Function(_UserEventDeleteAccount value) deleteAccount,
  }) {
    return getUserFromNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserEventCheckUser value)? checkUser,
    TResult? Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult? Function(_UserEventUpdateUserData value)? updateUserData,
    TResult? Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult? Function(_UserEventLogout value)? logout,
    TResult? Function(_UserEventDeleteAccount value)? deleteAccount,
  }) {
    return getUserFromNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserEventCheckUser value)? checkUser,
    TResult Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult Function(_UserEventUpdateUserData value)? updateUserData,
    TResult Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult Function(_UserEventLogout value)? logout,
    TResult Function(_UserEventDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (getUserFromNetwork != null) {
      return getUserFromNetwork(this);
    }
    return orElse();
  }
}

abstract class _UserEventGetUserFromNetwork implements UserEvent {
  const factory _UserEventGetUserFromNetwork() = _$_UserEventGetUserFromNetwork;
}

/// @nodoc
abstract class _$$_UserEventUpdateUserDataCopyWith<$Res> {
  factory _$$_UserEventUpdateUserDataCopyWith(_$_UserEventUpdateUserData value,
          $Res Function(_$_UserEventUpdateUserData) then) =
      __$$_UserEventUpdateUserDataCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserEventUpdateUserDataCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserEventUpdateUserData>
    implements _$$_UserEventUpdateUserDataCopyWith<$Res> {
  __$$_UserEventUpdateUserDataCopyWithImpl(_$_UserEventUpdateUserData _value,
      $Res Function(_$_UserEventUpdateUserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_UserEventUpdateUserData(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_UserEventUpdateUserData implements _UserEventUpdateUserData {
  const _$_UserEventUpdateUserData({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'UserEvent.updateUserData(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEventUpdateUserData &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEventUpdateUserDataCopyWith<_$_UserEventUpdateUserData>
      get copyWith =>
          __$$_UserEventUpdateUserDataCopyWithImpl<_$_UserEventUpdateUserData>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUser,
    required TResult Function() getUserFromNetwork,
    required TResult Function(User user) updateUserData,
    required TResult Function(File avatar) updateUserAvatar,
    required TResult Function(User user) logout,
    required TResult Function() deleteAccount,
  }) {
    return updateUserData(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUser,
    TResult? Function()? getUserFromNetwork,
    TResult? Function(User user)? updateUserData,
    TResult? Function(File avatar)? updateUserAvatar,
    TResult? Function(User user)? logout,
    TResult? Function()? deleteAccount,
  }) {
    return updateUserData?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUser,
    TResult Function()? getUserFromNetwork,
    TResult Function(User user)? updateUserData,
    TResult Function(File avatar)? updateUserAvatar,
    TResult Function(User user)? logout,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserEventCheckUser value) checkUser,
    required TResult Function(_UserEventGetUserFromNetwork value)
        getUserFromNetwork,
    required TResult Function(_UserEventUpdateUserData value) updateUserData,
    required TResult Function(_UserEventUpdateUserAvatar value)
        updateUserAvatar,
    required TResult Function(_UserEventLogout value) logout,
    required TResult Function(_UserEventDeleteAccount value) deleteAccount,
  }) {
    return updateUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserEventCheckUser value)? checkUser,
    TResult? Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult? Function(_UserEventUpdateUserData value)? updateUserData,
    TResult? Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult? Function(_UserEventLogout value)? logout,
    TResult? Function(_UserEventDeleteAccount value)? deleteAccount,
  }) {
    return updateUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserEventCheckUser value)? checkUser,
    TResult Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult Function(_UserEventUpdateUserData value)? updateUserData,
    TResult Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult Function(_UserEventLogout value)? logout,
    TResult Function(_UserEventDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(this);
    }
    return orElse();
  }
}

abstract class _UserEventUpdateUserData implements UserEvent {
  const factory _UserEventUpdateUserData({required final User user}) =
      _$_UserEventUpdateUserData;

  User get user;
  @JsonKey(ignore: true)
  _$$_UserEventUpdateUserDataCopyWith<_$_UserEventUpdateUserData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserEventUpdateUserAvatarCopyWith<$Res> {
  factory _$$_UserEventUpdateUserAvatarCopyWith(
          _$_UserEventUpdateUserAvatar value,
          $Res Function(_$_UserEventUpdateUserAvatar) then) =
      __$$_UserEventUpdateUserAvatarCopyWithImpl<$Res>;
  @useResult
  $Res call({File avatar});
}

/// @nodoc
class __$$_UserEventUpdateUserAvatarCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserEventUpdateUserAvatar>
    implements _$$_UserEventUpdateUserAvatarCopyWith<$Res> {
  __$$_UserEventUpdateUserAvatarCopyWithImpl(
      _$_UserEventUpdateUserAvatar _value,
      $Res Function(_$_UserEventUpdateUserAvatar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
  }) {
    return _then(_$_UserEventUpdateUserAvatar(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_UserEventUpdateUserAvatar implements _UserEventUpdateUserAvatar {
  const _$_UserEventUpdateUserAvatar({required this.avatar});

  @override
  final File avatar;

  @override
  String toString() {
    return 'UserEvent.updateUserAvatar(avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEventUpdateUserAvatar &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEventUpdateUserAvatarCopyWith<_$_UserEventUpdateUserAvatar>
      get copyWith => __$$_UserEventUpdateUserAvatarCopyWithImpl<
          _$_UserEventUpdateUserAvatar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUser,
    required TResult Function() getUserFromNetwork,
    required TResult Function(User user) updateUserData,
    required TResult Function(File avatar) updateUserAvatar,
    required TResult Function(User user) logout,
    required TResult Function() deleteAccount,
  }) {
    return updateUserAvatar(avatar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUser,
    TResult? Function()? getUserFromNetwork,
    TResult? Function(User user)? updateUserData,
    TResult? Function(File avatar)? updateUserAvatar,
    TResult? Function(User user)? logout,
    TResult? Function()? deleteAccount,
  }) {
    return updateUserAvatar?.call(avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUser,
    TResult Function()? getUserFromNetwork,
    TResult Function(User user)? updateUserData,
    TResult Function(File avatar)? updateUserAvatar,
    TResult Function(User user)? logout,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (updateUserAvatar != null) {
      return updateUserAvatar(avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserEventCheckUser value) checkUser,
    required TResult Function(_UserEventGetUserFromNetwork value)
        getUserFromNetwork,
    required TResult Function(_UserEventUpdateUserData value) updateUserData,
    required TResult Function(_UserEventUpdateUserAvatar value)
        updateUserAvatar,
    required TResult Function(_UserEventLogout value) logout,
    required TResult Function(_UserEventDeleteAccount value) deleteAccount,
  }) {
    return updateUserAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserEventCheckUser value)? checkUser,
    TResult? Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult? Function(_UserEventUpdateUserData value)? updateUserData,
    TResult? Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult? Function(_UserEventLogout value)? logout,
    TResult? Function(_UserEventDeleteAccount value)? deleteAccount,
  }) {
    return updateUserAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserEventCheckUser value)? checkUser,
    TResult Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult Function(_UserEventUpdateUserData value)? updateUserData,
    TResult Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult Function(_UserEventLogout value)? logout,
    TResult Function(_UserEventDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (updateUserAvatar != null) {
      return updateUserAvatar(this);
    }
    return orElse();
  }
}

abstract class _UserEventUpdateUserAvatar implements UserEvent {
  const factory _UserEventUpdateUserAvatar({required final File avatar}) =
      _$_UserEventUpdateUserAvatar;

  File get avatar;
  @JsonKey(ignore: true)
  _$$_UserEventUpdateUserAvatarCopyWith<_$_UserEventUpdateUserAvatar>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserEventLogoutCopyWith<$Res> {
  factory _$$_UserEventLogoutCopyWith(
          _$_UserEventLogout value, $Res Function(_$_UserEventLogout) then) =
      __$$_UserEventLogoutCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserEventLogoutCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserEventLogout>
    implements _$$_UserEventLogoutCopyWith<$Res> {
  __$$_UserEventLogoutCopyWithImpl(
      _$_UserEventLogout _value, $Res Function(_$_UserEventLogout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_UserEventLogout(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_UserEventLogout implements _UserEventLogout {
  const _$_UserEventLogout({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'UserEvent.logout(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEventLogout &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEventLogoutCopyWith<_$_UserEventLogout> get copyWith =>
      __$$_UserEventLogoutCopyWithImpl<_$_UserEventLogout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUser,
    required TResult Function() getUserFromNetwork,
    required TResult Function(User user) updateUserData,
    required TResult Function(File avatar) updateUserAvatar,
    required TResult Function(User user) logout,
    required TResult Function() deleteAccount,
  }) {
    return logout(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUser,
    TResult? Function()? getUserFromNetwork,
    TResult? Function(User user)? updateUserData,
    TResult? Function(File avatar)? updateUserAvatar,
    TResult? Function(User user)? logout,
    TResult? Function()? deleteAccount,
  }) {
    return logout?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUser,
    TResult Function()? getUserFromNetwork,
    TResult Function(User user)? updateUserData,
    TResult Function(File avatar)? updateUserAvatar,
    TResult Function(User user)? logout,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserEventCheckUser value) checkUser,
    required TResult Function(_UserEventGetUserFromNetwork value)
        getUserFromNetwork,
    required TResult Function(_UserEventUpdateUserData value) updateUserData,
    required TResult Function(_UserEventUpdateUserAvatar value)
        updateUserAvatar,
    required TResult Function(_UserEventLogout value) logout,
    required TResult Function(_UserEventDeleteAccount value) deleteAccount,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserEventCheckUser value)? checkUser,
    TResult? Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult? Function(_UserEventUpdateUserData value)? updateUserData,
    TResult? Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult? Function(_UserEventLogout value)? logout,
    TResult? Function(_UserEventDeleteAccount value)? deleteAccount,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserEventCheckUser value)? checkUser,
    TResult Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult Function(_UserEventUpdateUserData value)? updateUserData,
    TResult Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult Function(_UserEventLogout value)? logout,
    TResult Function(_UserEventDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _UserEventLogout implements UserEvent {
  const factory _UserEventLogout({required final User user}) =
      _$_UserEventLogout;

  User get user;
  @JsonKey(ignore: true)
  _$$_UserEventLogoutCopyWith<_$_UserEventLogout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserEventDeleteAccountCopyWith<$Res> {
  factory _$$_UserEventDeleteAccountCopyWith(_$_UserEventDeleteAccount value,
          $Res Function(_$_UserEventDeleteAccount) then) =
      __$$_UserEventDeleteAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserEventDeleteAccountCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserEventDeleteAccount>
    implements _$$_UserEventDeleteAccountCopyWith<$Res> {
  __$$_UserEventDeleteAccountCopyWithImpl(_$_UserEventDeleteAccount _value,
      $Res Function(_$_UserEventDeleteAccount) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserEventDeleteAccount implements _UserEventDeleteAccount {
  const _$_UserEventDeleteAccount();

  @override
  String toString() {
    return 'UserEvent.deleteAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEventDeleteAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUser,
    required TResult Function() getUserFromNetwork,
    required TResult Function(User user) updateUserData,
    required TResult Function(File avatar) updateUserAvatar,
    required TResult Function(User user) logout,
    required TResult Function() deleteAccount,
  }) {
    return deleteAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUser,
    TResult? Function()? getUserFromNetwork,
    TResult? Function(User user)? updateUserData,
    TResult? Function(File avatar)? updateUserAvatar,
    TResult? Function(User user)? logout,
    TResult? Function()? deleteAccount,
  }) {
    return deleteAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUser,
    TResult Function()? getUserFromNetwork,
    TResult Function(User user)? updateUserData,
    TResult Function(File avatar)? updateUserAvatar,
    TResult Function(User user)? logout,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserEventCheckUser value) checkUser,
    required TResult Function(_UserEventGetUserFromNetwork value)
        getUserFromNetwork,
    required TResult Function(_UserEventUpdateUserData value) updateUserData,
    required TResult Function(_UserEventUpdateUserAvatar value)
        updateUserAvatar,
    required TResult Function(_UserEventLogout value) logout,
    required TResult Function(_UserEventDeleteAccount value) deleteAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserEventCheckUser value)? checkUser,
    TResult? Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult? Function(_UserEventUpdateUserData value)? updateUserData,
    TResult? Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult? Function(_UserEventLogout value)? logout,
    TResult? Function(_UserEventDeleteAccount value)? deleteAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserEventCheckUser value)? checkUser,
    TResult Function(_UserEventGetUserFromNetwork value)? getUserFromNetwork,
    TResult Function(_UserEventUpdateUserData value)? updateUserData,
    TResult Function(_UserEventUpdateUserAvatar value)? updateUserAvatar,
    TResult Function(_UserEventLogout value)? logout,
    TResult Function(_UserEventDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _UserEventDeleteAccount implements UserEvent {
  const factory _UserEventDeleteAccount() = _$_UserEventDeleteAccount;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function(User? user) loadedWithNoUser,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User? user)? loaded,
    TResult? Function(User? user)? loadedWithNoUser,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function(User? user)? loadedWithNoUser,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateLoaded value) loaded,
    required TResult Function(_UserStateLoadedWithNoUser value)
        loadedWithNoUser,
    required TResult Function(_UserStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateLoaded value)? loaded,
    TResult? Function(_UserStateLoadedWithNoUser value)? loadedWithNoUser,
    TResult? Function(_UserStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateLoaded value)? loaded,
    TResult Function(_UserStateLoadedWithNoUser value)? loadedWithNoUser,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserStateLoadingCopyWith<$Res> {
  factory _$$_UserStateLoadingCopyWith(
          _$_UserStateLoading value, $Res Function(_$_UserStateLoading) then) =
      __$$_UserStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserStateLoadingCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserStateLoading>
    implements _$$_UserStateLoadingCopyWith<$Res> {
  __$$_UserStateLoadingCopyWithImpl(
      _$_UserStateLoading _value, $Res Function(_$_UserStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserStateLoading implements _UserStateLoading {
  const _$_UserStateLoading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function(User? user) loadedWithNoUser,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User? user)? loaded,
    TResult? Function(User? user)? loadedWithNoUser,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function(User? user)? loadedWithNoUser,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateLoaded value) loaded,
    required TResult Function(_UserStateLoadedWithNoUser value)
        loadedWithNoUser,
    required TResult Function(_UserStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateLoaded value)? loaded,
    TResult? Function(_UserStateLoadedWithNoUser value)? loadedWithNoUser,
    TResult? Function(_UserStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateLoaded value)? loaded,
    TResult Function(_UserStateLoadedWithNoUser value)? loadedWithNoUser,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserStateLoading implements UserState {
  const factory _UserStateLoading() = _$_UserStateLoading;
}

/// @nodoc
abstract class _$$_UserStateLoadedCopyWith<$Res> {
  factory _$$_UserStateLoadedCopyWith(
          _$_UserStateLoaded value, $Res Function(_$_UserStateLoaded) then) =
      __$$_UserStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserStateLoadedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserStateLoaded>
    implements _$$_UserStateLoadedCopyWith<$Res> {
  __$$_UserStateLoadedCopyWithImpl(
      _$_UserStateLoaded _value, $Res Function(_$_UserStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_UserStateLoaded(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_UserStateLoaded implements _UserStateLoaded {
  const _$_UserStateLoaded({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'UserState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStateLoaded &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateLoadedCopyWith<_$_UserStateLoaded> get copyWith =>
      __$$_UserStateLoadedCopyWithImpl<_$_UserStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function(User? user) loadedWithNoUser,
    required TResult Function(String error) error,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User? user)? loaded,
    TResult? Function(User? user)? loadedWithNoUser,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function(User? user)? loadedWithNoUser,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateLoaded value) loaded,
    required TResult Function(_UserStateLoadedWithNoUser value)
        loadedWithNoUser,
    required TResult Function(_UserStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateLoaded value)? loaded,
    TResult? Function(_UserStateLoadedWithNoUser value)? loadedWithNoUser,
    TResult? Function(_UserStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateLoaded value)? loaded,
    TResult Function(_UserStateLoadedWithNoUser value)? loadedWithNoUser,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _UserStateLoaded implements UserState {
  const factory _UserStateLoaded({final User? user}) = _$_UserStateLoaded;

  User? get user;
  @JsonKey(ignore: true)
  _$$_UserStateLoadedCopyWith<_$_UserStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserStateLoadedWithNoUserCopyWith<$Res> {
  factory _$$_UserStateLoadedWithNoUserCopyWith(
          _$_UserStateLoadedWithNoUser value,
          $Res Function(_$_UserStateLoadedWithNoUser) then) =
      __$$_UserStateLoadedWithNoUserCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserStateLoadedWithNoUserCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserStateLoadedWithNoUser>
    implements _$$_UserStateLoadedWithNoUserCopyWith<$Res> {
  __$$_UserStateLoadedWithNoUserCopyWithImpl(
      _$_UserStateLoadedWithNoUser _value,
      $Res Function(_$_UserStateLoadedWithNoUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_UserStateLoadedWithNoUser(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_UserStateLoadedWithNoUser implements _UserStateLoadedWithNoUser {
  const _$_UserStateLoadedWithNoUser({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'UserState.loadedWithNoUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStateLoadedWithNoUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateLoadedWithNoUserCopyWith<_$_UserStateLoadedWithNoUser>
      get copyWith => __$$_UserStateLoadedWithNoUserCopyWithImpl<
          _$_UserStateLoadedWithNoUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function(User? user) loadedWithNoUser,
    required TResult Function(String error) error,
  }) {
    return loadedWithNoUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User? user)? loaded,
    TResult? Function(User? user)? loadedWithNoUser,
    TResult? Function(String error)? error,
  }) {
    return loadedWithNoUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function(User? user)? loadedWithNoUser,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loadedWithNoUser != null) {
      return loadedWithNoUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateLoaded value) loaded,
    required TResult Function(_UserStateLoadedWithNoUser value)
        loadedWithNoUser,
    required TResult Function(_UserStateError value) error,
  }) {
    return loadedWithNoUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateLoaded value)? loaded,
    TResult? Function(_UserStateLoadedWithNoUser value)? loadedWithNoUser,
    TResult? Function(_UserStateError value)? error,
  }) {
    return loadedWithNoUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateLoaded value)? loaded,
    TResult Function(_UserStateLoadedWithNoUser value)? loadedWithNoUser,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadedWithNoUser != null) {
      return loadedWithNoUser(this);
    }
    return orElse();
  }
}

abstract class _UserStateLoadedWithNoUser implements UserState {
  const factory _UserStateLoadedWithNoUser({final User? user}) =
      _$_UserStateLoadedWithNoUser;

  User? get user;
  @JsonKey(ignore: true)
  _$$_UserStateLoadedWithNoUserCopyWith<_$_UserStateLoadedWithNoUser>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserStateErrorCopyWith<$Res> {
  factory _$$_UserStateErrorCopyWith(
          _$_UserStateError value, $Res Function(_$_UserStateError) then) =
      __$$_UserStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_UserStateErrorCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserStateError>
    implements _$$_UserStateErrorCopyWith<$Res> {
  __$$_UserStateErrorCopyWithImpl(
      _$_UserStateError _value, $Res Function(_$_UserStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_UserStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserStateError implements _UserStateError {
  const _$_UserStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UserState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateErrorCopyWith<_$_UserStateError> get copyWith =>
      __$$_UserStateErrorCopyWithImpl<_$_UserStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function(User? user) loadedWithNoUser,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User? user)? loaded,
    TResult? Function(User? user)? loadedWithNoUser,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function(User? user)? loadedWithNoUser,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateLoaded value) loaded,
    required TResult Function(_UserStateLoadedWithNoUser value)
        loadedWithNoUser,
    required TResult Function(_UserStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateLoaded value)? loaded,
    TResult? Function(_UserStateLoadedWithNoUser value)? loadedWithNoUser,
    TResult? Function(_UserStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateLoaded value)? loaded,
    TResult Function(_UserStateLoadedWithNoUser value)? loadedWithNoUser,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UserStateError implements UserState {
  const factory _UserStateError({required final String error}) =
      _$_UserStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_UserStateErrorCopyWith<_$_UserStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
