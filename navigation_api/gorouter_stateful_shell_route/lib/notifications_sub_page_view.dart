// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.




import 'package:flutter/material.dart';

class NotificationsSubPageView extends StatelessWidget {
  const NotificationsSubPageView({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(label),
    );
  }
}