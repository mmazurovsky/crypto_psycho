import 'package:flutter/material.dart';

import '../../constants/styling.dart';

class EmptyListPlaceholder extends StatelessWidget {
  const EmptyListPlaceholder({Key? key}) : super(key: key);

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
            Text(
              'List is empty',
              style: CustomTextStyles.emptyListMessage,
            )
          ],
        ),
      ),
    );
    ;
  }
}
