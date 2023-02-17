import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/cubits/filtering/filtering_cubit.dart';
import 'package:fitt/domain/cubits/sorting/sorting_cubit.dart';
import 'package:fitt/domain/entities/club/partner_club.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/use_cases/partner_club/partner_club_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_clubs_favorite_cubit.freezed.dart';
part 'partner_clubs_favorite_state.dart';

class PartnerClubsFavoriteCubit extends Cubit<PartnerClubsFavoriteState> {
  PartnerClubsFavoriteCubit()
      : super(const PartnerClubsFavoriteState.initial());

  final partnerClubsUseCase = PartnerClubsUseCase();
  late _PartnerClubsFavoriteStateLoaded _partnerClubsFavoriteStateLoaded;
  final sortingCubit = getIt<SortingCubit>();
  final filteringCubit = getIt<FilteringCubit>();

  Future<void> getPartnerClubs({
    ClubFilters clubFilters = const ClubFilters(favorite: true),
    ClubSortingEnum clubSorting = ClubSortingEnum.nearest,
  }) async {
    try {
      final partnerClubs = await partnerClubsUseCase.getParternClubs(
        clubFilters: clubFilters.copyWith(
            facilities: getIt<FilteringCubit>().activeFavilitiesIndex ??
                clubFilters.facilities),
        clubSorting: getIt<SortingCubit>().clubSortingValue ?? clubSorting,
        isFavorite: clubFilters.favorite,
      );
      bool isFiltersUpdated = false;
      if (getIt<FilteringCubit>().activeFavilitiesIndex != null) {
        if (getIt<FilteringCubit>().activeFavilitiesIndex!.isNotEmpty) {
          isFiltersUpdated = true;
        } else {
          isFiltersUpdated = false;
        }
      }
      _partnerClubsFavoriteStateLoaded = _PartnerClubsFavoriteStateLoaded(
          clubs: partnerClubs, isFiltersUpdated: isFiltersUpdated);
      emit(_partnerClubsFavoriteStateLoaded);
    } on Exception catch (e) {
      emit(_PartnerClubsFavoriteStateError(error: e.toString()));
    }
  }

  Future<void> setFavorite({
    required int index,
    required bool favorite,
    required String clubUuid,
  }) async {
    try {
      final partnerClub = !favorite
          ? await partnerClubsUseCase.addClubToFavorites(clubUuid: clubUuid)
          : await partnerClubsUseCase.removeClubToFavorites(clubUuid: clubUuid);
      final partnerClubs = _partnerClubsFavoriteStateLoaded.copyWith(
          clubs: _partnerClubsFavoriteStateLoaded.clubs);
      partnerClubs.clubs[index] = partnerClub;
      emit(_PartnerClubsFavoriteStateLoaded(clubs: partnerClubs.clubs));
    } on Exception catch (e) {
      emit(_PartnerClubsFavoriteStateError(error: e.toString()));
    }
  }
}
