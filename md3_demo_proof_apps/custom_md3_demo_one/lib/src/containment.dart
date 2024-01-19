// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_md3_demo_one/src/bottom_shet_section.dart';
import 'package:custom_md3_demo_one/src/cards.dart';
import 'package:custom_md3_demo_one/src/component_group_decoration.dart';
import 'package:custom_md3_demo_one/src/dialogs.dart';
import 'package:custom_md3_demo_one/src/dividers.dart';
import 'package:flutter/material.dart';

class Containment extends StatelessWidget {
  const Containment({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(label: 'Containment', children: [
      BottomSheetSection(),
      Cards(),
      Dialogs(),
      Dividers(),
      // TODO: Add Lists, https://github.com/flutter/flutter/issues/114006
      // TODO: Add Side sheets, https://github.com/flutter/flutter/issues/119328
    ]);
  }
}
