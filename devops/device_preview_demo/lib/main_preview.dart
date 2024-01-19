


void main() {
  // No need to directly call the enbironment config setup as it is
  // lazy loaded. In the story board case one uses overrides to
  // set isMockOverride and buildVariantOverride

  //DevopsConstants.setEnvironment(Environment.preview);
  //runApp(DevicePreview(
  //enabled: !kReleaseMode,
  // using builder to build the app and scaffold frame
  // thus builder slot gets a home MaterialApp with
  // scaffold wrapper
  //builder: (_) => MyAppPreviewWrapper(),
  //tools: [
  //  ...DevicePreview.defaultTools,
  // advancedScreenShotModesPlugin,
  // ],
  //));
}
