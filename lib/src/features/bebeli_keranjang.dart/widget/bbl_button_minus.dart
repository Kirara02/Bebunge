import 'package:flutter/material.dart';

import '../../../config/theme/colors.dart';

class BBLButtonMinus extends StatelessWidget {
  const BBLButtonMinus(
      {this.onTap,
      this.onLongPress,
      this.onLongPressEnd,
      this.active = false,
      super.key});
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final VoidCallback? onLongPressEnd;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      onLongPressEnd: (_) => onLongPressEnd!(),
      child: SizedBox(
        height: 30,
        width: 30,
        child: Icon(
          Icons.remove,
          size: 20,
          color: active ? UXAppColors.primaryColors : UXColors.grey_60,
        ),
      ),
    );
  }
}
