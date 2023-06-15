import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/features/clubs/domain/cubits/calculate_workout_price/calculate_workout_price_cubit.dart';
import 'package:fitt/features/clubs/domain/cubits/club/club_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
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
    return BlocListener<ClubCubit, ClubState>(
      bloc: getIt<ClubCubit>(),
      listener: (context, state) {
        getIt<CalculateWorkoutPriceCubit>()
            .getCalculatedPriceWorkout(slotUuid: getIt<ClubCubit>().slotUuid);
      },
      child:
          BlocBuilder<CalculateWorkoutPriceCubit, CalculateWorkoutPriceState>(
        bloc: getIt<CalculateWorkoutPriceCubit>(),
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loaded: (calculatedPrice, price) {
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
                    if (userSnapshot?.wallet == null) ...[
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
                              if (club.batchHoursAvailable == 0)
                                Text(
                                  '${e.price} \u20BD',
                                  style: AppTypography.kBody14
                                      .apply(color: AppColors.kOxford),
                                )
                              else
                                BatchAvailableHours(
                                  hours: getIt<ClubCubit>()
                                      .selectedSlot!
                                      .duration
                                      .inHours,
                                  isBig: false,
                                ),
                            ],
                          ),
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Итого за тренировку',
                          style: AppTypography.kH16
                              .apply(color: AppColors.kBaseBlack),
                        ),
                        if (club.batchHoursAvailable == 0)
                          Text(
                            '${getIt<ClubCubit>().selectedSlot!.price} \u20BD',
                            style: AppTypography.kH16
                                .apply(color: AppColors.kOxford),
                          )
                        else
                          BatchAvailableHours(
                            hours: getIt<ClubCubit>()
                                .selectedSlot!
                                .duration
                                .inHours,
                            isBig: false,
                          ),
                      ],
                    ),
                  ],
                ),
              );
            },
            error: (error) => const SizedBox(),
          );
        },
      ),
    );
  }
}
