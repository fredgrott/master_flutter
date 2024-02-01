// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_stateful_shell_route/main_shell_route_data.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
      );

  final GoRouter _router = GoRouter(
    routes: $appRoutes,
    initialLocation: '/home',
  );
}
