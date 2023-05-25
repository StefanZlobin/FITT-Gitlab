import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/repositories/resource/resource_repository.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/clubs/domain/use_cases/partner_club/partner_club_use_case.dart';
import 'package:fitt/features/map/domain/entities/lat_lng/lat_lng.dart';
import 'package:fitt/features/map/domain/repositories/map/map_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gm;

part 'partner_clubs_cubit.freezed.dart';
part 'partner_clubs_state.dart';

class PartnerClubsCubit extends Cubit<PartnerClubsState> {
  PartnerClubsCubit() : super(const PartnerClubsState.loading()) {
    getIt<ResourceRepository>().filters.listen((ClubFilters filters) {
      clubFilters = filters.copyWith(favorite: false);
      getPartnerClubs(clubFilters);
    });

    getIt<MapRepository>()
        .visibleRegion
        .listen((gm.LatLngBounds? visibleRegion) {
      if (visibleRegion != null) {
        getPartnerClubs(
          clubFilters,
          northeast: visibleRegion.northeast.toEntity(),
          southwest: visibleRegion.southwest.toEntity(),
        );
      }
    });
  }

  final partnerClubsUseCase = PartnerClubsUseCase();

  ClubFilters clubFilters = ClubFilters(favorite: false);

  Future<void> getPartnerClubs(
    ClubFilters clubFilters, {
    ClubSortingEnum clubSorting = ClubSortingEnum.nearest,
    LatLng? northeast,
    LatLng? southwest,
  }) async {
    try {
      final partnerClubs = await partnerClubsUseCase.getParternClubs(
        clubFilters: clubFilters.copyWith(favorite: false),
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
