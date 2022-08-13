part of 'chart_cubit.dart';

@freezed
class ChartState with _$ChartState {
  const factory ChartState.loading() = ChartLoadingState;
  const factory ChartState.refreshing() = ChartRefreshingState;
  const factory ChartState.loaded(List<ChartEntity> chart) = ChartLoadedState;
}
