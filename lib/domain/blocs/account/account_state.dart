part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial({
    @Default('') String firstName,
    @Default('') String? secondName,
    DateTime? birthday,
    @Default('') String? email,
  }) = _AccountStateInitial;
  const factory AccountState.formChanged({
    AccountUserFirstName? firstName,
    AccountUserSecondName? secondName,
    AccountUserBirthday? birthday,
    AccountUserEmail? email,
    @Default(false) bool status,
  }) = _AccountStateFormChanged;
  const factory AccountState.error({
    required String error,
  }) = _AccountStateError;
}
