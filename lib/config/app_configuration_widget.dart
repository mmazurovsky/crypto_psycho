import 'package:crypto_psycho/dependency_injection/injectable_config.dart';
import 'package:crypto_psycho/state/cubit/chart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../navigation/custom_navigator.dart';
import '../navigation/navigator_tab.dart';

class AppConfigurationWidget extends StatelessWidget {
  const AppConfigurationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => dependencyContainer<ChartCubit>(),
      child: RefreshConfiguration(
        child: const CustomNavigator(
          tab: NavigationTab.chart,
        ),
      ),
    );
  }
}
