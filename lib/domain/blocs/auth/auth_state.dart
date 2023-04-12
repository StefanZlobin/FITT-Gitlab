part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unknown() = _AuthStateUnknown;
  const factory AuthState.authenticated() = _AuthStateAuthenticated;
  const factory AuthState.loading({
    required Duration repearCallAfter,
  }) = _AuthStateLoading;
  const factory AuthState.unauthenticated() = _AuthStateUnauthenticated;
  const factory AuthState.error({required String error}) = _AuthStateError;
}
