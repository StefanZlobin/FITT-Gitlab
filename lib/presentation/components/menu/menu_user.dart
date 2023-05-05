import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/authorization_status_enum.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/enum/time_slice_enum.dart';
import 'package:fitt/core/enum/user_role_enum.dart';
import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/blocs/analytics_filtering/analytics_filtering_bloc.dart';
import 'package:fitt/domain/cubits/admin_club/admin_club_cubit.dart';
import 'package:fitt/domain/cubits/admin_clubs/admin_clubs_cubit.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/features/auth/domain/blocs/authorization/authorization_bloc.dart';
import 'package:fitt/features/auth/domain/repositories/user/user_repository.dart';
import 'package:fitt/features/clubs/domain/blocs/partner_clubs_favorite/partner_clubs_favorite_bloc.dart';
import 'package:fitt/features/clubs/domain/cubits/purchased_batch/purchased_batch_cubit.dart';
import 'package:fitt/features/workouts/domain/blocs/closest_workout/closest_workout_bloc.dart';
import 'package:fitt/features/workouts/domain/blocs/workouts/workouts_bloc.dart';
import 'package:fitt/presentation/components/menu/widget/admin_menu_tile.dart';
import 'package:fitt/presentation/components/menu/widget/user_menu_tile.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/components/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MenuUser extends StatelessWidget with UserMixin {
  const MenuUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserAvatar(),
        BlocBuilder<AuthorizationBloc, AuthorizationState>(
          bloc: getIt<AuthorizationBloc>(),
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              error: (_) => const SizedBox(),
              loaded: (authorizationStatus) {
                return authorizationStatus ==
                            AuthorizationStatusEnum.administrator ||
                        authorizationStatus == AuthorizationStatusEnum.manager
                    ? Column(
                        children: [
                          const Separator(),
                          BlocBuilder<AdminClubsCubit, AdminClubsState>(
                            bloc: getIt<AdminClubsCubit>(),
                            builder: (context, state) {
                              return state.when(
                                initial: () =>
                                    const CircularProgressIndicator(),
                                loaded: (adminClubs, nameOfOrganization) {
                                  if (adminClubs.isEmpty) {
                                    return const SizedBox();
                                  }
                                  return AdminMenuTile(
                                    onPressed: () {
                                      if (userSnapshot!.role!
                                          .contains(UserRoleEnum.manager)) {
                                        getIt<AnalyticsFilteringBloc>().add(
                                          const AnalyticsFilteringEvent
                                              .timeSliceChanged(
                                            timeSlice: TimeSliceEnum.week,
                                          ),
                                        );
                                        context.push(
                                          AppRoute.analytics.routeToPath,
                                        );
                                      } else {
                                        getIt<AdminClubCubit>().getAdminClub(
                                          adminClubUuid: adminClubs.first.uuid!,
                                        );
                                        context.push(AppRoute
                                            .adminWorkoutList.routeToPath);
                                      }
                                    },
                                    title: Text(nameOfOrganization),
                                    subtitle: Text(
                                      userSnapshot!.role!.first.getUserRoleName(
                                        userSnapshot!.role!.first,
                                      ),
                                    ),
                                    trailing: const Icon(
                                      AppIcons.arr_big_right,
                                      size: 18,
                                      color: AppColors.kBaseBlack,
                                    ),
                                  );
                                },
                                error: (_) => const SizedBox(),
                              );
                            },
                          ),
                          const Separator(),
                        ],
                      )
                    : const SizedBox();
              },
            );
          },
        ),
        UserMenuTile(
          title: const Text('Купленные часы'),
          onPressed: () {
            getIt<PurchasedBatchCubit>().getUserBatches();
            context.push(AppRoute.purchasedBatch.routeToPath);
          },
        ),
        UserMenuTile(
          title: const Text('Тренировки'),
          subtitle: BlocBuilder<ClosestWorkoutBloc, ClosestWorkoutState>(
            bloc: getIt<ClosestWorkoutBloc>(),
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                loaded: (
                  workout,
                ) {
                  if (workout == null) return const SizedBox();
                  late String closestWorkoutText;
                  if (workout.inProgress) {
                    closestWorkoutText = 'Идет тренировка';
                  } else if ((workout.status == WorkoutStatusEnum.planned ||
                          workout.status == WorkoutStatusEnum.requiresStart) &&
                      workout.startTime.isBefore(DateTime.now())) {
                    closestWorkoutText = 'Начните тренировку';
                  } else {
                    closestWorkoutText =
                        'Ближайшая через ${DateTimeUtils.nextWorkoutSession(workout.startTime)}';
                  }
                  return Text(closestWorkoutText);
                },
                error: (_) => const SizedBox(),
              );
            },
          ),
          trailing: BlocBuilder<WorkoutsBloc, WorkoutsState>(
            bloc: getIt<WorkoutsBloc>(),
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                error: (error) => const SizedBox(),
                loaded: (workouts) {
                  final countWorkout = workouts.length;
                  if (countWorkout == 0) return const SizedBox();
                  return Container(
                    width: 23,
                    height: 23,
                    decoration: BoxDecoration(
                      color: AppColors.kPrimaryBlue,
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: Center(
                      child: Text(
                        '$countWorkout',
                        style: AppTypography.kBody12
                            .apply(color: AppColors.kBaseWhite),
                      ),
                    ),
                  );
                },
              );
            },
          ),
          onPressed: () {
            getIt<WorkoutsBloc>().add(const WorkoutsEvent.getWorkouts());
            context.push(AppRoute.workoutList.routeToPath);
          },
        ),
        UserMenuTile(
          title: const Text('Избранное'),
          onPressed: () {
            getIt<PartnerClubsFavoriteBloc>().add(
              const PartnerClubsFavoriteEvent.getPartnerClubs(
                clubFilters: ClubFilters(favorite: true),
                clubSortingEnum: ClubSortingEnum.nearest,
              ),
            );
            context.push(AppRoute.clubListFavourite.routeToPath);
          },
        ),
        UserMenuTile(
          title: const Text('История тренировок'),
          onPressed: () {
            context.pushNamed(
              AppRoute.workoutArchiveList.routeToPath,
              extra: false,
            );
          },
        ),
        UserMenuTile(
          title: const Text('Информация'),
          onPressed: () => context.push(AppRoute.information.routeToPath),
        ),
        const Expanded(child: SizedBox()),
        UserMenuTile(
          title: Text(
            'Выйти из профиля',
            style: AppTypography.kBody14.apply(color: AppColors.kOxford40),
          ),
          onPressed: () async {
            await getIt<UserRepository>().logoutUser(deleteUser: false);
          },
        ),
      ],
    );
  }
}
