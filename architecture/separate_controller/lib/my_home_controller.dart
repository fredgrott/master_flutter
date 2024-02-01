// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:separate_controller/my_home_component.dart';
import 'package:separate_controller/my_home_component_view.dart';

class MyHomeController extends State<MyHomeComponent> {
  int counter = 0;

  void handleCounterPressed() => setState(() => counter += 1);

  @override
  Widget build(BuildContext context) => MyHomeComponentView(this);
}
