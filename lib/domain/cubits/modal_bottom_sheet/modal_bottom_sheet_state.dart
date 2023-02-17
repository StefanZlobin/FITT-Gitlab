part of 'modal_bottom_sheet_cubit.dart';

@freezed
class ModalBottomSheetState with _$ModalBottomSheetState {
  const factory ModalBottomSheetState.initial() = _ModalBottomSheetStateInitial;
  const factory ModalBottomSheetState.loading() = _ModalBottomSheetStateLoading;
  const factory ModalBottomSheetState.loaded() = _ModalBottomSheetStateLoaded;
}
