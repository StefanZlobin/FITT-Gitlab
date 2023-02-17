import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/admin_workout_sorting_enum.dart';
import 'package:fitt/core/enum/user_role_enum.dart';
import 'package:fitt/core/enum/workout_phase_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/data/models/request/admin/admin_workouts_filters_body.dart';
import 'package:fitt/domain/cubits/admin_workout/admin_workout_cubit.dart';
import 'package:fitt/domain/cubits/admin_workouts/admin_workouts_cubit.dart';
import 'package:fitt/domain/cubits/notification/notification_cubit.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:fitt/presentation/components/workout/admin_preview_workout_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminPlannedWorkouts extends StatelessWidget {
  const AdminPlannedWorkouts({
    super.key,
    required this.adminClub,
  });

  final AdminClub adminClub;

  @override
  Widget build(BuildContext context) {
    final notificationBloc = getIt<NotificationCubit>();

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
        phase: WorkoutPhaseEnum.planned,
        startDateFrom: startDateFrom,
        startDateTo: startDateTo,
        endDateFrom: startDateFrom,
        endDateTo: startDateTo,
        sortBy: AdminWorkoutSortingEnum.planStartTimeDesc,
      ),
    );

    return MultiBlocListener(
      listeners: [
        BlocListener<AdminWorkoutCubit, AdminWorkoutState>(
          bloc: getIt<AdminWorkoutCubit>(),
          listener: (context, state) {
            state.whenOrNull(loaded: (adminWorkout) {
              getIt<AdminWorkoutsCubit>().getAdminWorkouts(
                filters: AdminWorkoutsFiltersRequestBody(
                  clubIds: [adminClub.uuid!],
                  phase: WorkoutPhaseEnum.planned,
                  startDateFrom: startDateFrom,
                  startDateTo: startDateTo,
                  endDateFrom: startDateFrom,
                  endDateTo: startDateTo,
                  sortBy: AdminWorkoutSortingEnum.planStartTimeDesc,
                ),
              );
            });
          },
        ),
        BlocListener<NotificationCubit, NotificationState>(
          bloc: notificationBloc,
          listener: (context, state) {
            state.whenOrNull(changeWorkout: (message) {
              if (message.data['user_type'] ==
                  UserTypeEnum.ADMINISTRATOR.name) {
                if (message.data['status'] == 'REQUIRED_START' ||
                    message.data['status'] == 'PLAN') {
                  getIt<AdminWorkoutsCubit>().getAdminWorkouts(
                    filters: AdminWorkoutsFiltersRequestBody(
                      clubIds: [adminClub.uuid!],
                      phase: WorkoutPhaseEnum.planned,
                      startDateFrom: startDateFrom,
                      startDateTo: startDateTo,
                      endDateFrom: startDateFrom,
                      endDateTo: startDateTo,
                      sortBy: AdminWorkoutSortingEnum.planStartTimeDesc,
                    ),
                  );
                }
              }
            });
          },
        ),
      ],
      child: BlocBuilder<AdminWorkoutsCubit, AdminWorkoutsState>(
        bloc: getIt<AdminWorkoutsCubit>(),
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loaded: (adminWorkouts) {
              if (adminWorkouts.isEmpty) {
                return Text(
                  'В клубе сегодня нет занимающихся',
                  style: AppTypography.kH18.apply(color: AppColors.kPrimaryRed),
                  textAlign: TextAlign.center,
                );
              }
              return ListView.separated(
                itemBuilder: (context, index) {
                  final adminWorkout = adminWorkouts[index];
                  return AdminPreviewWorkoutCard(adminWorkout: adminWorkout);
                },
                separatorBuilder: (_, __) => const SizedBox(height: 8),
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
