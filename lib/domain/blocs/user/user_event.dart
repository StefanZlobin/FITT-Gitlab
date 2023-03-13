part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.checkUser() = _UserEventCheckUser;
  const factory UserEvent.getUserFromNetwork() = _UserEventGetUserFromNetwork;
  const factory UserEvent.updateUserData({required User user}) = _UserEventUpdateUserData;
  const factory UserEvent.updateUserAvatar({required File avatar}) = _UserEventUpdateUserAvatar;
  const factory UserEvent.logout({required User user}) = _UserEventLogout;
  const factory UserEvent.deleteAccount() = _UserEventDeleteAccount;
}
