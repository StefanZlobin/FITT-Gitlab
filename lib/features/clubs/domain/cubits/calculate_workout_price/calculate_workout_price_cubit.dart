import 'package:bloc/bloc.dart';
import 'package:fitt/features/clubs/domain/entities/calculate_price/calculate_price.dart';
import 'package:fitt/features/clubs/domain/use_cases/partner_club/partner_club_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculate_workout_price_cubit.freezed.dart';
part 'calculate_workout_price_state.dart';

class CalculateWorkoutPriceCubit extends Cubit<CalculateWorkoutPriceState> {
  CalculateWorkoutPriceCubit()
      : super(const CalculateWorkoutPriceState.initial());

  final partnerClubUseCase = PartnerClubsUseCase();

  Future<void> getCalculatedPriceWorkout({required String slotUuid}) async {
    try {
      final calculatedPrice = await partnerClubUseCase
          .getCalculatedPriceWorkout(slotUuid: slotUuid);
      emit(_CalculateWorkoutPriceStateLoaded(calculatedPrice: calculatedPrice));
    } on Exception catch (e) {
      emit(_CalculateWorkoutPriceStateError(error: e.toString()));
    }
  }
}
