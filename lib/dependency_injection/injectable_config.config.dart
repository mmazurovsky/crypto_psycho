// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../api/coingecko_client.dart' as _i4;
import '../state/cubit/chart_cubit.dart' as _i5;
import 'modules.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyModules = _$ThirdPartyModules();
  gh.lazySingleton<_i3.Dio>(() => thirdPartyModules.dio);
  gh.lazySingleton<_i4.CoinGeckoClient>(
      () => _i4.CoinGeckoClient(get<_i3.Dio>()));
  gh.lazySingleton<_i5.ChartCubit>(
      () => _i5.ChartCubit(get<_i4.CoinGeckoClient>()));
  return get;
}

class _$ThirdPartyModules extends _i6.ThirdPartyModules {}
