import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../constants/styling.dart';
import '../../data/chart_model.dart';
import '../../navigation/navigation_route.dart';
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
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CryptoPsycho',
          style: CustomTextStyles.appBarTitle,
        ),
      ),
      body: BlocConsumer<ChartCubit, ChartState>(
        listener: (context, state) {
          if (state is ChartLoadedState) {
            _refreshController.refreshCompleted();
          }
        },
        buildWhen: (previous, current) => current is! ChartRefreshingState,
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
  const ChartContent({
    Key? key,
    required this.refreshController,
    required this.onRefresh,
    required this.chart,
  }) : super(key: key);

  final List<ChartEntity> chart;
  final VoidCallback onRefresh;
  final RefreshController refreshController;

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
                padding: const EdgeInsets.symmetric(vertical: 15),
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
  const ChartEntityCard({
    Key? key,
    required this.chartEntity,
  }) : super(key: key);

  final ChartEntity chartEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: CustomColors.lightGreyColor,
        onTap: () => Navigator.of(context).pushNamed(
          NavigationRoute.calculator.path,
          arguments: chartEntity,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        title: Row(
          children: [
            SizedBox(
              width: 120,
              child: Text(
                chartEntity.name,
                style: CustomTextStyles.chartEntityTitle,
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Text(
                chartEntity.priceInUsd.toString(),
                style: CustomTextStyles.chartEntityTitle,
              ),
            ),
          ],
        ),
        trailing: const Icon(
          Icons.arrow_forward,
          size: 18,
          color: CustomColors.blueColor,
        ),
      ),
    );
  }
}
