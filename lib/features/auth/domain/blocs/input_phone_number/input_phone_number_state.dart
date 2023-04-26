part of 'input_phone_number_bloc.dart';

@freezed
class InputPhoneNumberState with _$InputPhoneNumberState {
  const factory InputPhoneNumberState.initial() = _InputPhoneNumberStateInitial;
  const factory InputPhoneNumberState.loaded({
    required String phoneNumber,
  }) = _InputPhoneNumberStateLoaded;
  const factory InputPhoneNumberState.error({
    required String error,
    @Default(5) int countSecureCodeEntryAttempts,
    @Default('') String phoneNumber,
  }) = _InputPhoneNumberStateError;
}
