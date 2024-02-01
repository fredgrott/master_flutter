// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from GSkinner flutter sizeed context
// Under MIT License 2019

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_custom_helpers/_mine/foldable_ext.dart';
import 'package:flutter_custom_helpers/_mine/platform_detection_extension.dart';
import 'package:flutter_custom_helpers/_mine/window_size_enum.dart';

double kCompactScpacing = 16;

double kMediumSpacing = 24;

double kExpandedSpacing = 24;

double kEvelSpacing = 32;

/// With Materila Design 3 Canonical Layout changes,
/// Canonical Layouts become the default way to make
/// screen responsive. Window class wise the way the foldable
/// will show both screen content is the same way desktop
/// and desktop web will show content.
///
/// @author Fredrick Allan Grott
extension MediaQueryExt on BuildContext {
  /// The same of [MediaQuery.of(context).size]
  Size get mediaQuerySize => MediaQuery.of(this).size;

  /// The same of [MediaQuery.of(context).size.height]
  /// Note: updates when you rezise your screen (like on a browser or
  /// desktop window)
  /// performs a simple [Theme.of(context).size] action and returns given [height or width]
  double get height => mediaQuerySize.height;

  /// The same of [MediaQuery.of(context).size.width]
  /// Note: updates when you rezise your screen (like on a browser or
  /// desktop window)
  double get width => mediaQuerySize.width;

  /// similar to [MediaQuery.of(context).padding]
  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;

  /// similar to [MediaQuery.of(context).viewPadding]
  EdgeInsets get mediaQueryViewPadding => MediaQuery.of(this).viewPadding;

  /// similar to [MediaQuery.of(context).viewInsets]
  EdgeInsets get mediaQueryViewInsets => MediaQuery.of(this).viewInsets;

  bool get alwaysUse24HourFormat => MediaQuery.of(this).alwaysUse24HourFormat;

  /// similar to [MediaQuery.of(this).devicePixelRatio]
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  /// get the shortestSide from screen
  double get mediaQueryShortestSide => const MediaQueryData().size.shortestSide;

  double get mediaQueryLognestSide => const MediaQueryData().size.longestSide;

  /// similar to [MediaQuery.textScaleFactorOf(context)]
  TextScaler get mediaQueryTextScaleFactor => MediaQuery.textScalerOf(this);

  bool get mediaQueryHighContrast => MediaQuery.highContrastOf(this);

  bool get mediaQueryBoldText => MediaQuery.boldTextOf(this);

  // GSkinner ins SizedContext has this wrong as we want it to work during testting of goldens as well
  // so instead of using UniversalPlatform calls I use my other extensions.
  double get pixelsPerInch => isMobile ? 150 : 96;

  /// Returns the same as MediaQuery.of(context)
  MediaQueryData get mq => MediaQuery.of(this);

  bool get isLandscape => mq.orientation == Orientation.landscape;

  Size get sizePx => mq.size;

  double get widthPx => sizePx.width;

  double get heightPx => sizePx.height;

  double get diagonalPx {
    final Size s = sizePx;
    return sqrt((s.width * s.width) + (s.height * s.height));
  }

  // Returns pixel size in Inches
  Size get sizeInches {
    final Size pxSize = sizePx;
    return Size(pxSize.width / pixelsPerInch, pxSize.height / pixelsPerInch);
  }

  double get widthInches => sizeInches.width;

  double get heightinches => sizeInches.height;

  double get diagonalinches => diagonalPx / pixelsPerInch;

  double widthPct(double fraction) => fraction * widthPx;

  double heightPct(double fraction) => fraction * heightPx;

  // required for canonical layouts
  bool get singleScreen => MediaQuery.of(this).hasHinge == null && MediaQuery.of(this).size.width < 1000;

  WindowSizeEnum getLayout(BuildContext context) {
    if (isCompact(context)) {
      return WindowSizeEnum.compact;
    } else if (isMedium(context)) {
      return WindowSizeEnum.medium;
    } else if (isExpanded(context)) {
      return WindowSizeEnum.expanded;
    } else if (isEvel(context)) {
      return WindowSizeEnum.evel;
    } else {
      throw Exception('Bad condition!');
    }
  }

  /// Determines if the screen is in the compact layout.
  ///
  /// Returns `true` if the screen width is less than 600 pixels, `false` otherwise.
  static bool isCompact(BuildContext context) {
    return MediaQuery.of(context).size.width < 600 ? true : false;
  }

  /// Determines if the screen is in the medium layout.
  ///
  /// Returns `true` if the screen width is between 600 and 840 pixels, `false` otherwise.
  static bool isMedium(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return mediaQuery.width >= 600 && mediaQuery.width < 840 ? true : false;
  }

  /// Determines if the screen is in the extended layout.
  ///
  /// Returns `true` if the screen width is greater than 840 pixels, `false` otherwise.
  static bool isExpanded(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return MediaQuery.of(context).size.width >= 840 && mediaQuery.width < 1240 ? true : false;
  }

  static bool isEvel(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1240 ? true : false;
  }
  
  // in MD3 can onical layouts we only need th spacing for 
  // the pane margin
  EdgeInsetsGeometry layoutSpacing(BuildContext context) {
    if (isCompact(context)) {
      return EdgeInsets.all(kCompactScpacing);
    } else if (isMedium(context)){
      return EdgeInsets.all(kMediumSpacing);
    } else if (isExpanded(context)){
      return EdgeInsets.all(kExpandedSpacing);
    } else{
      return EdgeInsets.all(kEvelSpacing);
    }
  }
}
