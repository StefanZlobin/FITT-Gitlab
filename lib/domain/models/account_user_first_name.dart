import 'package:formz/formz.dart';

enum AccountUserFirstNameValidationError {
  empty,
  smallName;

  String convertEnumToString(AccountUserFirstNameValidationError v) {
    switch (v) {
      case AccountUserFirstNameValidationError.empty:
        return 'Поле не должно быть пустым';
      case AccountUserFirstNameValidationError.smallName:
        return 'Неподходящее количество символов';
    }
  }
}

class AccountUserFirstName
    extends FormzInput<String, AccountUserFirstNameValidationError> {
  const AccountUserFirstName.pure([super.value = '']) : super.pure();
  const AccountUserFirstName.dirty([super.value = '']) : super.dirty();

  @override
  AccountUserFirstNameValidationError? validator(String value) {
    if (value.isEmpty) return AccountUserFirstNameValidationError.empty;
    if (value.length == 1) return AccountUserFirstNameValidationError.smallName;
    return null;
  }
}
