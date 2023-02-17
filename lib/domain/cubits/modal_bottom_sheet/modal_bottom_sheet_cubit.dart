import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'modal_bottom_sheet_cubit.freezed.dart';
part 'modal_bottom_sheet_state.dart';

class ModalBottomSheetCubit extends Cubit<ModalBottomSheetState> {
  ModalBottomSheetCubit() : super(const ModalBottomSheetState.initial());

  void setLoadingStateModalBottomSheet() {
    emit(const ModalBottomSheetState.initial());
    emit(const ModalBottomSheetState.loading());
  }

  void setLoadedStateModalBottomSheet() {
    emit(const ModalBottomSheetState.loaded());
  }
}
