// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/clubs/domain/cubits/partner_clubs/partner_clubs_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

part 'carousel_bloc.freezed.dart';
part 'carousel_event.dart';
part 'carousel_state.dart';

class CarouselBloc extends Bloc<CarouselEvent, CarouselState> {
  CarouselBloc() : super(const _Initial()) {
    on<_ClubSelected>(_onClubSelected);
    on<_ClubsChanged>(_onClubsChanged);

    getIt<PartnerClubsCubit>().stream.listen((PartnerClubsState state) {
      state.whenOrNull(
        loaded: (clubs) {
          add(CarouselEvent.clubsChanged(clubs));
        },
      );
    });
  }

  // TODO: remove extent
  final SnapScrollListController _listScrollController =
      SnapScrollListController(itemExtent: 256);
  SnapScrollListController get scrollController => _listScrollController;

  List<PartnerClub> clubs = [];

  Future<void> _onClubSelected(
    _ClubSelected event,
    Emitter<CarouselState> emit,
  ) async {
    assert(
      clubs.isNotEmpty,
      'Cannot animate to club becouse clubs is empty',
    );

    final targetIndex = clubs.indexWhere((club) => club.uuid == event.id);
    assert(targetIndex != -1, 'Selected absent club');

    unawaited(_listScrollController.animateToIndex(targetIndex));
  }

  Future<void> _onClubsChanged(
    _ClubsChanged event,
    Emitter<CarouselState> emit,
  ) async {
    clubs = [];
    clubs.addAll(event.clubs);
  }
}
