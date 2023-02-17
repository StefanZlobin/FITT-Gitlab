import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/domain/cubits/workouts/workouts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Scaffold.of(context).openDrawer(),
      child: Container(
        width: 48,
        height: 48,
        margin: const EdgeInsets.only(top: 62, left: 16),
        decoration: ShapeDecoration(
          shape: SuperellipseShape(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
          color: AppColors.kBaseWhite,
        ),
        child: Center(
          child: BlocBuilder<WorkoutsCubit, WorkoutsState>(
            bloc: getIt<WorkoutsCubit>(),
            builder: (context, state) {
              return state.when(
                initial: () => const Icon(
                  AppIcons.menu_burger,
                  color: AppColors.kOxford60,
                  size: 18,
                ),
                error: (error) => const Icon(
                  AppIcons.menu_burger,
                  color: AppColors.kOxford60,
                  size: 18,
                ),
                loading: () => const Icon(
                  AppIcons.menu_burger,
                  color: AppColors.kOxford60,
                  size: 18,
                ),
                loaded: (workouts, _) {
                  final countWorkout = workouts.length;
                  if (countWorkout == 0) {
                    return const Icon(
                      AppIcons.menu_burger,
                      color: AppColors.kOxford60,
                      size: 18,
                    );
                  }
                  return Badge(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    backgroundColor: AppColors.kPrimaryBlue,
                    label: Text(
                      '$countWorkout',
                      style: AppTypography.kBody10
                          .apply(color: AppColors.kBaseWhite),
                    ),
                    child: const Icon(
                      AppIcons.menu_burger,
                      color: AppColors.kOxford60,
                      size: 18,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
