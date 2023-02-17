import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_workout_action_button_cubit.freezed.dart';
part 'admin_workout_action_button_state.dart';

class AdminWorkoutActionButtonCubit
    extends Cubit<AdminWorkoutActionButtonState> {
  AdminWorkoutActionButtonCubit()
      : super(const AdminWorkoutActionButtonState.initial());

  void setStartSlider() {
    emit(const _AdminWorkoutActionButtonStateStart());
  }

  void setFinishSlider() {
    emit(const _AdminWorkoutActionButtonStateFinish());
  }

  void setNoneSlider() {
    emit(const _AdminWorkoutActionButtonStateInitial());
  }
}
