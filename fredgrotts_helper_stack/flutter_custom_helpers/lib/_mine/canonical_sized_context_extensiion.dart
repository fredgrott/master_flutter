// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from GSkinner flutter sizeed context
// Under MIT License 2019

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_custom_helpers/_mine/platform_detection_extension.dart';

/// Helper methods for Canonical Screen Layouts
///
/// @author Fredrick Allan Grott
extension CanonicalSizedContextExtension on BuildContext {

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
}
