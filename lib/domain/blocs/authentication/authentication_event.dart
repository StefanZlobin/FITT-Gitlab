part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.signIn({required String phoneNumber}) =
      _AuthenticationEventSignIn;
  const factory AuthenticationEvent.checkSecureCode(
      {required String phoneNumber,
      required String secureCode,
      required String fcmToken}) = _AuthenticationEventCheckSecureCode;
  const factory AuthenticationEvent.signOut() = _AuthenticationEventSignOut;
  const factory AuthenticationEvent.getToken() = _AuthenticationEventGetToken;
  const factory AuthenticationEvent.saveToken({required TokenPair token}) =
      _AuthenticationEventSaveToken;
  const factory AuthenticationEvent.refreshToken() =
      _AuthenticationEventRefreshToken;
}
