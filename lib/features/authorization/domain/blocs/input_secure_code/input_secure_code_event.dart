part of 'input_secure_code_bloc.dart';

@freezed
class InputSecureCodeEvent with _$InputSecureCodeEvent {
  const factory InputSecureCodeEvent.requestVerificationCode({
    required String phoneNumber,
  }) = _InputSecureCodeEventRequestVerificationCode;

  const factory InputSecureCodeEvent.requestCodeVerification({
    required String verificationCode,
  }) = _InputSecureCodeEventRequestCodeVerification;
}
