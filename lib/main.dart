import 'package:flutter/material.dart';

import 'config/app_configuration_widget.dart';
import 'dependency_injection/injectable_config.dart';

Future<void> main() async {
  await initDependencies();
  runApp(const CryptoPsychoApp());
}

class CryptoPsychoApp extends StatelessWidget {
  const CryptoPsychoApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoPsycho',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppConfigurationWidget(),
    );
  }
}
