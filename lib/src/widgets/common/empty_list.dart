import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../config/ux_constants.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({this.size = 40, this.title, super.key});
  final double? size;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: size, width: size, child: Assets.lottie.notFound.lottie()),
        SizedBox(height: 0),
        Text(
          title ?? '',
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: UXConstants.kFontSizeL, height: 1.5),
        ),
      ],
    );
  }
}
