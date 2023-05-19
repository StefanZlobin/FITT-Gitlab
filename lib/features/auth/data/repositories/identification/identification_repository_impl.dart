// ignore_for_file: prefer_mixin

import 'dart:async';

import 'package:fitt/core/enum/identification_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/features/auth/domain/repositories/identification/identification_repository.dart';
import 'package:fitt/features/auth/domain/repositories/user/user_repository.dart';
import 'package:rxdart/rxdart.dart';

class IdentificationRepositoryImpl implements IdentificationRepository {
  IdentificationRepositoryImpl() {
    userRepository.user.listen((User? user) {
      if (user == null) {
        updateIdentificationStatus(IdentificationStatusEnum.unidentificated);
      }
    });
  }

  final userRepository = getIt<UserRepository>();

  final BehaviorSubject<IdentificationStatusEnum>
      _identificationStatusController =
      BehaviorSubject.seeded(IdentificationStatusEnum.unknown, sync: true);
  void Function(IdentificationStatusEnum) get updateIdentificationStatus =>
      _identificationStatusController.sink.add;
  @override
  Stream<IdentificationStatusEnum> get identificationStatus =>
      _identificationStatusController;

  @override
  Future<void> checkUserInCache() async {
    final user = await userRepository.getUser(fromCache: true);

    if (user != null) {
      updateIdentificationStatus(IdentificationStatusEnum.identificated);
    } else {
      updateIdentificationStatus(IdentificationStatusEnum.unidentificated);
    }
  }

  @override
  void onDispose() {
    _identificationStatusController.close();
  }
}
