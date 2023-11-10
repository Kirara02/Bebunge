import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shimmer/shimmer.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({this.title, this.content, super.key});
  final Widget? title;
  final Widget? content;

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: UXColors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
          appBar: AppBar(
            title: widget.title ??
                Shimmer.fromColors(
                    child: Container(
                        height: UXConstants.kFontSizeXX,
                        width: 180,
                        color: UXColors.white),
                    baseColor: UXColors.shimmerBaseColor,
                    highlightColor: UXColors.shimmerHighlightColor),
            centerTitle: true,
          ),
          body: widget.content ?? UXLoading()
          // Shimmer.fromColors(
          //     child: Padding(
          //       padding: const EdgeInsets.all(20),
          //       child: Container(
          //           height: UXScreens.height,
          //           width: UXScreens.width,
          //           color: UXColors.white),
          //     ),
          //     baseColor: UXColors.shimmerBaseColor,
          //     highlightColor: UXColors.shimmerHighlightColor),
          ),
    );
  }
}
