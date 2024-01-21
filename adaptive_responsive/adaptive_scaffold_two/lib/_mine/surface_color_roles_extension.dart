// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';



/// Material Design 3 breaking change is that surfaces 
/// get color tones thus depreciating the need for elevation
/// overlays.
/// Those being depreciated are:
///      surface tint colors
///      elevation overlays
///      opacity overlays
///      backgroundColor
///      onBackgroundColor
///      surfaceVariant
/// Per issue 115912, see
/// https://github.com/flutter/flutter/issues/115912
///
/// This is meant to be used with my PaneContainer.
///
/// 
///
/// @author Fredrick Allan Grott
extension SurfaceColorRolesExtension on Color {

  getSurface(Color seed, bool darkMode){
    CorePalette p = CorePalette.of(seed.value);
    return Color(p.neutral.get(darkMode ? 6 :98));
  }

   getSurfaceDim(Color seed, bool darkMode) {
     CorePalette p = CorePalette.of(seed.value);
     return Color(p.neutral.get(darkMode ? 6: 87));
   }

   getSurfaceBright(Color seed, bool darkMode) {
     CorePalette p = CorePalette.of(seed.value);
     return Color(p.neutral.get(darkMode ? 24: 98));
   }

   getSurfaceContainerLowest(Color seed, bool darkMode) {
     CorePalette p = CorePalette.of(seed.value);
     return Color(p.neutral.get(darkMode ? 4: 100));
   }

   getSurfaceContainerLow(Color seed, bool darkMode) {
     CorePalette p = CorePalette.of(seed.value);
     return Color(p.neutral.get(darkMode ? 10: 96));
   }

   getSurfaceContainer(Color seed, bool darkMode) {
     CorePalette p = CorePalette.of(seed.value);
     return Color(p.neutral.get(darkMode ? 12: 94));
   }

   getSurfaceContainerHigh(Color seed, bool darkMode) {
     CorePalette p = CorePalette.of(seed.value);
     return Color(p.neutral.get(darkMode ? 17: 92));
   }

   getSurfaceContainerHighest(Color seed, bool darkMode) {
     CorePalette p = CorePalette.of(seed.value);
     return Color(p.neutral.get(darkMode ? 22 : 90));
   }

}