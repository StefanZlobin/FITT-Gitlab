import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/enum/workout_phase_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/mixins/auth_mixin.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/services/push_notifications/push_notifications_service.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:fitt/features/workouts/domain/repositories/workout/workout_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workouts_bloc.freezed.dart';
part 'workouts_event.dart';
part 'workouts_state.dart';

class WorkoutsBloc extends Bloc<WorkoutsEvent, WorkoutsState> with AuthMixin {
  WorkoutsBloc() : super(const WorkoutsState.initial()) {
    on<_WorkoutsEventGetWorkouts>(_onWorkoutsEventGetWorkouts);
    on<_WorkoutsEventSetWorkouts>(_onWorkoutsEventSetWorkouts);

    auth.listen((AuthenticationStatusEnum authenticationStatus) {
      if (authenticationStatus == AuthenticationStatusEnum.authenticated) {
        add(const WorkoutsEvent.getWorkouts());
      }
    });

    getIt<WorkoutRepository>().workouts.listen((List<Workout> workouts) {
      add(WorkoutsEvent.setWorkouts(workouts: workouts));
    });

    getIt<PushNotificationsService>()
        .changeWorkoutStatusNotification
        .listen((Map<String, String>? changeWorkoutNotification) {
      if (changeWorkoutNotification != null) {
        add(const WorkoutsEvent.getWorkouts());
      }
    });
  }

  Future<void> _onWorkoutsEventGetWorkouts(
    _WorkoutsEventGetWorkouts event,
    Emitter<WorkoutsState> emit,
  ) async {
    try {
      await getIt<WorkoutRepository>().getWorkouts(
        workoutPhase: event.workoutPhase,
        workoutSorting: event.workoutSorting,
      );
    } on NetworkExceptions catch (e) {
      emit(WorkoutsState.error(error: NetworkExceptions.getErrorMessage(e)));
    }
  }

  void _onWorkoutsEventSetWorkouts(
    _WorkoutsEventSetWorkouts event,
    Emitter<WorkoutsState> emit,
  ) {
    emit(WorkoutsState.loaded(
      workouts: EqualUnmodifiableListView(event.workouts),
    ));
  }
}
