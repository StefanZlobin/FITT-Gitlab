import 'package:fitt/core/utils/string_utils.dart';
import 'package:formz/formz.dart';

enum UserEmailValidationError { empty, incorrect }

class UserEmail extends FormzInput<String, UserEmailValidationError> {
  const UserEmail.pure() : super.pure('');
  const UserEmail.dirty([super.value = '']) : super.dirty();

  @override
  UserEmailValidationError? validator(String value) {
    if (value.isEmpty) return UserEmailValidationError.empty;
    if (StringUtils.isNotEmpty(value) && !StringUtils.isEmail(value)) {
      return UserEmailValidationError.incorrect;
    }
    return null;
  }
}
