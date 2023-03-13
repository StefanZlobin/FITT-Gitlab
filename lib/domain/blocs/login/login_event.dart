part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.phoneNumberChanged({
    required String phoneNumber,
  }) = _LoginEventPhoneNumberChanged;

  /// Event запрашивает верификационный код
  const factory LoginEvent.requestVerificationCode({
    required String phoneNumber,
  }) = _LoginEventRequestVerificationCode;

  /// Event запрашивает проверку верификационного кода
  const factory LoginEvent.requestCodeVerification({
    required String verificationCode,
    required String phoneNumber,
    required String fcmToken,
  }) = _LoginEventRequestCodeVerification;
}
