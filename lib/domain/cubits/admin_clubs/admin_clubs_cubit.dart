// ignore_for_file: prefer_mixin

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:fitt/domain/use_cases/admin/admin_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

part 'admin_clubs_cubit.freezed.dart';
part 'admin_clubs_state.dart';

class AdminClubsCubit extends Cubit<AdminClubsState>
    with UserMixin, Disposable {
  AdminClubsCubit() : super(const AdminClubsState.initial()) {
    getAdminClubs();
  }

  final adminUseCase = AdminUseCase();

  final BehaviorSubject<List<AdminClub>> _adminClubsController =
      BehaviorSubject.seeded(<AdminClub>[], sync: true);
  void Function(List<AdminClub>) get updateAdminClubs =>
      _adminClubsController.sink.add;
  Stream<List<AdminClub>> get adminClubs => _adminClubsController;

  Future<void> getAdminClubs() async {
    try {
      final adminClubs = await adminUseCase.getAdminClubs();
      updateAdminClubs(adminClubs);
      emit(_AdminClubsStateLoaded(
        adminClubs: adminClubs,
        nameOfOrganization:
            adminClubs.isEmpty ? '' : adminClubs.first.organization.label,
      ));
    } on Exception catch (e) {
      emit(_AdminClubsStateError(error: e.toString()));
    }
  }

  @override
  FutureOr onDispose() {
    _adminClubsController.close();
  }
}
