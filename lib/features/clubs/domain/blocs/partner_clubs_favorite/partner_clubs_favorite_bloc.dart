// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/resource/resource_repository.dart';
import 'package:fitt/features/clubs/domain/blocs/club_filtering/club_filtering_bloc.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/clubs/domain/use_cases/partner_club/partner_club_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_clubs_favorite_bloc.freezed.dart';
part 'partner_clubs_favorite_event.dart';
part 'partner_clubs_favorite_state.dart';

class PartnerClubsFavoriteBloc
    extends Bloc<PartnerClubsFavoriteEvent, PartnerClubsFavoriteState> {
  PartnerClubsFavoriteBloc()
      : super(const _PartnerClubsFavoriteStateInitial()) {
    on<_PartnerClubsFavoriteEventGetPartnerClubs>(
      _onPartnerClubsFavoriteEventGetPartnerClubs,
    );
    on<_PartnerClubsFavoriteEventSetPartnerClubs>(
      _onPartnerClubsFavoriteEventSetPartnerClubs,
    );
    on<_PartnerClubsFavoriteEventSetFavorite>(
      _onPartnerClubsFavoriteEventSetFavorite,
    );
    on<_PartnerClubsFavoriteEventResetFacilities>(
      _onPartnerClubsFavoriteEventResetFacilities,
    );

    getIt<ResourceRepository>()
        .clubSortingItems
        .listen((Map<ClubSortingEnum, bool> clubSorting) {
      clubSortingEnum = clubSorting.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList()
          .first;

      add(PartnerClubsFavoriteEvent.getPartnerClubs(
        clubFilters: clubFilters,
        clubSortingEnum: clubSortingEnum,
      ));
    });

    getIt<ClubFilteringBloc>().stream.listen((ClubFilteringState state) {
      state.whenOrNull(
        loaded: (clubFilters, _, __) {
          add(PartnerClubsFavoriteEvent.getPartnerClubs(
            clubFilters: clubFilters,
            clubSortingEnum: clubSortingEnum,
          ));
        },
      );
    });
  }

  final PartnerClubsUseCase partnerClubsUseCase = PartnerClubsUseCase();

  ClubFilters clubFilters = ClubFilters(favorite: true);
  ClubSortingEnum clubSortingEnum = ClubSortingEnum.nearest;

  _PartnerClubsFavoriteStateLoaded get stateLoaded => state.maybeMap(
        loaded: (value) => value,
        orElse: () => const _PartnerClubsFavoriteStateLoaded(
          clubs: [],
          isFacilitiesUpdated: false,
        ),
      );

  Future<void> _onPartnerClubsFavoriteEventGetPartnerClubs(
    _PartnerClubsFavoriteEventGetPartnerClubs event,
    Emitter<PartnerClubsFavoriteState> emit,
  ) async {
    try {
      final res = await partnerClubsUseCase.getParternClubs(
        clubFilters: event.clubFilters,
        clubSorting: event.clubSortingEnum,
      );

      add(PartnerClubsFavoriteEvent.setPartnerClubs(clubs: res));
    } on NetworkExceptions catch (e) {
      emit(PartnerClubsFavoriteState.error(
        error: NetworkExceptions.getErrorMessage(e),
      ));
    }
  }

  void _onPartnerClubsFavoriteEventSetPartnerClubs(
    _PartnerClubsFavoriteEventSetPartnerClubs event,
    Emitter<PartnerClubsFavoriteState> emit,
  ) {
    final isFacilitiesUpdated = clubFilters.facilities?.isNotEmpty ?? false;

    emit(PartnerClubsFavoriteState.loaded(
      clubs: event.clubs,
      isFacilitiesUpdated: isFacilitiesUpdated,
    ));
  }

  Future<void> _onPartnerClubsFavoriteEventSetFavorite(
    _PartnerClubsFavoriteEventSetFavorite event,
    Emitter<PartnerClubsFavoriteState> emit,
  ) async {
    try {
      final partnerClub = !event.favorite
          ? await partnerClubsUseCase.addClubToFavorites(
              clubUuid: event.clubUuid,
            )
          : await partnerClubsUseCase.removeClubToFavorites(
              clubUuid: event.clubUuid,
            );
      final partnerClubs = [...stateLoaded.clubs];
      partnerClubs[event.index] = partnerClub;
      emit(_PartnerClubsFavoriteStateLoaded(
        clubs: partnerClubs,
        isFacilitiesUpdated: clubFilters.facilities?.isNotEmpty ?? false,
      ));
    } on Exception catch (e) {
      emit(_PartnerClubsFavoriteStateError(error: e.toString()));
    }
  }

  void _onPartnerClubsFavoriteEventResetFacilities(
    _PartnerClubsFavoriteEventResetFacilities event,
    Emitter<PartnerClubsFavoriteState> emit,
  ) {
    getIt<ClubFilteringBloc>().add(const ClubFilteringEvent.clearFilter());
  }
}
