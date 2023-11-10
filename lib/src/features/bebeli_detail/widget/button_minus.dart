import 'package:flutter/material.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/icon/icon_box.dart';

class AXButtonMinus extends StatelessWidget {
  const AXButtonMinus({this.callback, this.active = false, super.key});
  final VoidCallback? callback;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return IconBox(
      onPressed: callback,
      padding: EdgeInsets.zero,
      shrinkWrap: MaterialTapTargetSize.shrinkWrap,
      child: Icon(
        Icons.remove,
        size: UXConstants.kIconsM,
        color: active ? UXColors.white : UXColors.grey_80,
      ),
      color: active ? UXAppColors.primary : UXColors.grey_40,
      size: 26,
    );
  }
}
