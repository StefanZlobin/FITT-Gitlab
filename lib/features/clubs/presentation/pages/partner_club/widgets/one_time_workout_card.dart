// ignore_for_file: use_build_context_synchronously

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/payment_type_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/features/clubs/domain/cubits/club/club_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/clubs/presentation/pages/partner_club/widgets/button_for_card.dart';
import 'package:fitt/features/payment/domain/blocs/payment_type/payment_type_bloc.dart';
import 'package:fitt/presentation/components/batch_available_hours.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OneTimeWorkoutCard extends StatelessWidget with UserMixin {
  const OneTimeWorkoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubCubit, ClubState>(
      bloc: getIt<ClubCubit>(),
      builder: (context, state) {
        return state.when(
          loading: () => const SizedBox(),
          loaded: (club, _, __, ___, ____, _____, ______) {
            return _buildCard(club, context);
          },
          error: (error) => const SizedBox(),
        );
      },
    );
  }

  Widget _buildCard(PartnerClub club, BuildContext context) {
    return Container(
      width: 240,
      height: 296,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.kBaseWhite),
        color: AppColors.kPrimaryBlue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildIcon(),
          _buildTitle(),
          const SizedBox(height: 4),
          _buildSubtitle(club.batchHoursAvailable?.ceil() ?? 0),
          const SizedBox(height: 16),
          ButtonForCard(
            isBig: true,
            onPressed: () async {
              final price = getIt<ClubCubit>().selectedSlot!.price;
              if (userSnapshot?.wallet != null &&
                  (userSnapshot?.wallet?.balance ?? 0) < price) {
                await _isEnoughMoneyForWallet(price, context);
              }
              context.push(AppRoute.clubBuyWorkout.routeToPath);
            },
            workoutSlot: DateTimeUtils.dateWithoutPrefix(
              getIt<ClubCubit>().selectedSlot!.startTime,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonForCard(
                isBig: false,
                onPressed: () async {
                  final price = getIt<ClubCubit>().selectedSlot!.price;
                  if (userSnapshot?.wallet != null &&
                      (userSnapshot?.wallet?.balance ?? 0) < price) {
                    await _isEnoughMoneyForWallet(price, context);
                  }

                  context.push(AppRoute.clubBuyWorkout.routeToPath);
                },
                workoutSlot: DateTimeUtils.timeFormat
                    .format(getIt<ClubCubit>().selectedSlot!.startTime),
              ),
              ButtonForCard(
                isBig: false,
                onPressed: () async {
                  final price = getIt<ClubCubit>().selectedSlot!.price;
                  if (userSnapshot?.wallet != null &&
                      (userSnapshot?.wallet?.balance ?? 0) < price) {
                    await _isEnoughMoneyForWallet(price, context);
                  }

                  context.push(AppRoute.clubBuyWorkout.routeToPath);
                },
                workoutSlot:
                    '${getIt<ClubCubit>().selectedSlot!.duration.inMinutes} м',
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          GestureDetector(
            onTap: () async {
              final price = getIt<ClubCubit>().selectedSlot!.price;
              if (userSnapshot?.wallet != null &&
                  (userSnapshot?.wallet?.balance ?? 0) < price) {
                await _isEnoughMoneyForWallet(price, context);
              }

              context.push(AppRoute.clubBuyWorkout.routeToPath);
            },
            child: Container(
              width: 208,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.kBaseWhite),
                color: AppColors.kBaseWhite,
              ),
              child: BlocBuilder<PaymentTypeBloc, PaymentTypeState>(
                bloc: getIt<PaymentTypeBloc>(),
                builder: (context, state) {
                  return state.when(
                    initial: (paymentType) => _buildPayment(club, paymentType),
                    loaded: (paymentType) => _buildPayment(club, paymentType),
                    error: (_) => const SizedBox(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _isEnoughMoneyForWallet(int price, BuildContext context) async {
    await showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          titlePadding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
          titleTextStyle: AppTypography.kH18.apply(color: AppColors.kOxford),
          title: const Text('Баланс кошелька'),
          contentPadding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
          contentTextStyle:
              AppTypography.kBody14.apply(color: AppColors.kOxford),
          content: const Text(
            'Невозможно оплатить полную стоимость тренировки, так как не хватает денег на балансе. Мы включим данный вид оплаты, когда будет возможно полностью оплатить тренировку',
          ),
          actionsPadding: const EdgeInsets.only(
            bottom: 24,
            right: 16,
            left: 16,
          ),
          actions: [
            AppElevatedButton(
              marginButton: const EdgeInsets.all(0),
              textButton: const Text('Ясно'),
              onPressed: () => context.pop(),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPayment(PartnerClub club, PaymentTypeEnum paymentType) {
    Widget price = const SizedBox();

    switch (paymentType) {
      case PaymentTypeEnum.money:
        price = Text(
          'Оплатить ${getIt<ClubCubit>().selectedSlot!.price} \u20BD',
          style: AppTypography.kH14.apply(color: AppColors.kPrimaryBlue),
        );
        break;
      case PaymentTypeEnum.batch:
        price = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Оплатить',
              style: AppTypography.kH14.apply(color: AppColors.kPrimaryBlue),
            ),
            const SizedBox(width: 4),
            BatchAvailableHours(
              isBig: false,
              hours: getIt<ClubCubit>().selectedSlot!.duration.inHours,
            ),
          ],
        );
        break;
      case PaymentTypeEnum.corporateBalance:
        price = Text(
          'Оплатить 0 \u20BD',
          style: AppTypography.kH14.apply(color: AppColors.kPrimaryBlue),
        );
        break;
    }

    return Center(child: price);
  }

  Text _buildSubtitle(int batchHoursAviable) {
    return Text(
      batchHoursAviable > 0 ? 'Выгодные предложения' : 'Свободная тренировка',
      style: AppTypography.kBody14.apply(color: AppColors.kBaseWhite),
      textAlign: TextAlign.start,
    );
  }

  Text _buildTitle() {
    return Text(
      'Разовая\nтренировка'.toUpperCase(),
      style: AppTypography.kH18.apply(color: AppColors.kBaseWhite),
    );
  }

  Widget _buildIcon() {
    return const TopRight(
      child: Icon(
        AppIcons.training,
        size: 24,
        color: AppColors.kBaseWhite,
      ),
    );
  }
}
