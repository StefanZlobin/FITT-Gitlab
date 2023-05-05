import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/domain/cubits/admin_workout/admin_workout_cubit.dart';
import 'package:fitt/features/workouts/presentation/components/admin_workout_card.dart';
import 'package:fitt/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AdminWorkoutPage extends StatelessWidget {
  const AdminWorkoutPage({
    super.key,
    required this.showHeader,
    required this.canConfirmation,
  });

  final bool showHeader;
  final bool canConfirmation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L.of(context).workoutPageTitle),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(AppIcons.arr_big_left),
        ),
      ),
      body: BlocBuilder<AdminWorkoutCubit, AdminWorkoutState>(
        bloc: getIt<AdminWorkoutCubit>(),
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loaded: (adminWorkout) {
              return Column(
                children: [
                  AdminWorkoutCard(
                    adminWorkout: adminWorkout,
                    showHeader: showHeader,
                    canConfirmation: canConfirmation,
                  ),
                ],
              );
            },
            error: (error) => const SizedBox(),
          );
        },
      ),
    );
  }
}
