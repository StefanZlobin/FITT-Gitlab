import 'package:json_annotation/json_annotation.dart';

enum UserGenderEnum {
  @JsonValue('MALE')
  male,
  @JsonValue('FEMALE')
  female,
  @JsonValue('OTHER')
  other;

  String genderEnumToString(UserGenderEnum v) {
    switch (v) {
      case UserGenderEnum.female:
        return 'Женский';
      case UserGenderEnum.male:
        return 'Мужской';
      case UserGenderEnum.other:
        return 'Другой';
    }
  }

  String genderEnumToLabeling(UserGenderEnum v) {
    switch (v) {
      case UserGenderEnum.female:
        return 'Ж';
      case UserGenderEnum.male:
        return 'М';
      case UserGenderEnum.other:
        return 'Д';
    }
  }
}
