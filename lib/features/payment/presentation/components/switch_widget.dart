import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/payment_type_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/features/clubs/domain/cubits/club/club_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/payment/domain/blocs/payment_toggle/payment_toggle_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({
    super.key,
    required this.paymentType,
    required this.club,
    required this.onPressed,
  });

  final PaymentTypeEnum paymentType;
  final PartnerClub club;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentToggleBloc, PaymentToggleState>(
      bloc: getIt<PaymentToggleBloc>(),
      builder: (context, state) {
        return state.when(
          initial: (pType) {
            String buttonText = '';
            final value = pType == paymentType;

            switch (paymentType) {
              case PaymentTypeEnum.corporateBalance:
                buttonText =
                    'Заплатить ${getIt<ClubCubit>().selectedSlot?.price} \u20BD из кошелька';
                break;
              case PaymentTypeEnum.money:
                buttonText =
                    'Заплатить ${getIt<ClubCubit>().selectedSlot?.price} \u20BD картой';
                break;
              case PaymentTypeEnum.batch:
                buttonText = 'Оплатить пакетом часов';
                break;
            }

            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 44,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                border: value
                    ? null
                    : Border.all(
                        color: AppColors.kPrimaryPurple,
                        width: 2,
                      ),
                gradient: value
                    ? const LinearGradient(
                        colors: [
                          AppColors.kGradientRedLight,
                          AppColors.kGradientPurpleLight,
                          AppColors.kGradientBlueDark,
                        ],
                      )
                    : null,
              ),
              child: Row(
                children: [
                  GradientIcon(
                    AppIcons.icon_pack,
                    16,
                    value
                        ? const LinearGradient(
                            colors: [
                              AppColors.kBaseWhite,
                              AppColors.kBaseWhite,
                            ],
                          )
                        : const LinearGradient(
                            colors: [
                              AppColors.kGradientRedLight,
                              AppColors.kGradientPurpleLight,
                              AppColors.kGradientBlueDark,
                            ],
                          ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    buttonText,
                    style: value
                        ? AppTypography.kBody14
                            .apply(color: AppColors.kBaseWhite)
                        : AppTypography.kBody14
                            .apply(color: AppColors.kPrimaryPurple),
                  ),
                  const Expanded(child: SizedBox()),
                  _buildSwitchButton(value),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildSwitchButton(bool value) {
    return GestureDetector(
      onTap: () => !value ? onPressed.call() : null,
      child: Container(
        width: 32,
        height: 20,
        decoration: BoxDecoration(
          color: value
              ? AppColors.kBaseWhite.withOpacity(.2)
              : AppColors.kBaseWhite,
          border: Border.all(
            color: value ? AppColors.kBaseWhite : AppColors.kPrimaryPurple,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        child: AnimatedPadding(
          padding: value
              ? const EdgeInsets.fromLTRB(15, 3, 3, 3)
              : const EdgeInsets.fromLTRB(3, 3, 15, 3),
          duration: const Duration(milliseconds: 300),
          child: Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: value ? AppColors.kBaseWhite : AppColors.kPrimaryPurple,
              borderRadius: const BorderRadius.all(Radius.circular(360)),
            ),
          ),
        ),
      ),
    );
  }
}

class GradientIcon extends StatelessWidget {
  const GradientIcon(
    this.icon,
    this.size,
    this.gradient, {
    super.key,
  });

  final IconData icon;
  final double size;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: SizedBox(
        width: size * 1.2,
        height: size * 1.2,
        child: Icon(
          icon,
          size: size,
          color: Colors.white,
        ),
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradient.createShader(rect);
      },
    );
  }
}
