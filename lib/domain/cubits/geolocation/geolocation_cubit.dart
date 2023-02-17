import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/services/geolocation/geolocation_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'geolocation_cubit.freezed.dart';
part 'geolocation_state.dart';

class GeolocationCubit extends Cubit<GeolocationState> {
  GeolocationCubit() : super(const GeolocationState.initial());

  final geolocationService = getIt<GeolocationService>();

  Future<void> getCurrentPosition() async {
    try {
      emit(const GeolocationState.loading());
      final currentPosition = await geolocationService.getCurrentPosition();
      await Future<void>.delayed(const Duration(milliseconds: 300));
      emit(GeolocationState.locationDetected(position: currentPosition));
    } on Exception catch (e) {
      emit(GeolocationState.locationDetectingError(error: e.toString()));
    }
  }
}
