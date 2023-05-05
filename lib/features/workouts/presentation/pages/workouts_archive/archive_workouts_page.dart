import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/features/workouts/domain/blocs/workout_sorting/workout_sorting_bloc.dart';
import 'package:fitt/features/workouts/domain/blocs/workouts_archive/workouts_archive_bloc.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:fitt/features/workouts/presentation/components/archive_workout_card.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/components/animated_dots.dart';
import 'package:fitt/presentation/components/empty_widget.dart';
import 'package:fitt/presentation/components/modals/workout_sorting_modal_bottom_sheet.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ArchiveWorkoutsPage extends StatelessWidget {
  const ArchiveWorkoutsPage({
    Key? key,
    this.fromWorkoutPage = false,
  }) : super(key: key);

  final bool fromWorkoutPage;

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          getIt<WorkoutsArchiveBloc>().add(
            const WorkoutsArchiveEvent.getWorkouts(),
          );
        }
      }
    });

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => fromWorkoutPage
              ? context.push(AppRoute.map.routeToPath)
              : context.pop(),
          icon: const Icon(AppIcons.arr_big_left),
        ),
        title: Text(L.of(context).workoutArchivePageTitle),
      ),
      body: BlocBuilder<WorkoutsArchiveBloc, WorkoutsArchiveState>(
        bloc: getIt<WorkoutsArchiveBloc>(),
        buildWhen: (previous, current) => true,
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: (archiveWorkouts, isFirstFetch) {
              if (isFirstFetch) {
                return const Center(child: CircularProgressIndicator());
              }

              return _buildWorkoutsCardWidget(
                context,
                archiveWorkouts,
                scrollController,
                true,
              );
            },
            loaded: (workouts) => _buildWorkoutsCardWidget(
              context,
              workouts,
              scrollController,
              false,
            ),
            error: (error) => const SizedBox(),
          );
        },
      ),
    );
  }

  Widget _buildWorkoutsCardWidget(
    BuildContext context,
    List<Workout> workouts,
    ScrollController scrollController,
    bool isLoading,
  ) {
    if (workouts.isEmpty) {
      return EmptyWidget(
        hintText:
            'Нет актуальных тренировок. Выберите клуб и запишитесь на тренировку',
        buttonText: 'Подобрать клуб',
        onPressed: () => context.pop(),
      );
    }
    return Column(
      children: [
        const SizedBox(height: 34),
        _buildSortingWidget(context),
        const SizedBox(height: 24),
        SizedBox(
          height: MediaQuery.of(context).size.height - 185,
          child: ListView.separated(
            padding: const EdgeInsets.only(bottom: 32),
            controller: scrollController,
            itemCount: workouts.length + (isLoading ? 1 : 0),
            separatorBuilder: (_, index) {
              return const Separator(color: AppColors.kOxford10);
            },
            itemBuilder: (context, index) {
              if (index < workouts.length) {
                final workout = workouts[index];
                return ArchiveWorkoutCard(
                  workout: workout,
                  margin: index == 0
                      ? const EdgeInsets.fromLTRB(16, 0, 16, 13)
                      : const EdgeInsets.fromLTRB(16, 24, 16, 13),
                );
              } else {
                scrollController.animateTo(
                  scrollController.position.maxScrollExtent + 144,
                  duration: const Duration(microseconds: 1),
                  curve: Curves.easeIn,
                );

                return SizedBox(
                  height: 144,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AnimatedDots(),
                      const SizedBox(height: 16),
                      Text(
                        'Загружаем тренировки',
                        style: AppTypography.kBody14
                            .apply(color: AppColors.kOxford60),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSortingWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          useRootNavigator: true,
          backgroundColor: AppColors.kBaseWhite,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          context: context,
          builder: (context) {
            return const WorkoutSortingModalBottomSheet();
          },
        );
      },
      child: BlocBuilder<WorkoutSortingBloc, WorkoutSortingState>(
        bloc: getIt<WorkoutSortingBloc>(),
        buildWhen: (previous, current) => true,
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loaded: (workoutSortingItems) {
              final activeWorkoutSortingItem = workoutSortingItems.entries
                  .where((e) => e.value)
                  .map((e) => e.key)
                  .toList()
                  .first;

              return Row(
                children: [
                  const SizedBox(width: 16),
                  Text(
                    activeWorkoutSortingItem
                        .sortingToString(activeWorkoutSortingItem),
                    style:
                        AppTypography.kH16.apply(color: AppColors.kPrimaryBlue),
                  ),
                  const SizedBox(width: 8.0),
                  const Icon(
                    AppIcons.arr_down,
                    size: 12,
                    color: AppColors.kPrimaryBlue,
                  ),
                ],
              );
            },
            error: (_) => const SizedBox(),
          );
        },
      ),
    );
  }
}
