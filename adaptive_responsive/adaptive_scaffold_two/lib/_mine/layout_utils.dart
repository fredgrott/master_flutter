// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_custom_helpers/_mine/breakpoints.dart';

class LayoutUtils {
  /// Horizontal margin for compact layout
  double get compactLayoutMargin => 16.0;

  /// Horizontal margin for medium layout
  double get mediumLayoutMargin => 24.0;

  /// Horizontal margin for extended layout
  double get exdendedLayoutMargin => 24.0;

  double get evelLayoutMargin => 32;

  /// Spacing between panes
  double get paneSpacing => 24.0;

  /// Returns the EdgeInsetsGeometry for the given vertical and horizontal padding based on the current breakpoint.
  ///
  /// Throws an UnimplementedError if the current breakpoint is not supported.
  EdgeInsetsGeometry layoutSpacing(double verticalPadding, BuildContext context) {
    if (Breakpoints.isCompact(context)) {
      return EdgeInsets.symmetric(
        horizontal: compactLayoutMargin,
        vertical: verticalPadding,
      );
    } else if (Breakpoints.isMedium(context)) {
      return EdgeInsets.symmetric(
        horizontal: mediumLayoutMargin,
        vertical: verticalPadding,
      );
    } else if (Breakpoints.isExpanded(context)) {
      return EdgeInsets.symmetric(
        horizontal: exdendedLayoutMargin,
        vertical: verticalPadding,
      );
    } else {
      return EdgeInsets.symmetric(
        horizontal: evelLayoutMargin,
        vertical: verticalPadding,
      );
    }
  }
}
