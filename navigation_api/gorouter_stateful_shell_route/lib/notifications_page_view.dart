// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gorouter_stateful_shell_route/notifications_page_section.dart';
import 'package:gorouter_stateful_shell_route/notifications_sub_page_view.dart';

class NotificationsPageView extends StatelessWidget {
  const NotificationsPageView({
    super.key,
    required this.section,
  });

  final NotificationsPageSection section;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: NotificationsPageSection.values.indexOf(section),
      child: const Column(
        children: <Widget>[
          TabBar(
            tabs: <Tab>[
              Tab(
                child: Text(
                  'Latest',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              Tab(
                child: Text(
                  'Old',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              Tab(
                child: Text(
                  'Archive',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                NotificationsSubPageView(
                  label: 'Latest notifications',
                ),
                NotificationsSubPageView(
                  label: 'Old notifications',
                ),
                NotificationsSubPageView(
                  label: 'Archived notifications',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
