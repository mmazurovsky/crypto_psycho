import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../constants/other.dart';
import '../data/chart_model.dart';

part 'coingecko_client.g.dart';

@RestApi(baseUrl: "https://api.coingecko.com/api/v3")
@lazySingleton
abstract class CoinGeckoClient {
  @factoryMethod
  factory CoinGeckoClient(
    Dio dio,
  ) = _CoinGeckoClient;

  @GET("/simple/price")
  @Headers(ClientConstants.jsonHeaders)
  Future<ChartModel> getChart({
    @Query('ids') required String ids,
    @Query('vs_currencies') required String fiatCurrency,
  });
}
