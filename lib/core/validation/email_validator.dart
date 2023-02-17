import 'package:fitt/core/utils/string_utils.dart';

class EmailValidator {
  EmailValidator();

  String? getValidationError(String? value) {
    final local = value;
    if (local == null) return 'Некорректный email';
    if (local.isEmpty) return 'Это поле не должно быть пустым';
    if (StringUtils.isNotEmpty(value) && !StringUtils.isEmail(local)) {
      return 'Некорректный email';
    }
    return null;
  }
}
