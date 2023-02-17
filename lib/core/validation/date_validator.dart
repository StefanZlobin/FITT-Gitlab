import 'package:clock/clock.dart';

class DateValidator {
  DateValidator();

  String? getValidationError(DateTime? value) {
    if (value == null) return 'Это поле обязательно для заполнения';

    final now = clock.now();
    final age = now.year -
        value.year -
        ((now.month > value.month ||
                (now.month == value.month && now.day > value.day))
            ? 1
            : 0);

    if (age < 18) {
      return 'Вам должно быть не меньше 18 лет';
    }
    return null;
  }
}
