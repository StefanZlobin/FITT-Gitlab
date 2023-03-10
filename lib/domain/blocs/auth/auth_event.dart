part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authenticationStatusChanged({
    required AuthenticationStatusEnum authenticationStatusEnum,
  }) = _AuthEventAuthenticationStatusChanged;
  const factory AuthEvent.authenticationLoginRequested({
    required String phoneNumber,
  }) = _AuthEventAuthenticationLoginRequested;
  const factory AuthEvent.authenticationCodeVerificationRequested({
    required String phoneNumber,
    required String secureCode,
    required String fcmToken,
  }) = _AuthEventAuthenticationCodeVerificationRequested;
  const factory AuthEvent.authenticationLogoutRequested() =
      _AuthEventAuthenticationLogoutRequested;
}
