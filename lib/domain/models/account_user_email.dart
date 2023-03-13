import 'package:fitt/core/utils/string_utils.dart';
import 'package:formz/formz.dart';

enum AccountUserEmailValidationError { empty, incorrect }

class AccountUserEmail
    extends FormzInput<String, AccountUserEmailValidationError> {
  const AccountUserEmail.pure() : super.pure('');
  const AccountUserEmail.dirty() : super.dirty('');

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
