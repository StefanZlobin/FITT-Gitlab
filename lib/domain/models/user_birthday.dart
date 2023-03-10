import 'package:clock/clock.dart';
import 'package:formz/formz.dart';

enum UserBirthdayValidationError { empty, incorrect }

class UserBirthday extends FormzInput<DateTime?, UserBirthdayValidationError> {
  UserBirthday.pure() : super.pure(DateTime.now());
  const UserBirthday.dirty([super.value]) : super.dirty();

  @override
  UserBirthdayValidationError? validator(DateTime? value) {
    if (value == null) return UserBirthdayValidationError.empty;
    if (!ageVerification(value)) return UserBirthdayValidationError.incorrect;
    return null;
  }

  bool ageVerification(DateTime value) {
    final now = clock.now();
    final age = now.year -
        value.year -
        ((now.month > value.month ||
                (now.month == value.month && now.day > value.day))
            ? 1
            : 0);

    if (age < 18) {
      return false;
    } else {
      return true;
    }
  }
}
