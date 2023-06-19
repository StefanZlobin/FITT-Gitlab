// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:fitt/core/enum/payment_type_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/payment/domain/blocs/payment_toggle/payment_toggle_bloc.dart';
import 'package:fitt/features/payment/presentation/components/switch_widget.dart';
import 'package:flutter/material.dart';

class PaymentToggle extends StatelessWidget with UserMixin {
  const PaymentToggle({
    super.key,
    required this.club,
    required this.price,
  });

  final PartnerClub club;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (userSnapshot?.wallet != null &&
            (userSnapshot?.wallet?.balance ?? 0) >= price) ...[
          SwitchWidget(
            paymentType: PaymentTypeEnum.corporateBalance,
            club: club,
            onPressed: () {
              getIt<PaymentToggleBloc>()
                  .add(const PaymentToggleEvent.toggleChanged(
                paymentType: PaymentTypeEnum.corporateBalance,
              ));
            },
          ),
          const SizedBox(height: 8),
        ],
        if (club.batchHoursAvailable != 0) ...[
          SwitchWidget(
            paymentType: PaymentTypeEnum.batch,
            club: club,
            onPressed: () {
              getIt<PaymentToggleBloc>()
                  .add(const PaymentToggleEvent.toggleChanged(
                paymentType: PaymentTypeEnum.batch,
              ));
            },
          ),
          const SizedBox(height: 8),
        ],
        SwitchWidget(
          paymentType: PaymentTypeEnum.money,
          club: club,
          onPressed: () {
            getIt<PaymentToggleBloc>()
                .add(const PaymentToggleEvent.toggleChanged(
              paymentType: PaymentTypeEnum.money,
            ));
          },
        ),
      ],
    );
  }
}
