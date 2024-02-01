

import 'dart:ui';
import 'package:flutter/widgets.dart';

/// Extension method that helps with working with the hinge specifically.
/// [Dual Screen TwoPane] has a pane priority 
/// Setting to diaplay both panes if not foldable and thus
/// we use this to set such things up in singleScreen detection:
///
/// ```dart
///  bool singleScreen = MediaQuery.of(context).hasHinge == null && MediaQuery.of(context).size.width < 1000;
/// ```
extension MediaQueryHinge on MediaQueryData {
  DisplayFeature? get hasHinge {
    for (final DisplayFeature e in displayFeatures) {
      if (e.type == DisplayFeatureType.hinge) {
        return e;
      }
    }
    return null;
  }
}