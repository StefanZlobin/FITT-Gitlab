import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/club/partner_club.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/partner_club/partner_club_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchased_batch_cubit.freezed.dart';
part 'purchased_batch_state.dart';

class PurchasedBatchCubit extends Cubit<PurchasedBatchState> {
  PurchasedBatchCubit() : super(const PurchasedBatchState.initial());

  final partnerClubsRepository = getIt<PartnerClubRepository>();

  Future<void> getClubsWithBatch() async {
    try {
      final clubsWithBatches = await partnerClubsRepository.getPartnerClubs(
        clubFilters: const ClubFilters(favorite: false, onlyWithBatch: true),
        clubSorting: ClubSortingEnum.nearest,
      );
      emit(PurchasedBatchState.loaded(batches: clubsWithBatches));
    } on NetworkExceptions catch (e) {
      emit(
        PurchasedBatchState.error(error: NetworkExceptions.getErrorMessage(e)),
      );
    }
  }

  Future<void> deletePurchasedBatch(int batchUuid) async {
    try {
      await partnerClubsRepository.deletePurchasedBatch(batchUuid);
      await getClubsWithBatch();
    } on NetworkExceptions catch (e) {
      emit(
        PurchasedBatchState.error(error: NetworkExceptions.getErrorMessage(e)),
      );
    }
  }
}
