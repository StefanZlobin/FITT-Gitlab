import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/authorization_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/authorization/domain/repositories/authorization/authorization_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_bloc.freezed.dart';
part 'authorization_event.dart';
part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc() : super(const AuthorizationState.initial()) {
    on<_AuthorizationEventCheckUserRole>(_onAuthorizationEventCheckUserRole);

    getIt<AuthorizationRepository>()
        .authorizationStatus
        .listen((AuthorizationStatusEnum authorizationStatus) {
      add(
        AuthorizationEvent.checkUserRole(
          authorizationStatus: authorizationStatus,
        ),
      );
    });
  }

  void _onAuthorizationEventCheckUserRole(
    _AuthorizationEventCheckUserRole event,
    Emitter<AuthorizationState> emit,
  ) {
    emit(AuthorizationState.loaded(
      authorizationStatus: event.authorizationStatus,
    ));
  }
}
