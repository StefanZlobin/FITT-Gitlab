import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/domain/blocs/notifications/notifications_bloc.dart';
import 'package:fitt/domain/blocs/user/user_bloc.dart';
import 'package:fitt/presentation/components/modals/widget/header_rounded_container_line.dart';
import 'package:fitt/presentation/components/modals/widget/radar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkoutStartModalBottomSheet extends StatelessWidget {
  const WorkoutStartModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<NotificationsBloc, NotificationsState>(
      bloc: getIt<NotificationsBloc>(),
      listener: (context, state) {
        state.whenOrNull(
          error: (error) => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Не получилось начать тренировку'),
            ),
          ),
        );
      },
      child: SizedBox(
        height: 500,
        child: BlocBuilder<NotificationsBloc, NotificationsState>(
          bloc: getIt<NotificationsBloc>(),
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              paymentBatchReject: () => const SizedBox(),
              paymentBatchSuccess: () => const SizedBox(),
              paymentWorkoutReject: () => const SizedBox(),
              paymentWorkoutSuccess: () => const SizedBox(),
              workoutStatusPlanned: () => const SizedBox(),
              workoutStatusFF: () => const SizedBox(),
              workoutStatusRS: () => _buildStartLoadingPullup(),
              workoutStatusStarted: () => _buildStartedWorkoutPullup(),
              workoutStatusRF: () => const SizedBox(),
              workoutStatusFinished: () => const SizedBox(),
              error: (error) => const SizedBox(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildStartedWorkoutPullup() {
    return Column(
      children: [
        const HeaderRoundedContainerLine(),
        Container(
          width: 114,
          height: 114,
          decoration: BoxDecoration(
            color: const Color(0xFF63B412).withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            AppIcons.tick,
            color: AppColors.kBaseWhite,
            size: 28,
          ),
        ),
        const SizedBox(height: 32.0),
        Text(
          'Тренировка началась',
          style: AppTypography.kH24B.apply(color: AppColors.kBaseBlack),
        ),
        const SizedBox(height: 24.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 46.0),
          child: Text(
            'Мы оповестим вас об окончании тренировки за 15 минут. Удачи!',
            style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildStartLoadingPullup() {
    return Column(
      children: [
        const HeaderRoundedContainerLine(),
        const Radar(),
        const SizedBox(height: 32),
        Text(
          'Начало тренировки',
          style: AppTypography.kH24B.apply(color: AppColors.kBaseBlack),
        ),
        const SizedBox(height: 24),
        Text(
          'Подойдите к администратору клуба, чтобы подтвердить начало тренировки',
          style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        Text(
          'Код бронирования',
          style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        BlocBuilder<UserBloc, UserState>(
          bloc: getIt<UserBloc>(),
          builder: (context, state) {
            return state.when(
              loading: () => const SizedBox(),
              loadedWithNoUser: (_) => const SizedBox(),
              error: (error) => const SizedBox(),
              loaded: (user) {
                return Text(
                  user!.userId.toString(),
                  style: AppTypography.kH36.apply(color: AppColors.kBaseBlack),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
