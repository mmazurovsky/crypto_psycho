import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants/styling.dart';

class CustomLoadingProgressIndicator extends StatelessWidget {
  final Color color;
  final double size;
  const CustomLoadingProgressIndicator({
    Key? key,
    required this.color,
    this.size = 27,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      child: CircularProgressIndicator(
        strokeWidth: 3,
        color: color,
      ),
    );
  }
}

class LoadingContainer extends StatelessWidget {
  const LoadingContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: CustomColors.backgroundColor,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            CustomLoadingProgressIndicator(
              color: CustomColors.loadingIndicatorColor,
            ),
          ],
        ),
      ),
    );
  }
}
