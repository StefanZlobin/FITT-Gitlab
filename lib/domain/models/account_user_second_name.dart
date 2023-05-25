import 'package:formz/formz.dart';

enum AccountUserSecondNameValidationError {
  empty,
  smallName;

  String convertEnumToString(AccountUserSecondNameValidationError v) {
    switch (v) {
      case AccountUserSecondNameValidationError.empty:
        return 'Поле не должно быть пустым';
      case AccountUserSecondNameValidationError.smallName:
        return 'Неподходящее количество символов';
    }
  }
}

class AccountUserSecondName
    extends FormzInput<String, AccountUserSecondNameValidationError> {
  const AccountUserSecondName.pure([super.value = '']) : super.pure();
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
