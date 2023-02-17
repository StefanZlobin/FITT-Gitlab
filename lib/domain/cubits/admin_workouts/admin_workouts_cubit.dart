import 'package:bloc/bloc.dart';
import 'package:fitt/data/models/request/admin/admin_workouts_filters_body.dart';
import 'package:fitt/domain/entities/admin_workout/admin_workout.dart';
import 'package:fitt/domain/use_cases/admin/admin_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_workouts_cubit.freezed.dart';
part 'admin_workouts_state.dart';

class AdminWorkoutsCubit extends Cubit<AdminWorkoutsState> {
  AdminWorkoutsCubit() : super(const AdminWorkoutsState.initial());

  final adminUseCase = AdminUseCase();

  Future<void> getAdminWorkouts({
    int? limit,
    int? offset,
    required AdminWorkoutsFiltersRequestBody filters,
  }) async {
    try {
      final adminWorkouts =
          await adminUseCase.getAdminWorkouts(-1, 0, filters: filters);
      emit(_AdminWorkoutsStateLoaded(adminWorkouts: adminWorkouts));
    } on Exception catch (e) {
      emit(_AdminWorkoutsStateError(error: e.toString()));
    }
  }
}
