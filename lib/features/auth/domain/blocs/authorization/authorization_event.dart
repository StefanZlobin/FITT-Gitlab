part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const factory AuthorizationEvent.checkUserRole({
    required AuthorizationStatusEnum authorizationStatus,
  }) = _AuthorizationEventCheckUserRole;
}
