import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/payment_type_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/cubits/buy_workout/buy_workout_cubit.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/use_cases/payment/payment_use_case.dart';
import 'package:fitt/features/clubs/domain/cubits/club/club_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/time_slot/time_slot.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_workout_button_bloc.freezed.dart';
part 'payment_workout_button_event.dart';
part 'payment_workout_button_state.dart';

enum UserExistEnum {
  none,
  notFullData,
  fullData,
}

class PaymentWorkoutButtonBloc
    extends Bloc<PaymentWorkoutButtonEvent, PaymentWorkoutButtonState> {
  PaymentWorkoutButtonBloc()
      : super(const PaymentWorkoutButtonState.initial()) {
    on<_PaymentWorkoutButtonEventPayment>(
      _onPaymentWorkoutButtonEventPayment,
    );
    on<_PaymentWorkoutButtonEventCheckAvailablePayment>(
      _onPaymentWorkoutButtonEventCheckAvailablePayment,
    );

    getIt<BuyWorkoutCubit>().stream.listen((BuyWorkoutState buyWorkoutState) {
      buyWorkoutState.whenOrNull(
        loaded: (workout) => w = workout,
      );
    });
  }

  final paymentUseCase = PaymentUseCase();
  Workout? w;

  Future<void> _onPaymentWorkoutButtonEventPayment(
    _PaymentWorkoutButtonEventPayment event,
    Emitter<PaymentWorkoutButtonState> emit,
  ) async {
    switch (event.paymentType) {
      case PaymentTypeEnum.money:
        try {
          await getIt<BuyWorkoutCubit>().buyWorkout(
            slot: TimeSlot(
              id: getIt<ClubCubit>().selectedSlot!.id,
              startTime: getIt<ClubCubit>().selectedSlot!.startTime,
              duration: getIt<ClubCubit>().selectedSlot!.duration,
              price: getIt<ClubCubit>().selectedSlot!.price,
            ),
            activityUuid: getIt<ClubCubit>().clubState.selectedActivity!.uuid,
          );
          if (w != null) {
            emit(PaymentWorkoutButtonState.loaded(
              paymentType: event.paymentType,
              workout: w!,
            ));
          }
        } on NetworkExceptions catch (e) {
          emit(PaymentWorkoutButtonState.error(
            error: NetworkExceptions.getErrorMessage(e),
          ));
        }
        break;
      case PaymentTypeEnum.batch:
        try {
          await getIt<BuyWorkoutCubit>().buyWorkoutByBatch(
            slot: TimeSlot(
              id: getIt<ClubCubit>().selectedSlot!.id,
              startTime: getIt<ClubCubit>().selectedSlot!.startTime,
              duration: getIt<ClubCubit>().selectedSlot!.duration,
              price: getIt<ClubCubit>().selectedSlot!.price,
            ),
            activityUuid: getIt<ClubCubit>().clubState.selectedActivity!.uuid,
          );
          if (w != null) {
            emit(PaymentWorkoutButtonState.loaded(
              paymentType: event.paymentType,
              workout: w!,
            ));
          }
        } on NetworkExceptions catch (e) {
          emit(PaymentWorkoutButtonState.error(
            error: NetworkExceptions.getErrorMessage(e),
          ));
        }
        break;
      case PaymentTypeEnum.corporateBalance:
        try {
          await getIt<BuyWorkoutCubit>().buyWorkoutByWallet(
            slot: TimeSlot(
              id: getIt<ClubCubit>().selectedSlot!.id,
              startTime: getIt<ClubCubit>().selectedSlot!.startTime,
              duration: getIt<ClubCubit>().selectedSlot!.duration,
              price: getIt<ClubCubit>().selectedSlot!.price,
            ),
            activityUuid: getIt<ClubCubit>().clubState.selectedActivity!.uuid,
          );
          if (w != null) {
            emit(PaymentWorkoutButtonState.loaded(
              paymentType: event.paymentType,
              workout: w!,
            ));
          }
        } on NetworkExceptions catch (e) {
          emit(PaymentWorkoutButtonState.error(
            error: NetworkExceptions.getErrorMessage(e),
          ));
        }
        break;
    }
  }

  void _onPaymentWorkoutButtonEventCheckAvailablePayment(
    _PaymentWorkoutButtonEventCheckAvailablePayment event,
    Emitter<PaymentWorkoutButtonState> emit,
  ) {
    emit(PaymentWorkoutButtonState.initial(
      paymentAvailable: event.paymentAvailable,
      userHasFullData: event.userHasFullData,
    ));
  }
}
