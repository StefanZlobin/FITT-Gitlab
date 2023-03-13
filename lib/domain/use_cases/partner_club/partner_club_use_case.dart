import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/batch/batch.dart';
import 'package:fitt/domain/entities/calculate_price/calculate_price.dart';
import 'package:fitt/domain/entities/club/partner_club.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/entities/lat_lng/lat_lng.dart';
import 'package:fitt/domain/repositories/partner_club/partner_club_repository.dart';

class PartnerClubsUseCase {
  PartnerClubsUseCase() {
    partnerClubRepository = getIt<PartnerClubRepository>();
  }

  late final PartnerClubRepository partnerClubRepository;

  Future<List<PartnerClub>> getParternClubs({
    ClubFilters clubFilters = const ClubFilters(favorite: false),
    ClubSortingEnum clubSorting = ClubSortingEnum.nearest,
    LatLng? northeast,
    LatLng? southwest,
    bool? isFavorite,
  }) async {
    final partnerClubs = await partnerClubRepository.getPartnerClubs(
      clubFilters: clubFilters,
      clubSorting: clubSorting,
      northeast: northeast,
      southwest: southwest,
    );
    return partnerClubs;
  }

  Future<PartnerClub> getParternClub({required String clubUuid}) async {
    final partnerClub = await partnerClubRepository.getPartnerClub(clubUuid: clubUuid);
    return partnerClub;
  }

  Future<List<Batch>> getClubBatches({required String clubUuid}) async {
    final batches = await partnerClubRepository.getClubBatches(clubUuid: clubUuid);
    return batches;
  }

  Future<List<CalculatePrice>> getCalculatedPriceWorkout({required String slotUuid}) async {
    final calculatePrice = await partnerClubRepository.getCalculatedPriceWorkout(slotUuid: slotUuid);
    return calculatePrice;
  }

  Future<PartnerClub> addClubToFavorites({required String clubUuid}) async {
    final partnerClub = await partnerClubRepository.addClubToFavorites(clubUuid);
    return partnerClub;
  }

  Future<PartnerClub> removeClubToFavorites({required String clubUuid}) async {
    final partnerClub = await partnerClubRepository.removeClubFromFavorites(clubUuid);
    return partnerClub;
  }
}
