import 'package:crypto_psycho/navigation/navigation_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../constants/styling.dart';
import '../../data/chart_model.dart';
import '../../state/cubit/chart_cubit.dart';
import '../widgets/empty_list_placeholder.dart';
import '../widgets/loading.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  final RefreshController _refreshController = RefreshController();

  @override
  void initState() {
    super.initState();
    BlocProvider.of<ChartCubit>(context).loadChart();
  }

  void _onRefresh() {
    context.read<ChartCubit>().refreshChart();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ChartCubit, ChartState>(
        listener: (context, state) {
          if (state is ChartLoadedState) {
            _refreshController.refreshCompleted();
          }
        },
        builder: (context, state) {
          if (state is ChartLoadedState) {
            return ChartContent(
              chart: state.chart,
              refreshController: _refreshController,
              onRefresh: _onRefresh,
            );
          } else {
            return const LoadingContainer();
          }
        },
      ),
    );
  }
}

class ChartContent extends StatelessWidget {
  final RefreshController refreshController;
  final VoidCallback onRefresh;
  final List<ChartEntity> chart;
  const ChartContent({
    Key? key,
    required this.refreshController,
    required this.onRefresh,
    required this.chart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SmartRefresher(
        enablePullDown: true,
        controller: refreshController,
        onRefresh: onRefresh,
        child: chart.isEmpty
            ? const EmptyListPlaceholder()
            : ListView.separated(
                itemBuilder: (_, i) {
                  return ChartEntityCard(
                    chartEntity: chart[i],
                  );
                },
                separatorBuilder: (_, i) => const SizedBox(height: 12),
                itemCount: chart.length,
              ),
      ),
    );
  }
}

class ChartEntityCard extends StatelessWidget {
  final ChartEntity chartEntity;
  const ChartEntityCard({
    Key? key,
    required this.chartEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).pushNamed(
        NavigationRoute.calculator.path,
        arguments: chartEntity.id,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      leading: const Icon(Icons.abc),
      title: Row(
        children: [
          Text(
            chartEntity.name,
            style: CustomTextStyles.chartEntityTitle,
          ),
          const SizedBox(width: 10),
          Text(
            chartEntity.priceInUsd.toString(),
            style: CustomTextStyles.chartEntityTitle,
          ),
        ],
      ),
      trailing: const Icon(
        Icons.arrow_forward,
        size: 18,
        color: CustomColors.greyColor,
      ),
    );
  }
}
