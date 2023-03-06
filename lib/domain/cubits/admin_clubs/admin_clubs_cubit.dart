import 'package:bloc/bloc.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:fitt/domain/use_cases/admin/admin_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_clubs_cubit.freezed.dart';
part 'admin_clubs_state.dart';

class AdminClubsCubit extends Cubit<AdminClubsState> with UserMixin {
  AdminClubsCubit() : super(const AdminClubsState.initial()) {
    getAdminClubs();
  }

  final adminUseCase = AdminUseCase();

  Future<void> getAdminClubs() async {
    try {
      final adminClubs = await adminUseCase.getAdminClubs();
      emit(_AdminClubsStateLoaded(adminClubs: adminClubs));
    } on Exception catch (e) {
      emit(_AdminClubsStateError(error: e.toString()));
    }
  }
}
