// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

/// Per issue 137683 Md3 gets fixed accetn colors
/// see https://github.com/flutter/flutter/issues/137683
///
/// Also see https://m3.material.io/styles/color/roles
///
/// @author Fredrick Allan Grott
extension FixedAccentColorRolesExtension on Color {
  getPrimaryFixed(Color seed) {
    CorePalette p = CorePalette.of(seed.value);
    return Color(p.primary.get(90));
  }

  getOnPrimaryFixed(Color seed) {
    CorePalette p = CorePalette.of(seed.value);
    return Color(p.primary.get(10));
  }

  getPrimaryFixedDim(Color seed) {
    CorePalette p = CorePalette.of(seed.value);
    return Color(p.primary.get(80));
  }

  getOnPrimaryFixedDim(Color seed) {
    CorePalette p = CorePalette.of(seed.value);
    return Color(p.primary.get(30));
  }

  getSecondaryFixed(Color seed) {
    CorePalette p = CorePalette.of(seed.value);
    return Color(p.secondary.get(90));
  }

  getOnSecondaryFixed(Color seed) {
    CorePalette p = CorePalette.of(seed.value);
    return Color(p.secondary.get(10));
  }

  getSecondaryFixedDim(Color seed) {
    CorePalette p = CorePalette.of(seed.value);
    return Color(p.secondary.get(80));
  }

  getOnSecondaryFixedDim(Color seed) {
    CorePalette p = CorePalette.of(seed.value);
    return Color(p.secondary.get(30));
  }

  getTertiaryFixed(Color seed) {
    CorePalette p = CorePalette.of(seed.value);
    return Color(p.tertiary.get(90));
  }

  getOnTertiaryFixed(Color seed) {
    CorePalette p = CorePalette.of(seed.value);
    return Color(p.tertiary.get(10));
  }

  getTertiaryFixedDim(Color seed) {
    CorePalette p = CorePalette.of(seed.value);
    return Color(p.tertiary.get(80));
  }

  getOnTertiaryFixedDim(Color seed) {
    CorePalette p = CorePalette.of(seed.value);
    return Color(p.tertiary.get(30));
  }
}
