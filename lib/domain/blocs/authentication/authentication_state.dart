part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.loading() = _AuthenticationStateLoading;
  const factory AuthenticationState.loaded({
    String? phoneNumber,
    String? securecode,
    String? fcmToken,
  }) = _AuthenticationStateLoaded;
  const factory AuthenticationState.error({required String error}) =
      _AuthenticationStateError;
}
