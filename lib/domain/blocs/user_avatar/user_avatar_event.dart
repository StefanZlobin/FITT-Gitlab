part of 'user_avatar_bloc.dart';

@freezed
class UserAvatarEvent with _$UserAvatarEvent {
  const factory UserAvatarEvent.uploadingUser({
    required User user,
  }) = _UserAvatarEventUploadingUser;
}
