// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

abstract class WidgetView<T1, T2> extends StatelessWidget {
  final T2 state;
  T1 get widget => (state as State).widget as T1;

  const WidgetView(this.state, {super.key});

  @override
  Widget build(BuildContext context);
}
