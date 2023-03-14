part of 'account_save_button_cubit.dart';

@freezed
class AccountSaveButtonState with _$AccountSaveButtonState {
  const factory AccountSaveButtonState.initial() = _AccountSaveButtonStateInitial;
  const factory AccountSaveButtonState.isDisabled({@Default(true) bool isDisabled}) = _AccountSaveButtonStateIsDisabled;
}
