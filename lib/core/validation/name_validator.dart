class NameValidator {
  NameValidator();

  String? getValidationErrorName(String? value) {
    if (value == null) return 'Это поле обязательно для заполнения';
    if (value.length == 1) return 'Недопустимое количество символов';
    return null;
  }
}