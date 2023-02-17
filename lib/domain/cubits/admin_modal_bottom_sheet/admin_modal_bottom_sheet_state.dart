part of 'admin_modal_bottom_sheet_cubit.dart';

@freezed
class AdminModalBottomSheetState with _$AdminModalBottomSheetState {
  const factory AdminModalBottomSheetState.initial() = _Initial;
  const factory AdminModalBottomSheetState.inputLockerNumber(
      {String? lockerNumber}) = _AdminModalBottomSheetStateInputLockerNumber;
  const factory AdminModalBottomSheetState.forceFinish({
    AdminWorkoutFinishReasonEnum? adminWorkoutFinishReasonEnum,
    String? comment,
  }) = _AdminModalBottomSheetStateForceFinish;
}
