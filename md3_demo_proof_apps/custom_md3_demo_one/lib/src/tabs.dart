// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_md3_demo_one/src/component_decoration.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Tabs',
      tooltipMessage: 'Use TabBar',
      child: SizedBox(
        height: 80,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              controller: _tabController,
              tabs: const <Widget>[
                Tab(
                  icon: Icon(Icons.videocam_outlined),
                  text: 'Video',
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                ),
                Tab(
                  icon: Icon(Icons.photo_outlined),
                  text: 'Photos',
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                ),
                Tab(
                  icon: Icon(Icons.audiotrack_sharp),
                  text: 'Audio',
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                ),
              ],
            ),
            // TODO: Showcase secondary tab bar https://github.com/flutter/flutter/issues/111962
          ),
        ),
      ),
    );
  }
}
