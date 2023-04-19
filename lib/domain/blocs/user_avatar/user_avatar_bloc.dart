import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/repositories/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_avatar_bloc.freezed.dart';
part 'user_avatar_event.dart';
part 'user_avatar_state.dart';

class UserAvatarBloc extends Bloc<UserAvatarEvent, UserAvatarState> {
  UserAvatarBloc() : super(const UserAvatarState.initial()) {
    on<_UserAvatarEventUploadingUser>(_onUserAvatarEventUploadingUser);

    getIt<UserRepository>().user.listen((User? user) {
      if (user != null) {
        add(UserAvatarEvent.uploadingUser(user: user));
      }
    });
  }

  void _onUserAvatarEventUploadingUser(
    _UserAvatarEventUploadingUser event,
    Emitter<UserAvatarState> emit,
  ) {
    emit(UserAvatarState.loaded(user: event.user));
  }
}
