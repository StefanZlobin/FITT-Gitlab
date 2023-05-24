import 'package:fitt/core/enum/user_gender_enum.dart';
import 'package:formz/formz.dart';

enum AccountUserGenderValidationError {
  none;

  String convertEnumToString(AccountUserGenderValidationError v) {
    switch (v) {
      case AccountUserGenderValidationError.none:
        return 'Поле не должно быть пустым';
    }
  }
}

class AccountUserGender
    extends FormzInput<UserGenderEnum, AccountUserGenderValidationError> {
  const AccountUserGender.pure() : super.pure(UserGenderEnum.other);
  const AccountUserGender.dirty([super.value = UserGenderEnum.other])
      : super.dirty();

  @override
  AccountUserGenderValidationError? validator(UserGenderEnum value) {
    if (value == UserGenderEnum.other) {
      return AccountUserGenderValidationError.none;
    }
    return null;
  }
}
