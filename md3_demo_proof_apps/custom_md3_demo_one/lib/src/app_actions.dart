// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_md3_demo_one/src/buttons.dart';
import 'package:custom_md3_demo_one/src/component_group_decoration.dart';
import 'package:custom_md3_demo_one/src/floating_action_buttons.dart';
import 'package:custom_md3_demo_one/src/icon_toggle_buttons.dart';
import 'package:custom_md3_demo_one/src/segmented_buttons.dart';
import 'package:flutter/material.dart';

class AppActions extends StatelessWidget {
  const AppActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(label: 'Actions', children: <Widget>[
      Buttons(),
      FloatingActionButtons(),
      IconToggleButtons(),
      SegmentedButtons(),
    ]);
  }
}
