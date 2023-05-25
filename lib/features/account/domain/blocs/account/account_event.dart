part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.firstNameChanged({
    required String firstName,
  }) = _AccountEventFirstNameChanged;
  const factory AccountEvent.secondNameChanged({
    required String secondName,
  }) = _AccountEventSecondNameChanged;
  const factory AccountEvent.emailChanged({
    required String email,
  }) = _AccountEventEmailChanged;
  const factory AccountEvent.birthdayChanged({
    required DateTime birthday,
  }) = _AccountEventBirthdayChanged;
  const factory AccountEvent.genderChanged({
    required UserGenderEnum gender,
  }) = _AccountEventGenderChanged;
  const factory AccountEvent.photoChanged({
    required ImagePicker imagePicker,
  }) = _AccountEventPhotoChanged;
  const factory AccountEvent.accountSubmitted() = _AccountEventAccountSubmitted;
}
