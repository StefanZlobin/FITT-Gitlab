import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/domain/entities/batch/batch.dart';
import 'package:fitt/domain/entities/batch/user_batch.dart';
import 'package:fitt/domain/entities/calculate_price/calculate_price.dart';
import 'package:fitt/domain/entities/club/partner_club.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/entities/lat_lng/lat_lng.dart';

abstract class PartnerClubRepository {
  /// Getting partner clubs by [clubFilters] and [clubSorting].
  Future<List<PartnerClub>> getPartnerClubs({
    required ClubFilters clubFilters,
    required ClubSortingEnum clubSorting,
    LatLng? northeast,
    LatLng? southwest,
    bool? isFavorite,
  });

  /// Getting partner club by [clubUuid].
  Future<PartnerClub> getPartnerClub({required String clubUuid});

  /// Getting club batch offer by [clubUuid].
  Future<List<Batch>> getClubBatches({required String clubUuid});

  /// Getting calculated price workout by [slotUuid].
  Future<List<CalculatePrice>> getCalculatedPriceWorkout({
    required String slotUuid,
  });

  /// Adds partner club [clubUuid] to favorites.
  Future<PartnerClub> addClubToFavorites(String clubUuid);

  /// Removes partner club [clubUuid] to favorites.
  Future<PartnerClub> removeClubFromFavorites(String clubUuid);

  /// Removes partner club [clubUuid] to favorites.
  Future<void> cancelPurchasedBatch(int batchUuid, UserBatch userBatch);

  Future<List<UserBatch>> getUserBatches();

  Future<UserBatch> getUserBatch(int batchUuid);
}
