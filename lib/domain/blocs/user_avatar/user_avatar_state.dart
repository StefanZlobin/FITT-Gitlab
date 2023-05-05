part of 'user_avatar_bloc.dart';

@freezed
class UserAvatarState with _$UserAvatarState {
  const factory UserAvatarState.initial() = _UserAvatarStateInitial;
  const factory UserAvatarState.loaded({
    required User user,
  }) = _UserAvatarStateLoaded;
  const factory UserAvatarState.error({
    required String error,
  }) = _UserAvatarStateError;
}
