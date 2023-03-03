import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/blocs/user/user_bloc.dart';
import 'package:fitt/domain/cubits/workout/workout_cubit.dart';
import 'package:fitt/domain/cubits/workouts/workouts_cubit.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/presentation/components/buttons/workout_action_button.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ClosestWorkoutCard extends StatelessWidget {
  const ClosestWorkoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      bloc: getIt<UserBloc>(),
      listener: (context, state) {
        state.whenOrNull(
          loaded: (_) {
            getIt<WorkoutsCubit>().getWorkouts();
          },
          loadedWithNoUser: (_) {
            getIt<WorkoutsCubit>().getWorkouts();
          },
        );
      },
      child: BlocBuilder<WorkoutsCubit, WorkoutsState>(
        bloc: getIt<WorkoutsCubit>(),
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const SizedBox(),
            error: (_) => const SizedBox(),
            loaded: (_, closestWorkout) {
              if (closestWorkout == null) return const SizedBox();
              if (closestWorkout.canStartTime.isAfter(DateTime.now())) {
                return const SizedBox();
              }
              return _buildClosestWorkoutWidget(closestWorkout, context);
            },
          );
        },
      ),
    );
  }

  Widget _buildClosestWorkoutWidget(
      Workout closestWorkout, BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<WorkoutCubit>()
            .getWorkout(workoutUuid: closestWorkout.uuid)
            .then((value) => context.pushNamed(
                  AppRoute.workout.routeToPath,
                  extra: false,
                ));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(top: 118, left: 16, right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.kBaseWhite,
          boxShadow: [
            BoxShadow(
              color: AppColors.kOxford20.withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const SizedBox(width: 8),
                Text(
                  DateTimeUtils.timeFormat.format(closestWorkout.startTime),
                  style: AppTypography.kNum24.apply(color: AppColors.kOxford60),
                ),
                const Separator(
                  width: 1,
                  height: 24,
                  margin: EdgeInsets.only(left: 19, right: 16),
                ),
                RichText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: closestWorkout.status != WorkoutStatusEnum.started
                        ? 'Следующая тренировка\n'
                        : 'Текущая тренировка\n',
                    style:
                        AppTypography.kBody14.apply(color: AppColors.kOxford60),
                    children: [
                      TextSpan(
                        text: '${closestWorkout.club.label}',
                        style: AppTypography.kBody14
                            .apply(color: AppColors.kOxford40),
                      ),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                const Icon(
                  AppIcons.arr_right,
                  size: 18,
                  color: AppColors.kOxford60,
                ),
                const SizedBox(width: 8),
              ],
            ),
            WorkoutActionButton(
              workout: closestWorkout,
              showBeforeCanStart: false,
            ),
          ],
        ),
      ),
    );
  }
}
