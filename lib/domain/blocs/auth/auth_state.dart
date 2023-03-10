part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading({
    String? phoneNumber,
    String? secureCode,
    String? fcmToken,
  }) = _AuthStateLoading;
  const factory AuthState.unknown() = _AuthStateUnknown;
  const factory AuthState.authenticated() = _AuthStateAuthenticated;
  const factory AuthState.unauthenticated() = _AuthStateUnauthenticated;
  const factory AuthState.error({
    String? secureCode,
    int? attemptsEnterSecureCode,
    required String error,
    String? phoneNumber,
  }) = _AuthStateError;
}
