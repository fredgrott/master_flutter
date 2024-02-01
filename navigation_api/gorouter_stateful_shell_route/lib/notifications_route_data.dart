// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_stateful_shell_route/notifications_page_section.dart';
import 'package:gorouter_stateful_shell_route/notifications_page_view.dart';

class NotificationsRouteData extends GoRouteData {
  const NotificationsRouteData({
    required this.section,
  });

  final NotificationsPageSection section;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return NotificationsPageView(
      section: section,
    );
  }
}
