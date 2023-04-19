import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/repositories/user/user_repository.dart';

mixin UserMixin {
  UserRepository get __repo => getIt<UserRepository>();
  User? get userSnapshot => __repo.userSnapshot;
  Stream<User?> get user => __repo.user;
}
