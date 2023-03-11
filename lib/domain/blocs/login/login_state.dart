part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginStateInitial;
  const factory LoginState.loading() = _LoginStateLoading;
  const factory LoginState.loaded({
    @Default('') String phoneNumber,
    @Default('') String verifiationCode,
  }) = _LoginStateLoaded;
  const factory LoginState.error({
    required String error,
    @Default(5) int countSecureCodeEntryAttempts,
    @Default('') String phoneNumber,
  }) = _LoginStateError;
}
