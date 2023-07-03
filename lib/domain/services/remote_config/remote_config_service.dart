abstract class RemoteConfigService {
  Future<void> init();
  Future<String> getAppVersion();
}
