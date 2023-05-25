import 'package:fitt/core/utils/string_utils.dart';
import 'package:formz/formz.dart';

enum AccountUserEmailValidationError {
  empty,
  incorrect;

  String convertEnumToString(AccountUserEmailValidationError v) {
    switch (v) {
      case AccountUserEmailValidationError.empty:
        return 'Поле не должно быть пустым';
      case AccountUserEmailValidationError.incorrect:
        return 'Неверный формат почты';
    }
  }
}

class AccountUserEmail
    extends FormzInput<String, AccountUserEmailValidationError> {
  const AccountUserEmail.pure([super.value = '']) : super.pure();
  const AccountUserEmail.dirty([super.value = '']) : super.dirty();

  @override
  AccountUserEmailValidationError? validator(String value) {
    if (value.isEmpty) {
      return AccountUserEmailValidationError.empty;
    } else if (StringUtils.isNotEmpty(value) && !StringUtils.isEmail(value)) {
      return AccountUserEmailValidationError.incorrect;
    }
    return null;
  }
}
