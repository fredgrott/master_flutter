// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_stateful_shell_route/home_route_data.dart';
import 'package:gorouter_stateful_shell_route/home_shell_branch_data.dart';
import 'package:gorouter_stateful_shell_route/main_page_view.dart';
import 'package:gorouter_stateful_shell_route/notification_shell_branch_data.dart';
import 'package:gorouter_stateful_shell_route/notifications_page_section.dart';
import 'package:gorouter_stateful_shell_route/notifications_route_data.dart';
import 'package:gorouter_stateful_shell_route/order_shell_branch_data.dart';
import 'package:gorouter_stateful_shell_route/orders_route_data.dart';

part 'main_shell_route_data.g.dart';

@TypedStatefulShellRoute<MainShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomeShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<HomeRouteData>(
          path: '/home',
        ),
      ],
    ),
    TypedStatefulShellBranch<NotificationsShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<NotificationsRouteData>(
          path: '/notifications/:section',
        ),
      ],
    ),
    TypedStatefulShellBranch<OrdersShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<OrdersRouteData>(
          path: '/orders',
        ),
      ],
    ),
  ],
)
class MainShellRouteData extends StatefulShellRouteData {
  const MainShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return MainPageView(
      navigationShell: navigationShell,
    );
  }
}
