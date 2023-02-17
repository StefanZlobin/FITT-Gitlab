part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = _UserStateLoading;
  const factory UserState.loaded({User? user}) = _UserStateLoaded;
  const factory UserState.loadedWithNoUser({User? user}) =
      _UserStateLoadedWithNoUser;
  const factory UserState.error({required String error}) = _UserStateError;
}
