// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_md3_demo_one/src/bottom_app_bars.dart';
import 'package:custom_md3_demo_one/src/component_group_decoration.dart';
import 'package:custom_md3_demo_one/src/navigation_bars.dart';
import 'package:custom_md3_demo_one/src/navigation_rails.dart';
import 'package:custom_md3_demo_one/src/navuigation_drawers.dart';
import 'package:custom_md3_demo_one/src/search_anchors.dart';
import 'package:custom_md3_demo_one/src/tabs.dart';
import 'package:custom_md3_demo_one/src/top_app_bars.dart';
import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return ComponentGroupDecoration(label: 'Navigation', children: [
      const BottomAppBars(),
      const NavigationBars(
        selectedIndex: 0,
        isExampleBar: true,
      ),
      NavigationDrawers(scaffoldKey: scaffoldKey),
      const NavigationRails(),
      const Tabs(),
      const SearchAnchors(),
      const TopAppBars(),
    ]);
  }
}
