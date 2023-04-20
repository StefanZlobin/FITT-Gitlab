import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/features/workouts/domain/blocs/workouts/workouts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Scaffold.of(context).openDrawer(),
      child: Stack(
        children: [
          Container(
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
            child: const Icon(
              AppIcons.menu_burger,
              color: AppColors.kOxford60,
              size: 18,
            ),
          ),
          BlocBuilder<WorkoutsBloc, WorkoutsState>(
            bloc: getIt<WorkoutsBloc>(),
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                error: (error) => const SizedBox(),
                loaded: (workouts) {
                  final countWorkout = workouts.length;
                  if (countWorkout == 0) {
                    return const SizedBox();
                  }
                  return Positioned(
                    left: 43,
                    top: 67,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: AppColors.kPrimaryBlue,
                      ),
                      child: Center(
                        child: Text(
                          '$countWorkout',
                          style: AppTypography.kBody10
                              .apply(color: AppColors.kBaseWhite),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
