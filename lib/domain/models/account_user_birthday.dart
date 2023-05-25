import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:formz/formz.dart';

enum AccountUserBirthdayValidationError {
  needsMoreThan18;

  String convertEnumToString(AccountUserBirthdayValidationError v) {
    switch (v) {
      case AccountUserBirthdayValidationError.needsMoreThan18:
        return 'Вам должно быть не меньше 18 лет';
    }
  }
}

class AccountUserBirthday
    extends FormzInput<String, AccountUserBirthdayValidationError> {
  const AccountUserBirthday.pure([super.value = '']) : super.pure();
  const AccountUserBirthday.dirty([super.value = '']) : super.dirty();

  @override
  AccountUserBirthdayValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    } else {
      final date = dateFromString(value);
      if (date.isAfter(DateTime(
        DateTime.now().year - 18,
        DateTime.now().month,
        DateTime.now().day,
      ))) {
        return AccountUserBirthdayValidationError.needsMoreThan18;
      }
      return null;
    }
  }
}
