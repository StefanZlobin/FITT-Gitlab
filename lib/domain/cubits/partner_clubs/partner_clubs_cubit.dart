import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/blocs/club_filtering/club_filtering_bloc.dart';
import 'package:fitt/domain/blocs/map/map_bloc.dart';
import 'package:fitt/domain/entities/club/partner_club.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/entities/lat_lng/lat_lng.dart';
import 'package:fitt/domain/use_cases/partner_club/partner_club_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_clubs_cubit.freezed.dart';
part 'partner_clubs_state.dart';

class PartnerClubsCubit extends Cubit<PartnerClubsState> {
  PartnerClubsCubit() : super(const PartnerClubsState.loading()) {
    getIt<MapBloc>().stream.listen((MapState state) {
      state.whenOrNull(
        loaded: (_, visibleRegion, __, ___, isVisibleRegionUpdated) {
          if (isVisibleRegionUpdated) {
            getIt<PartnerClubsCubit>().getPartnerClubs(
              clubFilters: clubFilters,
              northeast: LatLng(
                visibleRegion.northeast.latitude,
                visibleRegion.northeast.longitude,
              ),
              southwest: LatLng(
                visibleRegion.southwest.latitude,
                visibleRegion.southwest.longitude,
              ),
            );
          }
        },
      );
    });

    getIt<ClubFilteringBloc>().stream.listen((ClubFilteringState state) {
      state.whenOrNull(
        loaded: (selectedFacilities, selectedPrice, _, __) {
          final activeFacilities = selectedFacilities!.entries
              .where((element) => element.value)
              .map((e) => e.key)
              .toList();
          clubFilters = ClubFilters(
            minPrice: selectedPrice!.minPrice,
            maxPrice: selectedPrice.maxPrice,
            facilities: activeFacilities,
          );

          getPartnerClubs(clubFilters: clubFilters);
        },
      );
    });
  }

  final partnerClubsUseCase = PartnerClubsUseCase();

  ClubFilters clubFilters = const ClubFilters(favorite: false);

  Future<void> getPartnerClubs({
    ClubFilters clubFilters = const ClubFilters(favorite: false),
    ClubSortingEnum clubSorting = ClubSortingEnum.nearest,
    LatLng? northeast,
    LatLng? southwest,
  }) async {
    try {
      final partnerClubs = await partnerClubsUseCase.getParternClubs(
        clubFilters: clubFilters,
        clubSorting: clubSorting,
        northeast: northeast,
        southwest: southwest,
      );
      emit(_PartnerClubsStateLoaded(partnerClubs: partnerClubs));
    } on Exception catch (e) {
      emit(_PartnerClubsStateError(error: e.toString()));
    }
  }
}
