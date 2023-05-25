part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  factory AccountState.loaded({
    @Default(AccountUserFirstName.pure()) AccountUserFirstName firstName,
    @Default(AccountUserSecondName.pure()) AccountUserSecondName secondName,
    @Default(AccountUserBirthday.pure()) AccountUserBirthday birthday,
    @Default(AccountUserEmail.pure()) AccountUserEmail email,
    @Default(AccountUserGender.pure()) AccountUserGender gender,
    @Default(false) bool isValid,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
  }) = _AccountStateLoaded;

  const factory AccountState.error({
    FormzSubmissionStatus? status,
    required String error,
  }) = _AccountStateError;
}
