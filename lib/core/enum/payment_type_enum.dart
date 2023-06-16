enum PaymentTypeEnum {
  money,
  batch,
  corporateBalance;

  String? valueToPaymentString(PaymentTypeEnum v) {
    switch (v) {
      case PaymentTypeEnum.batch:
        return 'Оплата пакетом часов';
      case PaymentTypeEnum.money:
        return null;
      case PaymentTypeEnum.corporateBalance:
        return 'Оплата из кошелька';
    }
  }
}
