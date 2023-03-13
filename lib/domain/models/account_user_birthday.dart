import 'package:clock/clock.dart';
import 'package:formz/formz.dart';

enum AccountUserBirthdayValidationError { needsMoreThan18 }

class AccountUserBirthday
    extends FormzInput<DateTime, AccountUserBirthdayValidationError> {
  AccountUserBirthday.pure() : super.pure(clock.now());
  AccountUserBirthday.dirty() : super.dirty(clock.now());

  @override
  AccountUserBirthdayValidationError? validator(DateTime value) {
    final maximumPossibleDate = clock.yearsFromNow(18);
    if (value.isAfter(maximumPossibleDate)) {
      return AccountUserBirthdayValidationError.needsMoreThan18;
    }
    return null;
  }
}
