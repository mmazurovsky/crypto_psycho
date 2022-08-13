// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChartModel _$$_ChartModelFromJson(Map<String, dynamic> json) =>
    _$_ChartModel(
      bitcoin:
          ChartPriceModel.fromJson(json['bitcoin'] as Map<String, dynamic>),
      solana: ChartPriceModel.fromJson(json['solana'] as Map<String, dynamic>),
      polkadot:
          ChartPriceModel.fromJson(json['polkadot'] as Map<String, dynamic>),
      cardano:
          ChartPriceModel.fromJson(json['cardano'] as Map<String, dynamic>),
      ethereum:
          ChartPriceModel.fromJson(json['ethereum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChartModelToJson(_$_ChartModel instance) =>
    <String, dynamic>{
      'bitcoin': instance.bitcoin,
      'solana': instance.solana,
      'polkadot': instance.polkadot,
      'cardano': instance.cardano,
      'ethereum': instance.ethereum,
    };

_$_ChartPriceModel _$$_ChartPriceModelFromJson(Map<String, dynamic> json) =>
    _$_ChartPriceModel(
      usd: (json['usd'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ChartPriceModelToJson(_$_ChartPriceModel instance) =>
    <String, dynamic>{
      'usd': instance.usd,
    };

_$_ChartEntity _$$_ChartEntityFromJson(Map<String, dynamic> json) =>
    _$_ChartEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      priceInUsd: (json['priceInUsd'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ChartEntityToJson(_$_ChartEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'priceInUsd': instance.priceInUsd,
    };
