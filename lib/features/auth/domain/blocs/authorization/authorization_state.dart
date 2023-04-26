part of 'authorization_bloc.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState.initial() = _AuthorizationStateInitial;
  const factory AuthorizationState.loaded({
    required AuthorizationStatusEnum authorizationStatus,
  }) = _AuthorizationStateLoaded;
  const factory AuthorizationState.error({
    required String error,
  }) = _AuthorizationStateError;
}
