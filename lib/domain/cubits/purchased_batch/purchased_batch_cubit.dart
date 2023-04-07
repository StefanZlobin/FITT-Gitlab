import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/batch/user_batch.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/partner_club/partner_club_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchased_batch_cubit.freezed.dart';
part 'purchased_batch_state.dart';

class PurchasedBatchCubit extends Cubit<PurchasedBatchState> {
  PurchasedBatchCubit() : super(const PurchasedBatchState.initial());

  final partnerClubsRepository = getIt<PartnerClubRepository>();

  Future<void> getUserBatches() async {
    try {
      final clubsWithBatches = await partnerClubsRepository.getUserBatches();
      emit(PurchasedBatchState.loaded(batches: clubsWithBatches));
    } on NetworkExceptions catch (e) {
      emit(
        PurchasedBatchState.error(error: NetworkExceptions.getErrorMessage(e)),
      );
    }
  }

  Future<void> cancelPurchasedBatch(int batchUuid, UserBatch userBatch) async {
    try {
      await partnerClubsRepository.cancelPurchasedBatch(batchUuid, userBatch);
      await getUserBatches();
    } on NetworkExceptions catch (e) {
      emit(
        PurchasedBatchState.error(error: NetworkExceptions.getErrorMessage(e)),
      );
    }
  }
}
