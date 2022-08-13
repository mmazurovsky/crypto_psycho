import 'dart:convert';

import 'package:crypto_psycho/data/selected_coins.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_model.g.dart';
part 'chart_model.freezed.dart';

@freezed
class ChartModel with _$ChartModel {
  const ChartModel._();
  const factory ChartModel({
    required ChartPriceModel bitcoin,
    required ChartPriceModel solana,
    required ChartPriceModel polkadot,
    required ChartPriceModel cardano,
    required ChartPriceModel ethereum,
  }) = _ChartModel;

  factory ChartModel.fromJson(Map<String, Object?> json) =>
      _$ChartModelFromJson(json);

  List<ChartEntity> convertToListOfChartEntities() {
    final chartEntityBitcoin = ChartEntity(
      id: SelectedCoin.bitcoin.id,
      name: SelectedCoin.bitcoin.name,
      priceInUsd: this.bitcoin.usd,
    );
    final chartEntityEthereum = ChartEntity(
      id: SelectedCoin.ethereum.id,
      name: SelectedCoin.ethereum.name,
      priceInUsd: this.ethereum.usd,
    );
    final chartEntitySolana = ChartEntity(
      id: SelectedCoin.solana.id,
      name: SelectedCoin.solana.name,
      priceInUsd: this.solana.usd,
    );
    final chartEntityPolkadot = ChartEntity(
      id: SelectedCoin.polkadot.id,
      name: SelectedCoin.polkadot.name,
      priceInUsd: this.polkadot.usd,
    );
    final chartEntityCardano = ChartEntity(
      id: SelectedCoin.cardano.id,
      name: SelectedCoin.cardano.name,
      priceInUsd: this.cardano.usd,
    );

    return [
      chartEntityBitcoin,
      chartEntityEthereum,
      chartEntitySolana,
      chartEntityPolkadot,
      chartEntityCardano,
    ];
  }
}

@freezed
class ChartPriceModel with _$ChartPriceModel {
  const ChartPriceModel._();
  const factory ChartPriceModel({
    required double usd,
  }) = _ChartPriceModel;

  factory ChartPriceModel.fromJson(Map<String, Object?> json) =>
      _$ChartPriceModelFromJson(json);
}

@freezed
class ChartEntity with _$ChartEntity {
  const ChartEntity._();
  const factory ChartEntity({
    required String id,
    required String name,
    required double priceInUsd,
  }) = _ChartEntity;

  factory ChartEntity.fromJson(Map<String, Object?> json) =>
      _$ChartEntityFromJson(json);
}
