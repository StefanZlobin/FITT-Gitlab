import 'package:formz/formz.dart';

enum AccountUserFirstNameValidationError { empty }

class AccountUserFirstName extends FormzInput<String, AccountUserFirstNameValidationError> {
  const AccountUserFirstName.pure() : super.pure('');
  const AccountUserFirstName.dirty([super.value = '']) : super.dirty();

  @override
  AccountUserFirstNameValidationError? validator(String value) {
    if (value.isEmpty) return AccountUserFirstNameValidationError.empty;
    return null;
  }
}
