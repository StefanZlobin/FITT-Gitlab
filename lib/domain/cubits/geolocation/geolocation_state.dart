part of 'geolocation_cubit.dart';

@Freezed(equal: false)
class GeolocationState with _$GeolocationState {
  const factory GeolocationState.initial() = _GeolocationStateInitial;
  const factory GeolocationState.loading() = _GeolocationStateLoading;
  const factory GeolocationState.locationDetected(
      {required Position position}) = _GeolocationStatelocationDetected;
  const factory GeolocationState.locationDetectingError(
      {required String error}) = _GeolocationStateLocationDetectingError;
}
