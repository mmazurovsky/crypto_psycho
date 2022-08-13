import 'package:flutter/material.dart';

import 'navigation_route.dart';

enum NavigationTab { chart }

extension TabExtension on NavigationTab {
  static const _tabRouteMap = {
    NavigationTab.chart: NavigationRoute.chart,
  };

  static final _navigationKey = {
    NavigationTab.chart: GlobalKey<NavigatorState>(),
  };

  NavigationRoute get tabInitialNavigationRoute => _tabRouteMap[this]!;
  GlobalKey<NavigatorState> get tabNavigationKey => _navigationKey[this]!;
}
