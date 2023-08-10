// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

/// The enum for scaffold tab.
enum ScaffoldTab {
  /// The books tab.
  pageOne,

  /// The authors tab.
  pageTwo,

  /// The settings tab.
  settings
}

/// The scaffold
class NestedNavScafold extends StatelessWidget {
  /// Creates a [NestedNavScafold].
  const NestedNavScafold({
    required this.selectedTab,
    required this.child,
    super.key,
  });

  /// Which tab of the scaffold to display.
  final ScaffoldTab selectedTab;

  /// The scaffold body.
  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: AdaptiveNavigationScaffold(
      selectedIndex: selectedTab.index,
      body: child,
      onDestinationSelected: (int idx) {
        switch (ScaffoldTab.values[idx]) {
          case ScaffoldTab.pageOne:
            context.go('/third_route');
            break;
          case ScaffoldTab.pageTwo:
            context.go('/second_route');
            break;
          // case ScaffoldTab.settings:
          //   context.go('/settings');
          //   break;
        }
      },
      destinations: const <AdaptiveScaffoldDestination>[
        AdaptiveScaffoldDestination(
          title: 'Books',
          icon: Icons.book,
        ),
        AdaptiveScaffoldDestination(
          title: 'Authors',
          icon: Icons.person,
        ),
        // AdaptiveScaffoldDestination(
        //   title: 'Settings',
        //   icon: Icons.settings,
        // ),
      ],
    ),
  );
}
