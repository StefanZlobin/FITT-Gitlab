// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/map/domain/repositories/map/map_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

part 'carousel_bloc.freezed.dart';
part 'carousel_event.dart';
part 'carousel_state.dart';

class CarouselBloc extends Bloc<CarouselEvent, CarouselState> {
  CarouselBloc() : super(const _Initial()) {
    on<_ClubSelected>(_onClubSelected);
  }

  // TODO: remove extent
  final SnapScrollListController _listScrollController =
      SnapScrollListController(itemExtent: 256);
  SnapScrollListController get scrollController => _listScrollController;

  Future<void> _onClubSelected(
    _ClubSelected event,
    Emitter<CarouselState> emit,
  ) async {
    assert(
      getIt<MapRepository>().clubList.isNotEmpty,
      'Cannot animate to club becouse clubs is empty',
    );
    assert(
      _listScrollController.isAttached,
      '_listScrollController не прикреплен к карусели',
    );

    final targetIndex = getIt<MapRepository>()
        .clubList
        .indexWhere((club) => club.uuid == event.id);
    assert(targetIndex != -1, 'Selected absent club');

    if (_listScrollController.isAttached) {
      unawaited(_listScrollController.animateToIndex(targetIndex));
    }
  }
}
