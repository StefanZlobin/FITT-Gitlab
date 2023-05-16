import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/features/workouts/domain/blocs/closest_workout/closest_workout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class WalletWidget extends StatelessWidget {
  const WalletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClosestWorkoutBloc, ClosestWorkoutState>(
      bloc: getIt<ClosestWorkoutBloc>(),
      builder: (context, state) {
        return state.when(
          initial: () => _buildWallet(context),
          loaded: (workout) {
            double extraMargin = 0;
            if (workout != null) {
              if (workout.status == WorkoutStatusEnum.planned &&
                  workout.canStartTime
                      .difference(DateTime(
                        DateTime.now().year,
                        DateTime.now().month,
                        DateTime.now().day,
                        DateTime.now().hour,
                        DateTime.now().minute,
                        DateTime.now().second,
                      ))
                      .isNegative) {
                extraMargin = 64;
              } else if (workout.status == WorkoutStatusEnum.started) {
                extraMargin = 64;
              } else if (workout.status == WorkoutStatusEnum.requiresStart) {
                extraMargin = 64;
              } else if (workout.status == WorkoutStatusEnum.requiersFinish) {
                extraMargin = 64;
              }
              return _buildWallet(context, margin: 48 + extraMargin);
            } else {
              return _buildWallet(context);
            }
          },
          error: (error) => _buildWallet(context),
        );
      },
    );
  }

  Container _buildWallet(BuildContext context, {double margin = 0}) {
    return Container(
      margin: EdgeInsets.only(
        top: 126 + margin,
        left: MediaQuery.of(context).size.width - 16 - 100,
      ),
      height: 40,
      width: 100,
      decoration: ShapeDecoration(
        shape: SuperellipseShape(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
        gradient: const LinearGradient(
          colors: [
            AppColors.kThirdColor,
            AppColors.kSecondColor,
            AppColors.kFirstColor,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Row(
          children: [
            const Icon(AppIcons.coolair, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              '27 690 р ',
              style: AppTypography.kBody14.apply(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
