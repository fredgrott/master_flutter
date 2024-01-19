// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.




import 'package:flutter/material.dart';

/// Flutter Framework internals Theory:
///   Platform.isNonWebPlatform calls crash on web platform
///   and soon will be depreciated. Also, testing sets
///   up defaltTargetPlatform == TargetPlaform.android which 
///   generally are changed during testing and goldens to 
///   test specific platfroms.
///
///    And, the standard practice of widget testing including 
///    goldens is to wrap in a MaterialApp wrapper and set Theme.platform to platform under test.
///
///    And, on web we still get the target OS through what
///    flutter picks up via the browser. So we only need 
///    these getters to replace using Platform.is calls.
///
///    Note, that Android and Fuschia big screens will still 
///    be under isMobile.
///
/// @author Fredrick Allan Grott
extension PlatformDetectionExtension on BuildContext {
  bool get isMobile =>
    Theme.of(this).platform == TargetPlatform.iOS ||
    Theme.of(this).platform == TargetPlatform.android ||
    Theme.of(this).platform == TargetPlatform.fuchsia;


  bool get isDesktop =>
    Theme.of(this).platform == TargetPlatform.macOS ||
    Theme.of(this).platform == TargetPlatform.windows ||
    Theme.of(this).platform == TargetPlatform.linux;


  bool get isIOS => Theme.of(this).platform == TargetPlatform.iOS;

  bool get isAndroid => Theme.of(this).platform == TargetPlatform.android;

  bool get isFuchsia => Theme.of(this).platform == TargetPlatform.fuchsia;

  bool get isLinux => Theme.of(this).platform == TargetPlatform.linux;

  bool get isWindows => Theme.of(this).platform == TargetPlatform.windows;

  bool get isMacOS => Theme.of(this).platform == TargetPlatform.macOS;


}