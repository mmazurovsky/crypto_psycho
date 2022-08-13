import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ThirdPartyModules {
  // @Named('authorize')
  @lazySingleton
  @factoryMethod
  Dio get dio => Dio();
}
