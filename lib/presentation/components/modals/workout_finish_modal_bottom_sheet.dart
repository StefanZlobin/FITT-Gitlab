import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/blocs/notifications/notifications_bloc.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/modals/widget/header_rounded_container_line.dart';
import 'package:fitt/presentation/components/modals/widget/radar.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/components/submit_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class WorkoutFinishModalBottomSheet extends StatelessWidget with UserMixin {
  const WorkoutFinishModalBottomSheet({
    super.key,
    required this.workout,
  });

  final Workout workout;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: BlocBuilder<NotificationsBloc, NotificationsState>(
        bloc: getIt<NotificationsBloc>(),
        builder: (context, state) {
          return state.when(
            initial: () => _buildFinishLoadingWorkoutPullup(),
            paymentBatchReject: () => const SizedBox(),
            paymentBatchSuccess: () => const SizedBox(),
            paymentWorkoutReject: () => const SizedBox(),
            paymentWorkoutSuccess: () => const SizedBox(),
            workoutStatusPlanned: () => const SizedBox(),
            workoutStatusRS: () => const SizedBox(),
            workoutStatusFF: () => const SizedBox(),
            workoutStatusStarted: () => const SizedBox(),
            workoutStatusMissed: () => const SizedBox(),
            workoutStatusRF: () => _buildFinishLoadingWorkoutPullup(),
            workoutStatusFinished: () => _buildFinishedWorkoutPullup(context),
            error: (error) => const SizedBox(),
          );
        },
      ),
    );
  }

  Column _buildFinishLoadingWorkoutPullup() {
    return Column(
      children: [
        const HeaderRoundedContainerLine(),
        const Radar(),
        const SizedBox(height: 32),
        Text(
          'Завершение тренировки',
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
        Text(
          userSnapshot!.userId.toString(),
          style: AppTypography.kH36.apply(color: AppColors.kBaseBlack),
        ),
      ],
    );
  }

  Widget _buildFinishedWorkoutPullup(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(child: HeaderRoundedContainerLine(bigPadding: false)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '${DateTimeUtils.dateWithPrefix(DateTime.now())}, ${workout.club.label}',
          ),
        ),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Тренировка завершена',
            style: AppTypography.kH24B.apply(color: AppColors.kBaseBlack),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Спасибо что выбрали FITT!\nДо встречи на следующей тренировке',
            style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
          ),
        ),
        const Separator(margin: EdgeInsets.fromLTRB(16, 24, 16, 32)),
        SizedBox(
          width: double.infinity,
          child: Text(
            'Пожалуйста оцените клуб',
            style: AppTypography.kH14.apply(color: AppColors.kBaseBlack),
            textAlign: TextAlign.center,
          ),
        ),
        const SubmitRating(maximumRating: 5),
        const Separator(margin: EdgeInsets.fromLTRB(16, 24, 16, 32)),
        AppElevatedButton(
          onPressed: () => context.pop(),
          buttonColor: AppColors.kBaseBlack,
          textButton: const Text('Готово'),
          marginButton: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextButton(
            onPressed: () {
              context.pop();
              context.pushNamed(
                AppRoute.club.routeToPath,
                params: {
                  'clubUuid': workout.club.uuid!,
                },
              );
            },
            child: Text(
              'Запланировать следущую тернировку',
              style: AppTypography.kH16.apply(color: AppColors.kPrimaryBlue),
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
