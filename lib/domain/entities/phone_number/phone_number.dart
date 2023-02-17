// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number.freezed.dart';
part 'phone_number.g.dart';

@freezed
class PhoneNumber with _$PhoneNumber {
  PhoneNumber._();

  factory PhoneNumber({
    @JsonKey(name: 'phone_number') required String phoneNumber,
  }) = _PhoneNumber;

  factory PhoneNumber.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberFromJson(json);

  String get maskedPhoneNumber {
    final splitted = phoneNumber.split('');
    return '${splitted[0]}${splitted[1]} (${splitted[2]}${splitted[3]}${splitted[4]}) ${splitted[5]}${splitted[6]}${splitted[7]}-${splitted[8]}${splitted[9]}-${splitted[10]}${splitted[11]}';
  }
}
