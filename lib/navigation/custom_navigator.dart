import 'package:flutter/material.dart';

import 'navigation_route.dart';
import 'navigator_tab.dart';
import 'route_generator.dart';

class CustomNavigator extends StatelessWidget {
  final NavigationTab tab;
  const CustomNavigator({
    Key? key,
    required this.tab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: tab.tabNavigationKey,
      initialRoute: tab.tabInitialNavigationRoute.path,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
