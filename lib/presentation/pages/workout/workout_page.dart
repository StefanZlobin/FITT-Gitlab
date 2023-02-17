import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/timer_utils.dart';
import 'package:fitt/domain/cubits/workout/workout_cubit.dart';
import 'package:fitt/domain/services/local_notifications/local_notifications_service.dart';
import 'package:fitt/presentation/components/compact_map.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/components/workout/archive_workout_card.dart';
import 'package:fitt/presentation/components/workout/workout_card.dart';
import 'package:fitt/presentation/pages/workout/widget/route_description.dart';
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
    return AppBar(title: Text(AppRoute.workout.routeToTitle(context)!));
  }

  Widget _buildBody(BuildContext context) {
    return BlocListener<WorkoutCubit, WorkoutState>(
      bloc: getIt<WorkoutCubit>(),
      listener: (context, state) {
        state.whenOrNull(
          loaded: (workout) {
            if (workout.status == WorkoutStatusEnum.canceled) {
              context.push(AppRoute.workoutArchiveList.routeToPath);
            } else if (workout.status == WorkoutStatusEnum.started) {
              getIt<LocalNotificationsService>().scheduleLocalNotification(
                id: workout.workoutHashCode - 3,
                title: 'До конца тренировки осталось 10 минут',
                body: 'За это время можно горы свернуть! Или сделать заминку',
                scheduleDuration: workout.endTime.difference(DateTime.now()) -
                    const Duration(hours: 1),
              );
              getIt<LocalNotificationsService>().scheduleLocalNotification(
                id: workout.workoutHashCode - 4,
                title: 'Твоя тренировка — 10/10!',
                body:
                    'Пора собираться, не забудь подойти к администратору и завершить тренировку',
                scheduleDuration: workout.canEndTime.difference(DateTime.now()),
              );
              getIt<LocalNotificationsService>().scheduleLocalNotification(
                id: workout.workoutHashCode - 5,
                title: 'Ты не завершил тренировку!',
                body:
                    'Срочно подойди к администратору и подтверди завершение тренировки',
                scheduleDuration: workout.canEndTime
                    .add(const Duration(minutes: 10))
                    .difference(DateTime.now()),
              );
            } else if (workout.status == WorkoutStatusEnum.requiersFinish) {
              getIt<LocalNotificationsService>()
                  .deleteLocalNotification(id: workout.workoutHashCode - 5);
            }
          },
        );
      },
      child: BlocBuilder<WorkoutCubit, WorkoutState>(
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
                    'Сумма ${workout.price} р',
                    '',
                  ),
                  _buildInformationText(
                      'Клуб', workout.club.address!.shortAddress, ''),
                  const SizedBox(height: 8),
                  CompactMap(
                      clubCoordinates: workout.club.address!.coordinates),
                  const SizedBox(height: 24),
                  RouteDescription(
                      routeDescription: workout.club.address!.shortAddress),
                  const Separator(),
                  const SizedBox(height: 40),
                  if (workout.isMissed && !isArchivePage) ...[
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Отменить тренировку',
                        style: AppTypography.kH14
                            .apply(color: AppColors.kPrimaryBlue),
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
      ),
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
