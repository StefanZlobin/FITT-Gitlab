import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/timer_utils.dart';
import 'package:fitt/domain/cubits/workout/workout_cubit.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/components/workout/archive_workout_card.dart';
import 'package:fitt/presentation/components/workout/workout_card.dart';
import 'package:fitt/presentation/dialogs/cancel_workout_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({
    super.key,
    required this.isArchivePage,
  });

  final bool isArchivePage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(L.of(context).workoutPageTitle),
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: const Icon(AppIcons.arr_big_left),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<WorkoutCubit, WorkoutState>(
      bloc: getIt<WorkoutCubit>(),
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loaded: (workout) {
            return ListView(
              children: [
                if (isArchivePage)
                  ArchiveWorkoutCard(
                    workout: workout,
                    isPage: true,
                  )
                else
                  WorkoutCard(
                    workout: workout,
                    isPage: true,
                  ),
                const SizedBox(height: 32),
                const Separator(),
                const SizedBox(height: 32),
                _buildInformationText(
                  'Начало тренировки',
                  DateTimeUtils.timeFormat.format(workout.startTime),
                  workout.factStartTime != null
                      ? '(Вход в клуб ${DateTimeUtils.timeFormat.format(workout.factStartTime!)})'
                      : '',
                ),
                _buildInformationText(
                  'Окончание тренировки',
                  DateTimeUtils.timeFormat.format(workout.endTime),
                  workout.factEndTime != null
                      ? '(Выход из клуба ${DateTimeUtils.timeFormat.format(workout.factEndTime!)})'
                      : '',
                ),
                _buildInformationText(
                  'Длительность тренировки',
                  '${workout.endTime.difference(workout.startTime).inHours} час(а)',
                  workout.factEndTime != null
                      ? '(Расчетное время ${TimerUtils().hoursAndMinutes(workout.factEndTime!.difference(workout.factStartTime!))})'
                      : '',
                ),
                _buildInformationText(
                  'Иноформация о платеже',
                  'Сумма ${workout.price} \u20BD',
                  '',
                ),
                _buildInformationText(
                  'Клуб',
                  workout.club.address!.shortAddress,
                  '',
                ),
                const SizedBox(height: 40),
                if (workout.isMissed && !isArchivePage) ...[
                  TextButton(
                    onPressed: () {
                      showDialog<void>(
                        useRootNavigator: false,
                        context: context,
                        builder: (context) {
                          return CancelWorkoutDialog(workout: workout);
                        },
                      );
                    },
                    child: Text(
                      'Отменить тренировку',
                      style: AppTypography.kH14.apply(color: AppColors.kPrimaryBlue),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ],
            );
          },
          error: (error) => const SizedBox(),
        );
      },
    );
  }

  Widget _buildInformationText(
    String title,
    String subtitle,
    String? timeDetailed,
  ) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
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
}
