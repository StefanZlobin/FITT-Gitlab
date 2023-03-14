import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_slider_button_type_cubit.freezed.dart';
part 'workout_slider_button_type_state.dart';

class WorkoutSliderButtonTypeCubit extends Cubit<WorkoutSliderButtonTypeState> {
  WorkoutSliderButtonTypeCubit() : super(const WorkoutSliderButtonTypeState.initial());

  void setStartTypeSliderButton({required bool showBeforeCanStart}) {
    emit(_WorkoutSliderButtonTypeStateStart(
      showBeforeCanStart: showBeforeCanStart,
    ));
  }

  void setFinishTypeSliderButton() {
    emit(const _WorkoutSliderButtonTypeStateFinish());
  }

  void setConfirmationTypeSliderButton() {
    emit(const _WorkoutSliderButtonTypeStateConfirmation());
  }

  void setNoneTypeSliderButton() {
    emit(const _WorkoutSliderButtonTypeStateInitial());
  }
}
