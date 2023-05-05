import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_photo_slider_cubit.freezed.dart';
part 'club_photo_slider_state.dart';

class ClubPhotoSliderCubit extends Cubit<ClubPhotoSliderState> {
  ClubPhotoSliderCubit() : super(const ClubPhotoSliderState.initial(index: 0));

  Future<void> updateActivePhoto({required int index}) async {
    emit(_ClubPhotoSliderStateLoaded(index: index));
  }
}
