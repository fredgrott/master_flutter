

bool? isMockOverride;
String? buildVariantOverride;
bool? isMockDefine;
String? buildVariantDefine;

/// [EnvironmentConfig] assumptions are
/// that there are gitignored files of
///        debug.json
///        release.json
///        staging.json
///        preview.json
///        profile.json
///
/// That sets the vars per environment via
/// the dart-define command. Thus, this
/// is a services start entry in app start up services
/// blocks
/// And in test tear down it is:
///
/// ```dart
///    EnvironmentConfig.resetOverrides();
/// ```
///
/// Note, for story boarding one sets the overrides as part of starting the story board app
/// as when the story board app is started we will not have a proper dart-define-from-file
/// entry in our launch config.
///
/// @author Fredrick Allan Grott.
class EnvironmentConfig {
  bool get isMockDefine => isMockOverride ?? const bool.fromEnvironment('isMock');

  String get buildVariantDefine => buildVariantOverride ?? const String.fromEnvironment('buildVariant');

  void resetOverrides() {
    isMockOverride = null;
    buildVariantOverride = null;
  }
}
