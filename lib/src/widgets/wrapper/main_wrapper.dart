import 'package:flutter/material.dart';

import '../../config/ux_constants.dart';
import '../../config/ux_screen.dart';

class MainWrapper extends StatelessWidget {
  final String? title;
  final List<Widget>? children;
  const MainWrapper({this.title = "", this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: UXConstants.kPaddingM),
        //ANCHOR - Title
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          child: SizedBox(
            width: UXScreens.width,
            child: Text(title ?? "",
                style: TextStyle(
                    fontSize: UXConstants.kFontSizeL,
                    fontWeight: FontWeight.w700)),
          ),
        ),
        SizedBox(height: UXConstants.kPaddingM),
        Column(
          children: children ?? [SizedBox()],
        )
      ]),
    );
  }
}
