import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/admin_workout_finish_reason_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_modal_bottom_sheet_cubit.freezed.dart';
part 'admin_modal_bottom_sheet_state.dart';

class AdminModalBottomSheetCubit extends Cubit<AdminModalBottomSheetState> {
  AdminModalBottomSheetCubit()
      : super(const AdminModalBottomSheetState.initial());

  void setInitial() {
    emit(const AdminModalBottomSheetState.initial());
  }

  void setLockerNumber({String? lockerNumber}) {
    emit(_AdminModalBottomSheetStateInputLockerNumber(
        lockerNumber: lockerNumber));
  }

  void forceFinish({
    AdminWorkoutFinishReasonEnum? adminWorkoutFinishReasonEnum,
    String? comment,
  }) {
    emit(_AdminModalBottomSheetStateForceFinish(
      adminWorkoutFinishReasonEnum: adminWorkoutFinishReasonEnum,
      comment: comment,
    ));
  }
}
