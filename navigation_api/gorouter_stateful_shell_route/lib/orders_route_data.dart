// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_stateful_shell_route/orders_page_view.dart';

class OrdersRouteData extends GoRouteData {
  const OrdersRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OrdersPageView(label: 'Orders page');
  }
}
