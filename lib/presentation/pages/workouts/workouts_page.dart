import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/domain/cubits/workouts/workouts_cubit.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/components/empty_widget.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/components/workout/workout_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class WorkoutsPage extends StatelessWidget {
  const WorkoutsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(AppIcons.arr_big_left),
        ),
        title: BlocBuilder<WorkoutsCubit, WorkoutsState>(
          bloc: getIt<WorkoutsCubit>(),
          builder: (context, state) {
            return state.when(
              error: (_) => Text(L.of(context).workoutListPageTitle(0)),
              initial: () => Text(L.of(context).workoutListPageTitle(0)),
              loading: () => Text(L.of(context).workoutListPageTitle(0)),
              loaded: (workouts, _) => Text(L.of(context).workoutListPageTitle(workouts.length)),
            );
          },
        ),
      ),
      body: BlocBuilder<WorkoutsCubit, WorkoutsState>(
        bloc: getIt<WorkoutsCubit>(),
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (workouts, _) => _buildWorkoutsCardWidget(context, workouts),
            error: (error) => const SizedBox(),
          );
        },
      ),
    );
  }

  Widget _buildWorkoutsCardWidget(BuildContext context, List<Workout> workouts) {
    if (workouts.isEmpty) {
      return EmptyWidget(
        hintText: 'Нет актуальных тренировок. Выберите клуб и запишитесь на тренировку',
        buttonText: 'Подобрать клуб',
        onPressed: () => context.pop(),
      );
    }
    return ListView.separated(
      itemCount: workouts.length,
      separatorBuilder: (_, __) => const Separator(),
      itemBuilder: (context, index) {
        final workout = workouts[index];
        return WorkoutCard(
          workout: workout,
          showInviteFreindsButton: false,
        );
      },
    );
  }
}
