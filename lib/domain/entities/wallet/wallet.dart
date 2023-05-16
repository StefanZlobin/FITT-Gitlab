// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:fitt/domain/entities/user_organization/user_organization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet.freezed.dart';
part 'wallet.g.dart';

@Freezed(toJson: true)
class Wallet with _$Wallet {
  factory Wallet({
    // Текущий остаток на балансе в копейках
    @JsonKey(name: 'balance')
        required int balance,
    // Дата следующего попонения кошелька
    @JsonKey(
      fromJson: dateTimeFromString,
      toJson: dateTimeToString,
      name: 'next_replenishment',
    )
        required DateTime nextReplenishment,
    required UserOrganization organizationInfo,
  }) = _Wallet;

  Wallet._();

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
}
