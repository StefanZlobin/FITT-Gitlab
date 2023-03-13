part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.firstNameChanged({
    required AccountUserFirstName firstName,
  }) = _AccountEventFirstNameChanged;
  const factory AccountEvent.secondNameChanged() =
      _AccountEventSecondNameChanged;
  const factory AccountEvent.birthdayChanged() = _AccountEventBirthdayChanged;
  const factory AccountEvent.emailChanged() = _AccountEventEmailChanged;
  const factory AccountEvent.genderChanged() = _AccountEventGenderChanged;
  const factory AccountEvent.avatarChanged() = _AccountEventAvatarChanged;
  const factory AccountEvent.accountSubmitted() = _AccountEventAccountSubmitted;
}
