// ignore_for_file: unnecessary_null_comparison

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/domain/blocs/user_avatar/user_avatar_bloc.dart';
import 'package:fitt/domain/cubits/buy_workout/buy_workout_cubit.dart';
import 'package:fitt/domain/cubits/workout/workout_cubit.dart';
import 'package:fitt/domain/cubits/workouts/workouts_cubit.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:fitt/features/clubs/domain/cubits/club/club_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/activity/activity.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/clubs/domain/entities/time_slot/time_slot.dart';
import 'package:fitt/features/clubs/presentation/components/club_buy_workout_disclaimer.dart';
import 'package:fitt/features/clubs/presentation/pages/partner_club/widgets/calculate_price_workout.dart';
import 'package:fitt/features/clubs/presentation/pages/partner_club/widgets/chip_filter.dart';
import 'package:fitt/features/clubs/presentation/pages/partner_club/widgets/day_tile.dart';
import 'package:fitt/features/clubs/presentation/pages/partner_club/widgets/day_tile_placeholder.dart';
import 'package:fitt/gen/assets.gen.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class ClubBuyWorkoutPage extends StatelessWidget with UserMixin {
  const ClubBuyWorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BuyWorkoutCubit, BuyWorkoutState>(
      bloc: getIt<BuyWorkoutCubit>(),
      listener: (context, state) {
        state.whenOrNull(
          loaded: (workout) {
            if (workout.payForm == null) {
              getIt<WorkoutsCubit>().getWorkouts(); //Remove
              getIt<WorkoutCubit>().getWorkout(workoutUuid: workout.uuid);
              getIt<AppMetricaService>().reportEventToAppMetrica(
                eventName: 'Пользователь купил тренировку за пакет часов',
              );
              context.push(AppRoute.paymentSuccess.routeToPath);
            } else {
              getIt<AppMetricaService>().reportEventToAppMetrica(
                eventName: 'Пользователь перешел на экран оплаты тренировки',
              );
              context.pushNamed(
                AppRoute.webview.routeToPath,
                queryParams: <String, String>{
                  'url': workout.payForm!,
                  'pageTitle': 'Оплата',
                  'workoutUuid': workout.uuid,
                },
              );
            }
          },
        );
      },
      child: BlocBuilder<ClubCubit, ClubState>(
        bloc: getIt<ClubCubit>(),
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(L.of(context).buyWorkoutPageTitle),
              leading: IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(AppIcons.close_big),
              ),
            ),
            body: state.when(
              loading: () => const SizedBox(),
              loaded: (
                club,
                lastAvailableDateSelected,
                selectedActivity,
                dateSlots,
                timeSlots,
                durationSlots,
                batches,
              ) {
                return _buildPage(
                  club,
                  lastAvailableDateSelected,
                  selectedActivity!,
                  dateSlots!,
                  timeSlots!,
                  durationSlots!,
                );
              },
              error: (error) => const SizedBox(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPage(
    PartnerClub club,
    bool lastAvailableDateSelected,
    Activity selectedActivity,
    FilterGroup<bool, ToggledFilter<DateTime>> dateSlots,
    FilterGroup<bool, ToggledFilter<DateTime>> timeSlots,
    FilterGroup<bool, ToggledFilter<Duration>> durationSlots,
  ) {
    return Stack(
      children: [
        ListView(
          primary: true,
          children: [
            _buildPickDateWidget(dateSlots),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
              child: Text(
                'Начало тренировки',
                style: AppTypography.kH14.apply(color: AppColors.kOxford40),
              ),
            ),
            _buildPickTimeWidget(
              timeSlots,
              dateSlots,
              lastAvailableDateSelected,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
              child: Text(
                'Длительность тренировки',
                style: AppTypography.kH14.apply(color: AppColors.kOxford40),
              ),
            ),
            _buildPickDurationWidget(durationSlots),
            CalculatedPriceWorkout(club: club),
            ClubBuyWorkoutDisclaimer(club: club),
          ],
        ),
        _buildPayButton(club, selectedActivity),
      ],
    );
  }

  Widget _buildPayButton(PartnerClub club, Activity activity) {
    return BottomCenter(
      child: BlocBuilder<UserAvatarBloc, UserAvatarState>(
        bloc: getIt<UserAvatarBloc>(),
        builder: (context, state) {
          return state.when(
            initial: () => _buildAppElevatedPayButton(
              club,
              activity,
              true,
              context,
            ),
            loaded: (_) => _buildAppElevatedPayButton(
              club,
              activity,
              false,
              context,
            ),
            error: (_) => _buildAppElevatedPayButton(
              club,
              activity,
              true,
              context,
            ),
          );
        },
      ),
    );
  }

  AppElevatedButton _buildAppElevatedPayButton(
    PartnerClub club,
    Activity activity,
    bool isDisable,
    BuildContext context,
  ) {
    return AppElevatedButton(
      isDisable: !club.payAvailable!,
      errorText:
          club.payAvailable! ? null : const Text('Подключаем систему оплаты'),
      onPressedAsync: () async {
        if (userSnapshot == null) {
          context.push(AppRoute.inputPhoneNumber.routeToPath);
        } else if (!userSnapshot!.hasFullData) {
          context.pushNamed(
            AppRoute.personalData.routeToPath,
            extra: {
              'canSkip': false,
              'afterSignin': false,
            },
          );
        } else {
          club.batchHoursAvailable != 0
              ? await getIt<BuyWorkoutCubit>().buyWorkoutByBatch(
                  slot: TimeSlot(
                    id: getIt<ClubCubit>().selectedSlot!.id,
                    startTime: getIt<ClubCubit>().selectedSlot!.startTime,
                    duration: getIt<ClubCubit>().selectedSlot!.duration,
                    price: getIt<ClubCubit>().selectedSlot!.price,
                  ),
                  activityUuid: activity.uuid,
                )
              : await getIt<BuyWorkoutCubit>().buyWorkout(
                  slot: TimeSlot(
                    id: getIt<ClubCubit>().selectedSlot!.id,
                    startTime: getIt<ClubCubit>().selectedSlot!.startTime,
                    duration: getIt<ClubCubit>().selectedSlot!.duration,
                    price: getIt<ClubCubit>().selectedSlot!.price,
                  ),
                  activityUuid: activity.uuid,
                );
        }
      },
      textButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (club.batchHoursAvailable == 0)
            Text(
              'Стоимость ${getIt<ClubCubit>().selectedSlot!.price} \u20BD',
              style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
            )
          else
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Стоимость',
                  style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
                ),
                const SizedBox(width: 4),
                Text(
                  '${getIt<ClubCubit>().selectedSlot!.duration.inHours}',
                  style: AppTypography.kH24.apply(color: AppColors.kBaseWhite),
                ),
                const SizedBox(width: 4),
                Assets.images.batch.image(filterQuality: FilterQuality.high),
              ],
            ),
          Text(
            'Перейти к оплате',
            style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
          ),
        ],
      ),
    );
  }

  Widget _buildPickDurationWidget(
    FilterGroup<bool, ToggledFilter<Duration>> durationSlots,
  ) {
    return SizedBox(
      height: 40,
      child: ListView(
        padding: const EdgeInsets.only(left: 16),
        scrollDirection: Axis.horizontal,
        primary: false,
        children: [
          ...durationSlots.children.map(
            (durationSlot) => ChipFilter(
              selectedSlot: '${durationSlot.details.inMinutes} м',
              isActive: durationSlot.value,
              isBig: true,
              onPressed: () =>
                  getIt<ClubCubit>().selectDurationSlot(durationSlot.details),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPickTimeWidget(
    FilterGroup<bool, ToggledFilter<DateTime>> timeSlots,
    FilterGroup<bool, ToggledFilter<DateTime>> dateSlots,
    bool lastAvailableDateSelected,
  ) {
    return SizedBox(
      height: 40,
      child: ListView(
        padding: const EdgeInsets.only(left: 16),
        scrollDirection: Axis.horizontal,
        primary: false,
        children: [
          ...timeSlots.children.map(
            (timeSlot) => ChipFilter(
              selectedSlot: DateTimeUtils.timeFormat.format(timeSlot.details),
              isActive: timeSlot.value,
              isBig: false,
              onPressed: () =>
                  getIt<ClubCubit>().selectTimeSlot(timeSlot.details),
            ),
          ),
          if (!lastAvailableDateSelected) _buildNextDayButton(dateSlots),
        ],
      ),
    );
  }

  Widget _buildNextDayButton(
    FilterGroup<bool, ToggledFilter<DateTime>> dateSlots,
  ) {
    return GestureDetector(
      onTap: () => getIt<ClubCubit>().selectDateSlot(dateSlots
          .children[
              dateSlots.children.indexOf(dateSlots.enabledChildren.single) + 1]
          .details),
      child: Container(
        height: 40,
        width: 106,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: SuperellipseShape(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24),
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
            side: const BorderSide(color: AppColors.kOxford20),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),
            Text(
              DateFormat.MMMMd().format(dateSlots
                  .children[dateSlots.children
                          .indexOf(dateSlots.enabledChildren.single) +
                      1]
                  .details),
              style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
            ),
            const SizedBox(width: 8),
            const Icon(
              AppIcons.arr_right,
              size: 10,
              color: AppColors.kPrimaryBlue,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPickDateWidget(
    FilterGroup<bool, ToggledFilter<DateTime>> dateSlots,
  ) {
    return Container(
      height: 144,
      margin: const EdgeInsets.only(top: 24),
      child: ListView(
        padding: const EdgeInsets.only(left: 16),
        scrollDirection: Axis.horizontal,
        primary: false,
        children: [
          ...dateSlots.children.map(
            (dateSlot) => DayTile(
              dateSlot: dateSlot.details,
              active: dateSlot.value,
              onPressed: () =>
                  getIt<ClubCubit>().selectDateSlot(dateSlot.details),
            ),
          ),
          const DayTilePlaceholder(
            whenAvailable: 'Бронь будет доступна завтра',
          ),
        ],
      ),
    );
  }
}
