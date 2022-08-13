enum NavigationRoute { chart, calculator }

extension NavigationExtentions on NavigationRoute {
  static const Map<NavigationRoute, String> _pathMap = {
    //INFO: home
    NavigationRoute.chart: 'chart',
    NavigationRoute.calculator: 'calculator',
  };

  String get path => _pathMap[this]!;
}
