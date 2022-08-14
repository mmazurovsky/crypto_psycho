import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../api/coingecko_client.dart';
import '../../data/chart_model.dart';
import '../../data/selected_coins.dart';
import '../../util/coin_name_helper.dart';

part 'chart_cubit.freezed.dart';
part 'chart_state.dart';

@lazySingleton
class ChartCubit extends Cubit<ChartState> {
  final CoinGeckoClient _coinGeckoClient;
  ChartCubit(
    this._coinGeckoClient,
  ) : super(const ChartState.loading());

  void loadChart() {
    emit(const ChartState.loading());
    _loadChart();
  }

  void refreshChart() {
    emit(const ChartState.refreshing());
    _loadChart();
  }

  void _loadChart() async {
    final coinIds = CoinNameHelper.getListOfCoinIds([
      SelectedCoin.bitcoin,
      SelectedCoin.ethereum,
      SelectedCoin.polkadot,
      SelectedCoin.solana,
      SelectedCoin.cardano,
    ]);

    /* INFO: repo with internet connection check and response check  
    could be added here but omitted for simplicity */
    final chartRaw = await _coinGeckoClient.getChart(
      ids: coinIds,
      fiatCurrency: SelectedFiat.usd.name,
    );
    final chart = chartRaw.convertToListOfChartEntities();
    /* INFO: error handling, logging and displaying  
    could be added here but omitted for simplicity */
    emit(ChartState.loaded(chart));
  }
}
