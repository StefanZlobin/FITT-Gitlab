part of 'input_secure_code_bloc.dart';

@freezed
class InputSecureCodeState with _$InputSecureCodeState {
  const factory InputSecureCodeState.initial() = _InputSecureCodeStateInitial;
  const factory InputSecureCodeState.loaded() = _InputSecureCodeStateLoaded;
  const factory InputSecureCodeState.error({
    required String error,
    @Default(5) int countSecureCodeEntryAttempts,
    @Default('') String phoneNumber,
  }) = _InputSecureCodeStateError;
}
