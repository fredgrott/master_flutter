// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

/// Helper class for defining breakpoints in a responsive UI design.
class Breakpoints {
  /// Determines the current layout based on the width of the screen.
  ///
  /// Returns a [LayoutEnum] value that corresponds to the current layout.
  ///
  /// Throws an [Exception] if none of the breakpoints match the current width.
  static LayoutEnum getLayout(BuildContext context) {
    if (isCompact(context)) {
      return LayoutEnum.compact;
    } else if (isMedium(context)) {
      return LayoutEnum.medium;
    } else if (isExpanded(context)) {
      return LayoutEnum.expanded;
    } else if (isEvel(context)) {
      return LayoutEnum.evel;
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
}

/// Enum representing the possible layouts in the responsive UI design.
enum LayoutEnum {
  /// The compact layout, for screens with width less than 600 pixels.
  compact(0, 600),

  /// The medium layout, for screens with width between 600 and 840 pixels.
  medium(600, 840),

  /// The extended layout, for screens with width greater than 840 pixels.
  expanded(840, 1239),

  /// per this https://m3.material.io/components/navigation-drawer/guidelines
  /// there is actually one more virtual window class size
  /// as there is no nav rail for desktop but instead standard nav drawers
  evel(1240, double.infinity);

  /// The beginning of the range of screen widths for this layout.
  final double? begin;

  /// The end of the range of screen widths for this layout.
  final double? end;

  /// Creates a new [LayoutEnum] with the given [begin] and [end] values.
  const LayoutEnum(this.begin, this.end);
}
