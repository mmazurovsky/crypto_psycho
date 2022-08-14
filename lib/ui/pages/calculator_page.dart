import 'package:flutter/material.dart';

import '../../constants/styling.dart';
import '../../data/chart_model.dart';
import '../../util/extensions.dart';

class CalculatorPage extends StatefulWidget {
  final ChartEntity chartEntity;
  const CalculatorPage({
    Key? key,
    required this.chartEntity,
  }) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final _usdTextController = TextEditingController();
  final _coinTextController = TextEditingController();
  late final String _coinName;
  String _coinValueString = '1';
  late String _usdValueString;

  @override
  void initState() {
    super.initState();
    _coinName = widget.chartEntity.name.toCapitalized();
    _usdValueString = widget.chartEntity.priceInUsd.toString();
    _coinTextController.text = _coinValueString;
    _usdTextController.text = _usdValueString;

    _coinTextController.addListener(
      _coinTextControllerListener,
    );

    _usdTextController.addListener(
      _usdTextControllerListener,
    );
  }

  void _coinTextControllerListener() {
    final coinNewValueRaw = _coinTextController.text;
    if (coinNewValueRaw != _coinValueString) {
      _coinValueString = coinNewValueRaw;
      _usdValueString = '';
      final coinNewValue = double.tryParse(coinNewValueRaw);
      if (coinNewValue != null && coinNewValue >= 0) {
        final usdNewValue = coinNewValue * widget.chartEntity.priceInUsd;
        _usdValueString = usdNewValue.toString();
      }
      setState(() {
        _usdTextController.text = _usdValueString;
      });
    }
  }

  void _usdTextControllerListener() {
    final usdNewValueRaw = _usdTextController.text;
    if (usdNewValueRaw != _usdValueString) {
      _usdValueString = usdNewValueRaw;
      _coinValueString = '';
      final usdNewValue = double.tryParse(usdNewValueRaw);
      if (usdNewValue != null && usdNewValue >= 0) {
        final coinNewValue = usdNewValue / widget.chartEntity.priceInUsd;
        _coinValueString = coinNewValue.toString();
      }
      setState(() {
        _coinTextController.text = _coinValueString;
      });
    }
  }

  @override
  void dispose() {
    _usdTextController.dispose();
    _coinTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$_coinName Calculator',
          style: CustomTextStyles.appBarTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              title: _coinName,
              controller: _coinTextController,
            ),
            const SizedBox(height: 12),
            CustomTextField(
              title: 'USD',
              controller: _usdTextController,
            ),
            const SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const CustomTextField({
    Key? key,
    required this.title,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: CustomTextStyles.chartEntityTitle,
          ),
          const SizedBox(height: 5),
          TextField(
            keyboardType: TextInputType.number,
            controller: controller,
          ),
        ],
      ),
    );
  }
}
