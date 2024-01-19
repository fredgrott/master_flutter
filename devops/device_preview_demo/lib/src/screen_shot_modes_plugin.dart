

final screenShotModesPlugin = ScreenShotModesPlugin(processor: saveScreenShot, modes: listDevice);

Future<String> saveScreenShot(DeviceScreenshotWithLabel screen) async {
  final String name = screen.label.join('/');
  final path = join(Directory.current.path, 'screenshot', '$name.png');
  final imageFile = File(path);
  await imageFile.create(recursive: true);
  await imageFile.writeAsBytes(screen.deviceScreenshot.bytes);

  return '$path saved'; // message printed to device preview plugins windows.
}

final listDevice = [
  ItemScreenMode(function: setDeviceToIphone, modes: listLightDark, label: "iphone"),
  ItemScreenMode(function: setDeviceToNote, label: "note", modes: listLightDark),
];

final listLightDark = [
  ItemScreenMode(
      function: (context) async {
        await setModeTo(context, ThemeMode.light);
      },
      modes: listPush,
      label: "light"),
  ItemScreenMode(
      function: (context) async {
        await setModeTo(context, ThemeMode.dark);
      },
      modes: listPush,
      label: "dark"),
];

final listPush = [
  const ItemScreenMode(function: pushSampleItemListView, label: 'sample item list view'),
  const ItemScreenMode(function: pushSettingsView, label: 'settings view'),
  const ItemScreenMode(function: pushSampleItemDetailsView, label: 'item details view'),
];

Future<void> changeModeDarkLight(BuildContext context) async {
  DevicePreviewHelper.toggleMode(context);
}

Future<void> setModeTo(BuildContext context, ThemeMode mode) async {
  Navigator.of(navigatorKey.currentContext!).push(DirectPageRouteBuilder(builder: (_) => SampleItemListView()));
  final store = DevicePreviewHelper.getDevicePreviewStore(context);
  if (store.data.isDarkMode && mode == ThemeMode.light) {
    store.toggleDarkMode();
  }
}

Future<void> setDeviceToNote(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.android.samsungGalaxyNote20Ultra.identifier);
}

Future<void> setDeviceToIphone(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.ios.iPhone13.identifier);
}

Future<void> setDeviceToPixel4(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.android.pixel4.identifier);
}

Future<void> setDeviceToOnePlus8Pro(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.android.onePlus8Pro.identifier);
}

Future<void> setDeviceToSamsungGalaxyA50(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.android.samsungGalaxyA50.identifier);
}

Future<void> setDeviceToSamsungGalaxyNote20(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.android.samsungGalaxyNote20.identifier);
}

Future<void> setDeviceToSamsungGalaxyS20(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.android.samsungGalaxyS20.identifier);
}

Future<void> setDeviceToSonyXperialII(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.android.sonyXperia1II.identifier);
}

Future<void> setDeviceToIpad(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.ios.iPad.identifier);
}

Future<void> setDeviceToIpad12inchesGen2(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.ios.iPad12InchesGen2.identifier);
}

Future<void> setDeviceToIpad12InchesGen4(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.ios.iPad12InchesGen4.identifier);
}

Future<void> setDeviceToIpadAir4(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.ios.iPadAir4.identifier);
}

Future<void> setDeviceToIpadPro11Inches(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.ios.iPadPro11Inches.identifier);
}

Future<void> setDeviceToIphone12Mini(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.ios.iPhone12Mini.identifier);
}

Future<void> setDeviceToIphone12ProMax(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.ios.iPhone12ProMax.identifier);
}

Future<void> setDeviceToIphone13Mini(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.ios.iPhone13Mini.identifier);
}

Future<void> setDeviceToIphone13ProMax(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.ios.iPhone13ProMax.identifier);
}

Future<void> setDeviceToIphone13(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.ios.iPhone13.identifier);
}

Future<void> setDeviceToIphone14Pro(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.ios.iPhone14Pro.identifier);
}

Future<void> setDeviceToIphoneSE(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.ios.iPhoneSE.identifier);
}

Future<void> setDeviceToLinuxLaptop(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.linux.laptop.identifier);
}

Future<void> setDeviceToMacLaptop(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.macOS.macBookPro.identifier);
}

Future<void> setDeviceToWindowsLaptop(BuildContext context) async {
  DevicePreviewHelper.changeDevice(context, Devices.windows.laptop.identifier);
}

