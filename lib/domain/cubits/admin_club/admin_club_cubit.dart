import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/blocs/staff_clubs_filters/staff_clubs_filters_bloc.dart';
import 'package:fitt/domain/use_cases/admin/admin_use_case.dart';
import 'package:fitt/features/clubs/domain/entities/admin_club/admin_club.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_club_cubit.freezed.dart';
part 'admin_club_state.dart';

class AdminClubCubit extends Cubit<AdminClubState> {
  AdminClubCubit() : super(const AdminClubState.initial()) {
    getIt<StaffClubsFiltersBloc>()
        .selectedAdminClub
        .listen((AdminClub? adminClub) {
      if (adminClub != null) {
        getAdminClub(adminClubUuid: adminClub.uuid!);
      }
    });
  }

  final adminUseCase = AdminUseCase();

  Future<void> getAdminClub({required String adminClubUuid}) async {
    try {
      final adminClub =
          await adminUseCase.getAdminClub(adminClubUuid: adminClubUuid);
      emit(_AdminClubStateLoaded(adminClub: adminClub));
    } on Exception catch (e) {
      emit(_AdminClubStateError(error: e.toString()));
    }
  }
}
