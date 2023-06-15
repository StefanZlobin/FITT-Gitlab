// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'wallet.freezed.dart';
part 'wallet.g.dart';

@Freezed(toJson: true)
class Wallet with _$Wallet {
  factory Wallet({
    // Текущий остаток на балансе в копейках
    @JsonKey(name: 'balance', fromJson: toRubles)
        required int balance,
    // Лимит без вычета купленных тренировок
    @JsonKey(name: 'total_limit', fromJson: toRubles)
        required int totalLimit,
    // Дата следующего попонения кошелька
    @JsonKey(
      fromJson: dateTimeFromString,
      toJson: dateTimeToString,
      name: 'next_replenishment',
    )
        required DateTime nextReplenishment,
    // Наименование организации, в которой юзер состоит
    @JsonKey(name: 'organization_label')
        required String organizationLabel,
    // Описание организации
    @JsonKey(name: 'organization_description')
        required String organizationDescription,
  }) = _Wallet;

  Wallet._();

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);

  String get currentBalanceInRub {
    final NumberFormat numberFormat = NumberFormat.currency(
      locale: 'ru_RU',
      symbol: '\u20BD',
      decimalDigits: 0,
    );

    return numberFormat.format(balance);
  }
}
