part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.firstNameChanged({
    required AccountUserFirstName firstName,
  }) = _AccountEventFirstNameChanged;
  const factory AccountEvent.secondNameChanged({
    required AccountUserSecondName secondName,
  }) = _AccountEventSecondNameChanged;
  const factory AccountEvent.birthdayChanged({
    required AccountUserBirthday birthday,
  }) = _AccountEventBirthdayChanged;
  const factory AccountEvent.emailChanged({
    required AccountUserEmail email,
  }) = _AccountEventEmailChanged;
  const factory AccountEvent.accountSubmitted() = _AccountEventAccountSubmitted;
}
