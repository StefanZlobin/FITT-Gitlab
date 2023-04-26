part of 'carousel_bloc.dart';

@freezed
class CarouselEvent with _$CarouselEvent {
  const factory CarouselEvent.started() = _Started;
  const factory CarouselEvent.clubSelected(String id) = _ClubSelected;
  const factory CarouselEvent.clubsChanged(List<PartnerClub> clubs) = _ClubsChanged;
}
