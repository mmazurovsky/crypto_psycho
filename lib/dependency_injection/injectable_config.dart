import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable_config.config.dart';

GetIt dependencyContainer = GetIt.instance;

@injectableInit
Future<void> initDependencies() async {
  await $initGetIt(
    dependencyContainer,
  );
}
