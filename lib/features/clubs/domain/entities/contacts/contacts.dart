// ignore_for_file: invalid_annotation_target

import 'package:fitt/domain/entities/email/email.dart';
import 'package:fitt/domain/entities/phone_number/phone_number.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts.freezed.dart';
part 'contacts.g.dart';

@freezed
class Contacts with _$Contacts {
  Contacts._();

  factory Contacts({
    @JsonKey(name: 'owner_str') required String owner,
    @JsonKey(name: 'phone_numbers') required List<PhoneNumber> phoneNumbers,
    @JsonKey(name: 'emails') required List<Email> emails,
  }) = _Contacts;

  factory Contacts.fromJson(Map<String, dynamic> json) => _$ContactsFromJson(json);
}
