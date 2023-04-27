import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/admin_workout_finish_reason_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:fitt/domain/use_cases/admin/admin_use_case.dart';
import 'package:fitt/features/workouts/domain/entities/admin_workout/admin_workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_workout_cubit.freezed.dart';
part 'admin_workout_state.dart';

class AdminWorkoutCubit extends Cubit<AdminWorkoutState> {
  AdminWorkoutCubit() : super(const AdminWorkoutState.initial());

  final adminUseCase = AdminUseCase();

  Future<void> getAdminWorkout({required String adminWorkoutUuid}) async {
    try {
      final adminWorkout = await adminUseCase.getAdminWorkout(
        adminWorkoutUuid: adminWorkoutUuid,
      );
      emit(_AdminWorkoutStateLoaded(adminWorkout: adminWorkout));
    } on Exception catch (e) {
      emit(_AdminWorkoutStateError(error: e.toString()));
    }
  }

  Future<void> confirmStartUserWorkout({
    required String adminWorkoutUuid,
  }) async {
    try {
      final adminWorkout = await adminUseCase.adminWorkoutConfirmStart(
        adminWorkoutUuid: adminWorkoutUuid,
      );
      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName: 'Администратор подтвердил начало тренировки',
      );
      emit(_AdminWorkoutStateLoaded(adminWorkout: adminWorkout));
    } on Exception catch (e) {
      emit(_AdminWorkoutStateError(error: e.toString()));
    }
  }

  Future<void> confirmFinishUserWorkout({
    required String adminWorkoutUuid,
  }) async {
    try {
      final adminWorkout = await adminUseCase.adminWorkoutConfirmFinish(
        adminWorkoutUuid: adminWorkoutUuid,
      );
      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName: 'Администратор подтвердил завершение тренировки',
      );
      emit(_AdminWorkoutStateLoaded(adminWorkout: adminWorkout));
    } on Exception catch (e) {
      emit(_AdminWorkoutStateError(error: e.toString()));
    }
  }

  Future<void> forceFinishUserWorkout({
    required String adminWorkoutUuid,
    required AdminWorkoutFinishReasonEnum adminWorkoutFinishReasonEnum,
    String? comment = '',
  }) async {
    try {
      final adminWorkout = await adminUseCase.adminForceFinish(
        adminWorkoutUuid: adminWorkoutUuid,
        adminWorkoutFinishReasonEnum: adminWorkoutFinishReasonEnum,
        comment: comment,
      );
      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName: 'Администратор вынуждено завершил тренировку',
      );
      emit(_AdminWorkoutStateLoaded(adminWorkout: adminWorkout));
    } on Exception catch (e) {
      emit(_AdminWorkoutStateError(error: e.toString()));
    }
  }

  Future<void> setLockerNumber({
    required String adminWorkoutUuid,
    required String lockerNumber,
  }) async {
    try {
      await adminUseCase.adminSetLockerNumber(
        uuid: adminWorkoutUuid,
        lockerNumber: lockerNumber,
      );
    } on Exception catch (e) {
      emit(_AdminWorkoutStateError(error: e.toString()));
    }
  }
}
