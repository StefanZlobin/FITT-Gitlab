import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/age_utils.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/timer_utils.dart';
import 'package:fitt/domain/blocs/admin_workout_timer/admin_workout_timer_bloc.dart';
import 'package:fitt/domain/cubits/admin_workout_action_button/admin_workout_action_button_cubit.dart';
import 'package:fitt/features/workouts/domain/entities/admin_workout/admin_workout.dart';
import 'package:fitt/features/workouts/presentation/components/buttons/admin_workout_action_button.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminWorkoutCard extends StatelessWidget {
  const AdminWorkoutCard({
    super.key,
    required this.adminWorkout,
    this.margin = const EdgeInsets.fromLTRB(16, 24, 16, 24),
    this.showHeader = true,
  });

  final AdminWorkout adminWorkout;
  final EdgeInsets margin;
  final bool showHeader;

  @override
  Widget build(BuildContext context) {
    getIt<AdminWorkoutTimerBloc>().add(
      AdminWorkoutTimerEvent.timerStarted(
        workout: adminWorkout,
        duration: adminWorkout.status == WorkoutStatusEnum.started
            ? adminWorkout.canEndTime.difference(DateTime.now())
            : adminWorkout.planStartTime.difference(DateTime.now()),
      ),
    );

    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCardHeader(context),
          Divider(
            color: AppColors.kPrimaryBlue,
            endIndent: MediaQuery.of(context).size.width - 70,
            thickness: 2,
            height: 32,
          ),
          if (showHeader) _buildWorkoutTimeInformationWidget(),
          AdminWorkoutActionButton(adminWorkout: adminWorkout),
          const Separator(
            margin: EdgeInsets.symmetric(vertical: 32),
          ),
          _buildInformationText(
            'Дата',
            DateTimeUtils.dateWithPrefix(adminWorkout.planStartTime),
            '',
          ),
          _buildInformationText(
            'Начало тренировки',
            DateTimeUtils.timeFormat.format(adminWorkout.planStartTime),
            adminWorkout.factStartTime != null
                ? '(Вход в клуб ${DateTimeUtils.timeFormat.format(adminWorkout.factStartTime!)})'
                : '',
          ),
          _buildInformationText(
            'Окончание тренировки',
            DateTimeUtils.timeFormat.format(adminWorkout.planEndTime),
            adminWorkout.factEndTime != null
                ? '(Выход из клуба ${DateTimeUtils.timeFormat.format(adminWorkout.factEndTime!)})'
                : '',
          ),
          _buildInformationText(
            'Длительность тренировки',
            '${adminWorkout.planEndTime.difference(adminWorkout.planStartTime).inHours} час(а)',
            adminWorkout.factEndTime != null
                ? '(Расчетное время ${TimerUtils().hoursAndMinutes(adminWorkout.factEndTime!.difference(adminWorkout.factStartTime!))})'
                : '',
          ),
        ],
      ),
    );
  }

  Widget _buildInformationText(
    String title,
    String subtitle,
    String? timeDetailed,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: RichText(
        text: TextSpan(
          text: '$title\n',
          style: AppTypography.kH14.apply(color: AppColors.kOxford60),
          children: [
            TextSpan(
              text: '$subtitle $timeDetailed',
              style: AppTypography.kBody14.apply(color: AppColors.kOxford),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWorkoutTimeInformationWidget() {
    return Row(
      children: [
        SizedBox(
          width: 144,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                adminWorkout.status == WorkoutStatusEnum.planned
                    ? 'Начало через'
                    : 'Окончание через',
                style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
              ),
              _buildWorkoutTimer(),
            ],
          ),
        ),
        const Separator(
          color: AppColors.kPrimaryBlue,
          height: 72,
          width: 2,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              adminWorkout.status == WorkoutStatusEnum.planned
                  ? 'Начало тренировки'
                  : 'Окончание',
              style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
            ),
            Text(
              DateTimeUtils.timeFormat.format(
                adminWorkout.status == WorkoutStatusEnum.planned
                    ? adminWorkout.planStartTime
                    : adminWorkout.planEndTime,
              ),
              style: AppTypography.kH14.apply(color: AppColors.kOxford),
            ),
            const SizedBox(height: 4),
            Text(
              adminWorkout.status == WorkoutStatusEnum.planned
                  ? 'Окончание'
                  : 'Выход из клуба до',
              style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
            ),
            Text(
              DateTimeUtils.timeFormat.format(
                adminWorkout.status == WorkoutStatusEnum.planned
                    ? adminWorkout.planEndTime
                    : adminWorkout.planEndTime.add(const Duration(minutes: 10)),
              ),
              style: AppTypography.kH14.apply(color: AppColors.kOxford),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildWorkoutTimer() {
    return BlocBuilder<AdminWorkoutTimerBloc, AdminWorkoutTimerState>(
      bloc: getIt<AdminWorkoutTimerBloc>(),
      builder: (context, state) {
        if (adminWorkout.status != WorkoutStatusEnum.planned &&
            adminWorkout.canEndTime.isBefore(DateTime.now())) {
          getIt<AdminWorkoutActionButtonCubit>().setFinishSlider();
        }
        return state.when(
          timerInitial: (duration) => Text(duration.toString()),
          timerRunInProgress: (duration) => Text(
            TimerUtils.createTimerString(duration),
            style: AppTypography.kNum36.apply(color: AppColors.kOxford),
          ),
          timerRunInDanger: (duration) => Text(
            TimerUtils.createTimerString(duration),
            style: AppTypography.kNum36.apply(color: AppColors.kPrimaryBlue),
          ),
          timerRunComplete: (duration) => Text(
            TimerUtils.createTimerString(duration),
            style: AppTypography.kNum36.apply(color: AppColors.kPrimaryBlue),
          ),
        );
      },
    );
  }

  Widget _buildCardHeader(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
        children: [
          TextSpan(
            text: 'ID ${adminWorkout.user.userId}  ',
          ),
          TextSpan(
            text:
                '${adminWorkout.user.gender!.genderEnumToLabeling(adminWorkout.user.gender!)} - ${ageUtils(adminWorkout.user.age)}',
          ),
          TextSpan(
            text: '\n${adminWorkout.user.fullname}',
            style: AppTypography.kH24B.apply(color: AppColors.kOxford),
          ),
        ],
      ),
    );
  }
}
