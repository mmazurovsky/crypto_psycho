import 'package:crypto_psycho/data/selected_coins.dart';
import 'package:flutter/material.dart';

import '../ui/pages/calculator_page.dart';
import '../ui/pages/chart_page.dart';
import 'navigation_route.dart';

class RouteGenerator {
  static Route generateRoute(RouteSettings routeSettings) {
    final routePath = routeSettings.name!;
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (_) {
        if (routePath == NavigationRoute.chart.path) {
          return const ChartPage();
        } else if (routePath == NavigationRoute.calculator.path) {
          final coidId = routeSettings.arguments as String;
          return CalculatorPage(coinId: coidId);
        } else {
          return const ErrorRoutePage();
        }
      },
    );
  }
}

class ErrorRoutePage extends StatelessWidget {
  const ErrorRoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Navigation error'),
      ),
    );
  }
}
