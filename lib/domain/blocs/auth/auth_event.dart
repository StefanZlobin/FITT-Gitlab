part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authenticationStatusChanged({
    required AuthenticationStatusEnum authenticationStatusEnum,
  }) = _AuthEventAuthenticationStatusChanged;
  const factory AuthEvent.authenticationLogoutRequested() = _AuthEventAuthenticationLogoutRequested;
}
