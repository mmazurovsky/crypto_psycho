import 'package:crypto_psycho/constants/styling.dart';
import 'package:crypto_psycho/data/selected_coins.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  final String coinId;
  const CalculatorPage({
    Key? key,
    required this.coinId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${coinId.toUpperCase()} USD CALCULATOR',
          style: CustomTextStyles.appBarTitle,
        ),
      ),
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
