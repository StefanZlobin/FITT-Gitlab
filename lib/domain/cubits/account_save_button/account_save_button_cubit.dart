import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_save_button_state.dart';
part 'account_save_button_cubit.freezed.dart';

class AccountSaveButtonCubit extends Cubit<AccountSaveButtonState> {
  AccountSaveButtonCubit() : super(const AccountSaveButtonState.initial());

  void disableButton({required bool isDisabled}) {
    emit(AccountSaveButtonState.isDisabled(isDisabled: isDisabled));
  }
}
