// ignore_for_file: prefer_mixin

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/cubits/admin_clubs/admin_clubs_cubit.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

part 'staff_clubs_filters_bloc.freezed.dart';
part 'staff_clubs_filters_event.dart';
part 'staff_clubs_filters_state.dart';

class StaffClubsFiltersBloc
    extends Bloc<StaffClubsFiltersEvent, StaffClubsFiltersState>
    with Disposable {
  StaffClubsFiltersBloc() : super(const _StaffClubsFiltersStateInitial()) {
    on<_StaffClubsFiltersEventSelectClub>(
      _onStaffClubsFiltersBlocEventSelectClub,
    );

    getIt<AdminClubsCubit>().adminClubs.listen((List<AdminClub> adminClubs) {
      if (_selectedClubs.isEmpty) {
        if (_selectedClubs.isEmpty) {
          for (final selectedClub in adminClubs) {
            if (!_selectedClubs.containsKey(selectedClub)) {
              _selectedClubs[selectedClub] = false;
            }
          }
          _selectedClubs.removeWhere((key, value) => !adminClubs.contains(key));
        }

        //emit(StaffClubsFiltersState.loaded(
        //  adminClubs: _selectedClubs,
        //  selectedClubs: [],
        //));

        add(
          StaffClubsFiltersEvent.selectClub(
            adminClub: _selectedClubs.keys.first,
          ),
        );
      }
    });
  }

  final Map<AdminClub, bool> _selectedClubs = {};
  _StaffClubsFiltersStateLoaded get _filteringState => state.maybeMap(
        loaded: (value) => value,
        orElse: () => _StaffClubsFiltersStateLoaded(
          adminClubs: _selectedClubs,
          selectedClubs: [],
        ),
      );

  final BehaviorSubject<List<AdminClub>> _selectedAdminClubsController =
      BehaviorSubject.seeded(<AdminClub>[], sync: true);
  void Function(List<AdminClub>) get updateSelectedAdminClubs =>
      _selectedAdminClubsController.sink.add;
  Stream<List<AdminClub>> get selectedAdminClubs =>
      _selectedAdminClubsController;

  final BehaviorSubject<AdminClub?> _selectedAdminClubController =
      BehaviorSubject(sync: true);
  void Function(AdminClub?) get updateSelectedAdminClub =>
      _selectedAdminClubController.sink.add;
  Stream<AdminClub?> get selectedAdminClub => _selectedAdminClubController;

  void _onStaffClubsFiltersBlocEventSelectClub(
    _StaffClubsFiltersEventSelectClub event,
    Emitter<StaffClubsFiltersState> emit,
  ) {
    updateSelectedAdminClub(event.adminClub);

    _selectedClubs[event.adminClub] = !_selectedClubs[event.adminClub]!;

    final selectedClubs =
        _selectedClubs.entries.where((e) => e.value).map((e) => e.key).toList();

    updateSelectedAdminClubs(selectedClubs);

    final newState = _filteringState.copyWith(
      adminClubs: _selectedClubs,
      selectedClubs: selectedClubs,
    );
    emit(newState);
  }

  @override
  FutureOr onDispose() {
    _selectedAdminClubsController.close();
    _selectedAdminClubController.close();
  }
}
