// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_md3_demo_one/src/checkboxes.dart';
import 'package:custom_md3_demo_one/src/cips.dart';
import 'package:custom_md3_demo_one/src/component_group_decoration.dart';
import 'package:custom_md3_demo_one/src/date_pickers.dart';
import 'package:custom_md3_demo_one/src/menus.dart';
import 'package:custom_md3_demo_one/src/radios.dart';
import 'package:custom_md3_demo_one/src/sliders.dart';
import 'package:custom_md3_demo_one/src/switches.dart';
import 'package:custom_md3_demo_one/src/time_pickers.dart';
import 'package:flutter/material.dart';

class Selection extends StatelessWidget {
  const Selection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(label: 'Selection', children: [
      Checkboxes(),
      Chips(),
      DatePickers(),
      Menus(),
      Radios(),
      Sliders(),
      Switches(),
      TimePickers(),
    ]);
  }
}
