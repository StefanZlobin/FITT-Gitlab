import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/cubits/workout/workout_cubit.dart';
import 'package:fitt/domain/cubits/workouts/workouts_cubit.dart';
import 'package:fitt/domain/services/local_notifications/local_notifications_service.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/compact_map.dart';
import 'package:fitt/presentation/components/workout/workout_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WorkoutCubit, WorkoutState>(
        bloc: getIt<WorkoutCubit>(),
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            error: (error) => const SizedBox(),
            loaded: (workout) {
              return ListView(
                padding: const EdgeInsets.fromLTRB(0, 32, 0, 32),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RichText(
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: 'Оплата прошла успешно\n',
                        style: AppTypography.kH24B.apply(color: AppColors.kOxford),
                        children: [
                          TextSpan(
                            text: 'e\n',
                            style: AppTypography.kBody10.apply(color: AppColors.kOxford60.withOpacity(0)),
                          ),
                          TextSpan(
                            text:
                                '${DateTimeUtils.dateFormatWithoutYear.format(workout.startTime)}, ${workout.club.label}\n',
                            style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
                          ),
                          TextSpan(
                            text: workout.club.address!.shortAddress,
                            style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
                          ),
                        ],
                      ),
                    ),
                  ),
                  WorkoutCard(
                    workout: workout,
                    margin: const EdgeInsets.only(top: 16, bottom: 24, left: 16, right: 16),
                    showHeader: false,
                    isPage: true,
                  ),
                  CompactMap(
                    clubCoordinates: workout.club.address!.coordinates,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                    child: Text(
                      'Администратор клуба может попросить удостоверение личности. Не забудьте взять с собой паспорт.',
                      style: AppTypography.kBody14.apply(color: AppColors.kOxford),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  AppElevatedButton(
                    marginButton: const EdgeInsets.symmetric(horizontal: 16),
                    textButton: const Text('Отлично'),
                    onPressedAsync: () async {
                      if (!(workout.startTime.difference(DateTime.now()) - const Duration(hours: 1)).isNegative) {
                        await getIt<LocalNotificationsService>().scheduleLocalNotification(
                          id: workout.workoutHashCode,
                          title: 'До тренировки остался 1 час',
                          body: 'Тренажеры уже готовы к твоему приходу',
                          scheduleDuration: workout.startTime.difference(DateTime.now()) - const Duration(hours: 1),
                        );
                      }
                      if (!workout.canStartTime.difference(DateTime.now()).isNegative) {
                        await getIt<LocalNotificationsService>().scheduleLocalNotification(
                          id: workout.workoutHashCode - 2,
                          title: 'Регистрация на тренировку открыта',
                          body: 'Подтверди начало тренировки у администратора',
                          scheduleDuration: workout.canStartTime.difference(DateTime.now()),
                        );
                      }
                      await getIt<WorkoutsCubit>()
                          .getWorkouts()
                          .then((_) => context.pushReplacement(AppRoute.map.routeToPath));
                    },
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
