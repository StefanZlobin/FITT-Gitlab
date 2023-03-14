import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../../entities/club/partner_club.dart';

part 'carousel_bloc.freezed.dart';
part 'carousel_event.dart';
part 'carousel_state.dart';

class CarouselBloc extends Bloc<CarouselEvent, CarouselState> {
  CarouselBloc() : super(const _Initial()) {
    on<_ClubSelected>(_onClubSelected, transformer: sequential());
    on<_ClubsChanged>(_onClubsChanged, transformer: restartable());
  }

  // TODO: remove extent
  final SnapScrollListController _listScrollController =
      SnapScrollListController(itemExtent: 256);
  SnapScrollListController get scrollController => _listScrollController;

  Completer<List<PartnerClub>>? _partnerClubsCompleter;
  PartnerClub? firstPartnerClub;

  Future<void> _onClubSelected(
    _ClubSelected event,
    Emitter<CarouselState> emit,
  ) async {
    assert(
      _partnerClubsCompleter == null,
      'Not finished handling of previous select',
    );

    final completer = _partnerClubsCompleter = Completer();
    final clubs = await completer.future;

    final targetIndex = clubs.indexWhere((club) => club.uuid == event.id);
    assert(targetIndex != -1, 'Selected absent club');

    unawaited(_listScrollController.animateToIndex(targetIndex));
  }

  Future<void> _onClubsChanged(
    _ClubsChanged event,
    Emitter<CarouselState> emit,
  ) async {
    final completer = _partnerClubsCompleter;
    if (completer != null) {
      completer.complete(event.clubs);
      firstPartnerClub = event.clubs.first;
      _partnerClubsCompleter = null;
    }
  }
}
