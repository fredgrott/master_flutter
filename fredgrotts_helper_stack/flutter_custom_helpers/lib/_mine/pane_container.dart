// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

/// The [PaneContainerWidget] is a wrapper widget for widgets that are inserted inside the
/// [PageLayout]. The container allows you to select the surface background color, container
/// dimensions, and border radius.
///
/// This is also the sidesheet which contains
/// Modal and Standard Sidesheets which happen to be containers
/// for drawers.
///
/// @author Fredrick Allan Grott
class PaneContainer extends StatelessWidget {
  /// The child widget to be wrapped with the container.
  final Widget child;

  /// The color of the surface of the container.
  /// use the SurfaceColorRolesExtension to generate
  /// the color role from seed color and Brightness
  final Color surfaceColor;

  /// The padding for the container's child widget. Defaults to [EdgeInsets.zero].
  final EdgeInsetsGeometry padding;

  

  /// The width of the container. Defaults to [double.infinity].
  final double width;

  /// The height of the container. Defaults to [double.infinity].
  final double height;

  /// The top border radius for the container. Defaults to 12.
  final double topBorderRadius;

  /// The bottom border radius for the container. Defaults to 12.
  final double bottomBorderRadius;

  /// The [PaneContainerWidget] is a wrapper widget for widgets that are inserted inside the
  /// [PageLayout]. The container allows you to select the surface background color, container
  /// dimensions, and border radius.
  ///
  /// Example of usage:
  ///
  /// ```dart
  /// PaneContainer(
  ///   child: YourWidget(),
  ///   surfaceColor: yourcolor,
  ///   padding: EdgeInsets.all(16),
  ///   margin: EdgeInstes.all(16),
  /// )
  /// ```
  const PaneContainer({
    super.key,
    required this.child,
    required this.surfaceColor,
    this.padding = EdgeInsets.zero,
    
    this.height = double.infinity,
    this.width = double.infinity,
    this.topBorderRadius = 12,
    this.bottomBorderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: padding,
      child: Material(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(topBorderRadius),
          bottom: Radius.circular(bottomBorderRadius),
        ),
        color: surfaceColor,
        child: SizedBox(
          width: width,
          height: height,
          child: child,
        ),
      ),
    
    );

    
  }
}
