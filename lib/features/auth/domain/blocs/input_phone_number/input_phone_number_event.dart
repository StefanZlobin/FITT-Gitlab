part of 'input_phone_number_bloc.dart';

@freezed
class InputPhoneNumberEvent with _$InputPhoneNumberEvent {
  const factory InputPhoneNumberEvent.phoneNumberChanged({
    required String phoneNumber,
  }) = _InputPhoneNumberEventPhoneNumberChanged;
}
