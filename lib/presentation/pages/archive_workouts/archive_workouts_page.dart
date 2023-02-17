import 'dart:async';

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/domain/cubits/archive_workouts/archive_workouts_cubit.dart';
import 'package:fitt/domain/cubits/sorting/sorting_cubit.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/generated/l10n.dart';
import 'package:fitt/presentation/components/empty_widget.dart';
import 'package:fitt/presentation/components/modals/club_sorting_modal_bottom_sheet.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/components/workout/archive_workout_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ArchiveWorkoutsPage extends StatelessWidget {
  const ArchiveWorkoutsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          getIt<ArchiveWorkoutsCubit>().getArchiveWorkouts();
        }
      }
    });

    return BlocListener<SortingCubit, SortingState>(
      bloc: getIt<SortingCubit>(),
      listener: (context, state) {
        state.whenOrNull(
          workoutSorting: (workoutSortingEnum) => getIt<ArchiveWorkoutsCubit>()
              .getArchiveWorkouts(workoutSorting: workoutSortingEnum),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          title: Text(S.of(context).workoutArchivePageTitle),
        ),
        body: Column(
          children: [
            const SizedBox(height: 34),
            _buildSortingWidget(context),
            const SizedBox(height: 24),
            BlocBuilder<ArchiveWorkoutsCubit, ArchiveWorkoutsState>(
              bloc: getIt<ArchiveWorkoutsCubit>(),
              buildWhen: (previous, current) {
                return current != previous;
              },
              builder: (context, state) {
                return state.when(
                  initial: () =>
                      const Center(child: CircularProgressIndicator()),
                  loading: (archiveWorkouts, isFirstFetch) {
                    if (isFirstFetch) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return _buildWorkoutsCardWidget(
                        context, archiveWorkouts, scrollController, true);
                  },
                  loaded: (workouts) => _buildWorkoutsCardWidget(
                      context, workouts, scrollController, false),
                  error: (error) => const SizedBox(),
                );
              },
            ),
          ],
        ),
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
    return SizedBox(
      height: MediaQuery.of(context).size.height - 175,
      child: ListView.separated(
        controller: scrollController,
        itemCount: workouts.length + (isLoading ? 1 : 0),
        separatorBuilder: (_, __) => const Separator(
          color: AppColors.kOxford10,
        ),
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
            Timer(const Duration(milliseconds: 300), () {
              scrollController
                  .jumpTo(scrollController.position.maxScrollExtent);
            });
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget _buildSortingWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          backgroundColor: AppColors.kBaseWhite,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          context: context,
          builder: (context) {
            return const ClubSortingModalBottomSheet();
          },
        );
      },
      child: BlocBuilder<SortingCubit, SortingState>(
        bloc: getIt<SortingCubit>(),
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            clubSorting: (_) => const SizedBox(),
            workoutSorting: (workoutSortingEnum) {
              return Row(
                children: [
                  const SizedBox(width: 16),
                  Text(
                    workoutSortingEnum.sortingToString(workoutSortingEnum),
                    style: const TextStyle(color: AppColors.kPrimaryBlue),
                  ),
                  const SizedBox(width: 8.0),
                  const Icon(
                    AppIcons.arr_down,
                    size: 10,
                    color: AppColors.kPrimaryBlue,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
