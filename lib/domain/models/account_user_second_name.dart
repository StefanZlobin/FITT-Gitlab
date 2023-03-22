import 'package:formz/formz.dart';

enum AccountUserSecondNameValidationError { empty, smallName }

class AccountUserSecondName
    extends FormzInput<String, AccountUserSecondNameValidationError> {
  const AccountUserSecondName.pure() : super.pure('');
  const AccountUserSecondName.dirty([super.value = '']) : super.dirty();

  @override
  AccountUserSecondNameValidationError? validator(String value) {
    if (value.isEmpty) return AccountUserSecondNameValidationError.empty;
    if (value.length == 1) {
      return AccountUserSecondNameValidationError.smallName;
    }
    return null;
  }
}
