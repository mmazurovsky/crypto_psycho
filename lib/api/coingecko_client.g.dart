// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coingecko_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _CoinGeckoClient implements CoinGeckoClient {
  _CoinGeckoClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.coingecko.com/api/v3';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ChartModel> getChart({required ids, fiatCurrency = 'usd'}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ids': ids,
      r'vs_currencies': fiatCurrency
    };
    final _headers = <String, dynamic>{
      r'Accept': 'application/json',
      r'Content-Type': 'application/json'
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChartModel>(Options(
                method: 'GET',
                headers: _headers,
                extra: _extra,
                contentType: 'application/json')
            .compose(_dio.options, '/simple/price',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChartModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
