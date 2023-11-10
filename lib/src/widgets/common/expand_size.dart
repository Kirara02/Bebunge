import 'package:flutter/material.dart';

import '../../config/ux_constants.dart';

double expandedSize(BuildContext context, {double size = 0.06}) {
  double sh = MediaQuery.of(context).size.height;

  double sw = sh * size;
  return sw < UXConstants.kPaddingXL ? UXConstants.kPaddingXL : sw;
}
