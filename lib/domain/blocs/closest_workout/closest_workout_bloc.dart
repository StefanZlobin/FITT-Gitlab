import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/mixins/auth_mixin.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/domain/repositories/workout/workout_repository.dart';
import 'package:fitt/domain/services/push_notifications/push_notifications_service.dart';
import 'package:fitt/domain/use_cases/workout/workout_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'closest_workout_bloc.freezed.dart';
part 'closest_workout_event.dart';
part 'closest_workout_state.dart';

class ClosestWorkoutBloc extends Bloc<ClosestWorkoutEvent, ClosestWorkoutState>
    with AuthMixin, UserMixin {
  ClosestWorkoutBloc() : super(const ClosestWorkoutState.initial()) {
    on<_ClosestWorkoutEventGetClosestWorkout>(
      _onClosestWorkoutEventGetClosestWorkout,
    );

    on<_ClosestWorkoutEventClosestWorkoutDetected>(
      _onClosestWorkoutEventClosestWorkoutDetected,
    );

    auth.listen((AuthenticationStatusEnum auth) {
      if (auth == AuthenticationStatusEnum.authenticated) {
        add(const ClosestWorkoutEvent.getClosestWorkout());
      }
    });

    user.listen((User? user) {
      if (user != null) {
        add(const ClosestWorkoutEvent.getClosestWorkout());
      }
    });

    pushNotificationsService.changeWorkoutStatusNotification
        .listen((String? workoutUuid) {
      if (workoutUuid != null) {
        add(const ClosestWorkoutEvent.getClosestWorkout());
      }
    });

    workoutRepository.closestWorkout.listen((Workout? workout) {
      if (workout != null) {
        add(ClosestWorkoutEvent.closestWorkoutDetected(workout: workout));
      }
    });
  }

  final workoutUseCase = WorkoutUseCase();
  final workoutRepository = getIt<WorkoutRepository>();
  final pushNotificationsService = getIt<PushNotificationsService>();

  void _onClosestWorkoutEventGetClosestWorkout(
    _ClosestWorkoutEventGetClosestWorkout event,
    Emitter<ClosestWorkoutState> emit,
  ) {
    workoutUseCase.getClosestWorkout();
  }

  void _onClosestWorkoutEventClosestWorkoutDetected(
    _ClosestWorkoutEventClosestWorkoutDetected event,
    Emitter<ClosestWorkoutState> emit,
  ) {
    emit(ClosestWorkoutState.loaded(workout: event.workout));
  }
}
