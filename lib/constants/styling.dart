import 'package:flutter/material.dart';

class CustomColors {
  static const greyColor = Colors.grey;
  static const blueColor = Colors.blue;
  static const whiteColor = Colors.white;
  static const blackColor = Colors.black;
  static const pullToRefreshArrowColor = greyColor;
  static const loadingIndicatorColor = blueColor;
  static const backgroundColor = whiteColor;
  static const textColor = blackColor;
}

class CustomTextStyles {
  static const emptyListMessage = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: CustomColors.textColor,
  );
  static const chartEntityTitle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: CustomColors.textColor,
  );
  static const appBarTitle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: CustomColors.textColor,
  );
}
