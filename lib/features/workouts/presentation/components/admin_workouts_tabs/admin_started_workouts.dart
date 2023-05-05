import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/admin_workout_sorting_enum.dart';
import 'package:fitt/core/enum/workout_phase_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/blocs/notifications/notifications_bloc.dart';
import 'package:fitt/domain/cubits/admin_workouts/admin_workouts_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/admin_club/admin_club.dart';
import 'package:fitt/features/workouts/data/models/request/admin/admin_workouts_filters_body.dart';
import 'package:fitt/features/workouts/presentation/components/admin_preview_workout_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminStartedWorkouts extends StatelessWidget {
  const AdminStartedWorkouts({
    super.key,
    required this.adminClub,
    required this.canConfirmation,
  });

  final AdminClub adminClub;
  final bool canConfirmation;

  @override
  Widget build(BuildContext context) {
    final notificationsBloc = getIt<NotificationsBloc>();

    final now = DateTime.now();
    final startDateFrom = DateTime.parse(
      '${now.year}-${now.month < 10 ? '0' : ''}${now.month}-${now.day < 10 ? '0' : ''}${now.day} 00:00:01',
    );

    final startDateTo = DateTime.parse(
      '${now.year}-${now.month < 10 ? '0' : ''}${now.month}-${now.day < 10 ? '0' : ''}${now.day} 23:59:59',
    );

    getIt<AdminWorkoutsCubit>().getAdminWorkouts(
      filters: AdminWorkoutsFiltersRequestBody(
        clubIds: [adminClub.uuid!],
        phase: WorkoutPhaseEnum.inProcess,
        startDateFrom: startDateFrom,
        startDateTo: startDateTo,
        endDateFrom: startDateFrom,
        endDateTo: startDateTo,
        sortBy: AdminWorkoutSortingEnum.planStartTimeDesc,
      ),
    );

    return MultiBlocListener(
      listeners: [
        BlocListener<NotificationsBloc, NotificationsState>(
          bloc: notificationsBloc,
          listenWhen: (previous, current) => true,
          listener: (context, state) {
            state.whenOrNull(
              workoutStatusRF: () =>
                  getIt<AdminWorkoutsCubit>().getAdminWorkouts(
                filters: AdminWorkoutsFiltersRequestBody(
                  clubIds: [adminClub.uuid!],
                  phase: WorkoutPhaseEnum.inProcess,
                  startDateFrom: startDateFrom,
                  startDateTo: startDateTo,
                  endDateFrom: startDateFrom,
                  endDateTo: startDateTo,
                  sortBy: AdminWorkoutSortingEnum.planStartTimeDesc,
                ),
              ),
              workoutStatusFinished: () =>
                  getIt<AdminWorkoutsCubit>().getAdminWorkouts(
                filters: AdminWorkoutsFiltersRequestBody(
                  clubIds: [adminClub.uuid!],
                  phase: WorkoutPhaseEnum.inProcess,
                  startDateFrom: startDateFrom,
                  startDateTo: startDateTo,
                  endDateFrom: startDateFrom,
                  endDateTo: startDateTo,
                  sortBy: AdminWorkoutSortingEnum.planStartTimeDesc,
                ),
              ),
              workoutStatusFF: () =>
                  getIt<AdminWorkoutsCubit>().getAdminWorkouts(
                filters: AdminWorkoutsFiltersRequestBody(
                  clubIds: [adminClub.uuid!],
                  phase: WorkoutPhaseEnum.inProcess,
                  startDateFrom: startDateFrom,
                  startDateTo: startDateTo,
                  endDateFrom: startDateFrom,
                  endDateTo: startDateTo,
                  sortBy: AdminWorkoutSortingEnum.planStartTimeDesc,
                ),
              ),
              workoutStatusMissed: () =>
                  getIt<AdminWorkoutsCubit>().getAdminWorkouts(
                filters: AdminWorkoutsFiltersRequestBody(
                  clubIds: [adminClub.uuid!],
                  phase: WorkoutPhaseEnum.inProcess,
                  startDateFrom: startDateFrom,
                  startDateTo: startDateTo,
                  endDateFrom: startDateFrom,
                  endDateTo: startDateTo,
                  sortBy: AdminWorkoutSortingEnum.planStartTimeDesc,
                ),
              ),
            );
          },
        ),
      ],
      child: BlocBuilder<AdminWorkoutsCubit, AdminWorkoutsState>(
        bloc: getIt<AdminWorkoutsCubit>(),
        buildWhen: (previous, current) => true,
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loaded: (adminWorkouts) {
              if (adminWorkouts.isEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Здесь будут начатые тренировки.\nНет ни одной записи на ближайшее время',
                    style:
                        AppTypography.kBody14.apply(color: AppColors.kOxford60),
                    textAlign: TextAlign.center,
                  ),
                );
              }
              return ListView.separated(
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final adminWorkout = adminWorkouts[index];
                  return AdminPreviewWorkoutCard(
                    adminWorkout: adminWorkout,
                    canConfirmation: canConfirmation,
                  );
                },
                itemCount: adminWorkouts.length,
              );
            },
            error: (error) => const SizedBox(),
          );
        },
      ),
    );
  }
}
