// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_md3_demo_one/src/app_actions.dart';
import 'package:custom_md3_demo_one/src/build_slivers.dart';
import 'package:custom_md3_demo_one/src/communication.dart';
import 'package:custom_md3_demo_one/src/containment.dart';
import 'package:custom_md3_demo_one/src/navigation.dart';
import 'package:custom_md3_demo_one/src/selection.dart';
import 'package:custom_md3_demo_one/src/text_inputs.dart';
import 'package:flutter/material.dart';

class FirstComponentList extends StatelessWidget {
  const FirstComponentList({
    super.key,
    required this.showNavBottomBar,
    required this.scaffoldKey,
    required this.showSecondList,
  });

  final bool showNavBottomBar;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final bool showSecondList;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      const AppActions(),
      colDivider,
      const Communication(),
      colDivider,
      const Containment(),
      if (!showSecondList) ...[
        colDivider,
        Navigation(scaffoldKey: scaffoldKey),
        colDivider,
        const Selection(),
        colDivider,
        const TextInputs()
      ],
    ];
    List<double?> heights = List.filled(children.length, null);

    // Fully traverse this list before moving on.
    return FocusTraversalGroup(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: showSecondList ? const EdgeInsetsDirectional.only(end: smallSpacing) : EdgeInsets.zero,
            sliver: SliverList(
              delegate: BuildSlivers(
                heights: heights,
                builder: (context, index) {
                  return _CacheHeight(
                    heights: heights,
                    index: index,
                    child: children[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
