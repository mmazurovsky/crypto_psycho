import 'package:flutter/material.dart';

class CustomColors {
  static const greyColor = Colors.grey;
  static final lightGreyColor = Colors.grey.shade300;
  static const blueColor = Colors.blue;
  static const whiteColor = Colors.white;
  static const blackColor = Colors.black;
  static const pullToRefreshArrowColor = greyColor;
  static const loadingIndicatorColor = blueColor;
  static const backgroundColor = whiteColor;
  static const regularTextColor = blackColor;
  static const titleTextColor = whiteColor;
}

class CustomTextStyles {
  static const emptyListMessage = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: CustomColors.regularTextColor,
  );
  static const chartEntityTitle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: CustomColors.regularTextColor,
  );
  static const appBarTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: CustomColors.titleTextColor,
  );
}
