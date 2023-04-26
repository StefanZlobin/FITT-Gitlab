import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/features/clubs/domain/cubits/club/club_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/clubs/presentation/pages/partner_club/widgets/button_for_card.dart';
import 'package:fitt/presentation/components/batch_available_hours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OneTimeWorkoutCard extends StatelessWidget {
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
          _buildSubtitle(club.batchHoursAvailable ?? 0),
          const SizedBox(height: 16),
          ButtonForCard(
            isBig: true,
            onPressed: () => context.push(AppRoute.clubBuyWorkout.routeToPath),
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
                onPressed: () =>
                    context.push(AppRoute.clubBuyWorkout.routeToPath),
                workoutSlot: DateTimeUtils.timeFormat
                    .format(getIt<ClubCubit>().selectedSlot!.startTime),
              ),
              ButtonForCard(
                isBig: false,
                onPressed: () =>
                    context.push(AppRoute.clubBuyWorkout.routeToPath),
                workoutSlot:
                    '${getIt<ClubCubit>().selectedSlot!.duration.inMinutes} м',
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          GestureDetector(
            onTap: () => context.push(AppRoute.clubBuyWorkout.routeToPath),
            child: Container(
              width: 208,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.kBaseWhite),
                color: AppColors.kBaseWhite,
              ),
              child: Center(
                child: club.batchHoursAvailable == 0
                    ? Text(
                        'Оплатить ${getIt<ClubCubit>().selectedSlot!.price} \u20BD',
                        style: AppTypography.kH14
                            .apply(color: AppColors.kPrimaryBlue),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Оплатить',
                            style: AppTypography.kH14
                                .apply(color: AppColors.kPrimaryBlue),
                          ),
                          const SizedBox(width: 4),
                          BatchAvailableHours(
                            isBig: false,
                            hours: getIt<ClubCubit>()
                                .selectedSlot!
                                .duration
                                .inHours,
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text _buildSubtitle(double batchHoursAviable) {
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
