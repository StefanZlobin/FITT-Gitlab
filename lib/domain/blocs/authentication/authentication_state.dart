part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.loading() = _AuthenticationStateLoading;
  const factory AuthenticationState.loaded({
    @Default(5) int attemptsEnterSecureCode,
    @Default(0) int circularAttempt,
  }) = _AuthenticationStateLoaded;
  const factory AuthenticationState.success() = _AuthenticationStateSuccess;
  const factory AuthenticationState.error({required String error}) =
      _AuthenticationStateError;
}
