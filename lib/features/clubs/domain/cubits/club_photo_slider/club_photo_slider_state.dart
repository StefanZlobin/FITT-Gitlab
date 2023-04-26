part of 'club_photo_slider_cubit.dart';

@freezed
class ClubPhotoSliderState with _$ClubPhotoSliderState {
  const factory ClubPhotoSliderState.initial({required int index}) = _ClubPhotoSliderStateInitial;
  const factory ClubPhotoSliderState.loaded({required int index}) = _ClubPhotoSliderStateLoaded;
}
