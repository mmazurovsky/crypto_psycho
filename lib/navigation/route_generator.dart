import 'package:flutter/material.dart';

import '../data/chart_model.dart';
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
          final chartEntity = routeSettings.arguments as ChartEntity;
          return CalculatorPage(chartEntity: chartEntity);
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
