import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/payment_type_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/features/clubs/domain/cubits/calculate_workout_price/calculate_workout_price_cubit.dart';
import 'package:fitt/features/clubs/domain/cubits/club/club_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/calculate_price/calculate_price.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/payment/domain/blocs/payment_toggle/payment_toggle_bloc.dart';
import 'package:fitt/features/payment/domain/blocs/payment_type/payment_type_bloc.dart';
import 'package:fitt/features/payment/presentation/components/payment_toggle.dart';
import 'package:fitt/presentation/components/batch_available_hours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatedPriceWorkout extends StatelessWidget with UserMixin {
  const CalculatedPriceWorkout({
    super.key,
    required this.club,
  });

  final PartnerClub club;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ClubCubit, ClubState>(
          bloc: getIt<ClubCubit>(),
          listener: (context, state) {
            getIt<CalculateWorkoutPriceCubit>().getCalculatedPriceWorkout(
              slotUuid: getIt<ClubCubit>().slotUuid,
            );
          },
        ),
        BlocListener<PaymentToggleBloc, PaymentToggleState>(
          bloc: getIt<PaymentToggleBloc>(),
          listener: (context, state) {
            state.when(
              initial: (paymentType) => getIt<PaymentTypeBloc>()
                  .add(PaymentTypeEvent.changedPaymentType(
                paymentType: paymentType,
              )),
            );
          },
        ),
      ],
      child: BlocBuilder<PaymentTypeBloc, PaymentTypeState>(
        bloc: getIt<PaymentTypeBloc>(),
        builder: (context, state) {
          return state.when(
            initial: (paymentType) => _buildCalculatedWorkoutPrice(paymentType),
            loaded: (paymentType) => _buildCalculatedWorkoutPrice(paymentType),
            error: (_) => const SizedBox(),
          );
        },
      ),
    );
  }

  Widget _buildCalculatedWorkoutPrice(PaymentTypeEnum paymentType) {
    return BlocBuilder<CalculateWorkoutPriceCubit, CalculateWorkoutPriceState>(
      bloc: getIt<CalculateWorkoutPriceCubit>(),
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loaded: (calculatedPrice, price) {
            if (paymentType == PaymentTypeEnum.batch) {
              final startTime = getIt<ClubCubit>().selectedSlot!.startTime;
              final endTime = getIt<ClubCubit>().selectedSlot!.endTime;
              final durationInM = endTime.difference(startTime).inMinutes;
              final durationInH = endTime.difference(startTime).inHours;

              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Сумма к оплате',
                      style:
                          AppTypography.kH16.apply(color: AppColors.kBaseBlack),
                    ),
                    const SizedBox(height: 14),
                    if (userSnapshot?.wallet != null ||
                        club.batchHoursAvailable != 0) ...[
                      PaymentToggle(club: club, price: price),
                      const SizedBox(height: 14),
                    ],
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Text(
                          'Тренировка с ${DateTimeUtils.timeFormat.format(startTime)} до ${DateTimeUtils.timeFormat.format(endTime)} ($durationInM минут)',
                        ),
                        const Expanded(child: SizedBox()),
                        BatchAvailableHours(
                          hours: durationInH,
                          isBig: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    _buildCurrentWorkoutPrice(paymentType),
                  ],
                ),
              );
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Сумма к оплате',
                    style:
                        AppTypography.kH16.apply(color: AppColors.kBaseBlack),
                  ),
                  const SizedBox(height: 14),
                  if (userSnapshot?.wallet != null ||
                      club.batchHoursAvailable != 0) ...[
                    PaymentToggle(club: club, price: price),
                    const SizedBox(height: 14),
                  ],
                  const SizedBox(height: 14),
                  ...calculatedPrice.map(
                    (e) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          children: [
                            Text(
                              'Тренировка с ${DateTimeUtils.timeFormat.format(e.startTime)} до ${DateTimeUtils.timeFormat.format(e.endTime)} (${e.endTime.difference(e.startTime).inMinutes} минут)',
                            ),
                            if (calculatedPrice.length > 1) ...[
                              const SizedBox(width: 4),
                              GestureDetector(
                                child: const Icon(
                                  Icons.info,
                                  color: AppColors.kPrimaryBlue,
                                  size: 16,
                                ),
                              ),
                            ],
                            const Expanded(child: SizedBox()),
                            Text(
                              '${e.price} \u20BD',
                              style: AppTypography.kBody14
                                  .apply(color: AppColors.kOxford),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  BlocBuilder<PaymentTypeBloc, PaymentTypeState>(
                    bloc: getIt<PaymentTypeBloc>(),
                    builder: (context, state) {
                      return state.when(
                        initial: (pType) => _paymentFrom(pType),
                        loaded: (pType) => _paymentFrom(pType),
                        error: (_) => const SizedBox(),
                      );
                    },
                  ),
                  BlocBuilder<PaymentTypeBloc, PaymentTypeState>(
                    bloc: getIt<PaymentTypeBloc>(),
                    builder: (context, state) {
                      return state.when(
                        initial: (pType) => _buildCurrentWorkoutPrice(pType),
                        loaded: (pType) => _buildCurrentWorkoutPrice(pType),
                        error: (_) => const SizedBox(),
                      );
                    },
                  ),
                ],
              ),
            );
          },
          error: (error) => const SizedBox(),
        );
      },
    );
  }

  Widget _buildCurrentWorkoutPrice(PaymentTypeEnum pType) {
    Widget priceWorkout = const SizedBox();

    switch (pType) {
      case PaymentTypeEnum.money:
        priceWorkout = Text(
          '${getIt<ClubCubit>().selectedSlot!.price} \u20BD',
          style: AppTypography.kH16.apply(color: AppColors.kOxford),
        );
        break;
      case PaymentTypeEnum.batch:
        priceWorkout = BatchAvailableHours(
          hours: getIt<ClubCubit>().selectedSlot!.duration.inHours,
          isBig: false,
        );
        break;
      case PaymentTypeEnum.corporateBalance:
        priceWorkout = Text(
          '0 \u20BD',
          style: AppTypography.kH16.apply(color: AppColors.kOxford),
        );
        break;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Итого за тренировку',
          style: AppTypography.kH16.apply(color: AppColors.kBaseBlack),
        ),
        priceWorkout,
      ],
    );
  }

  Widget _paymentFrom(PaymentTypeEnum paymentType) {
    final value = paymentType.valueToPaymentString(paymentType);

    if (value == null) return const SizedBox();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            value,
            style: AppTypography.kBody14.apply(color: AppColors.kBaseBlack),
          ),
          Text(
            '- ${getIt<ClubCubit>().selectedSlot!.price} \u20BD',
            style: AppTypography.kBody14.apply(color: AppColors.kPrimaryBlue),
          ),
        ],
      ),
    );
  }
}

int calculatingBatchHours(CalculatePrice e) {
  final diffStartEndTime = e.endTime.difference(e.startTime);
  final res = double.parse(
    '${diffStartEndTime.inHours}.${diffStartEndTime.inMinutes == 60 ? 0 : diffStartEndTime.inMinutes}',
  );

  return res.toInt();
}
