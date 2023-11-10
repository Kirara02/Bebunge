import 'package:bebunge/gen/assets.gen.dart';
import 'package:bebunge/src/app/app_root.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/config/ux_screen.dart';
import 'package:bebunge/src/features/onboard.dart/bloc/onboard_bloc.dart';
import 'package:bebunge/src/widgets/button/button.dart';
import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:bebunge/src/widgets/images/cache_network.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:math';

import '../../../config/theme/colors.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final controller = PageController(initialPage: 0);
  bool show = true;
  var currentPageValue = 0.0;

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  List<String> imageLottie = [
    Assets.lottie.onboard1.path,
    Assets.lottie.onboard2.path,
    Assets.lottie.onboard3.path,
    Assets.lottie.onboard1.path,
    Assets.lottie.onboard2.path,
    Assets.lottie.onboard3.path,
    Assets.lottie.onboard1.path,
    Assets.lottie.onboard2.path,
    Assets.lottie.onboard3.path,
    Assets.lottie.onboard1.path,
    Assets.lottie.onboard2.path,
    Assets.lottie.onboard3.path,
    Assets.lottie.onboard1.path,
    Assets.lottie.onboard2.path,
    Assets.lottie.onboard3.path,
  ];

  final _random = Random();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardBloc()..add(OnboardEvent.started()),
      child: Builder(builder: (context) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light.copyWith(
            statusBarColor: UXColors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          child: SafeArea(
            child: BlocBuilder<OnboardBloc, OnboardState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => Scaffold(body: UXLoading()),
                  loading: () => Scaffold(body: UXLoading()),
                  loaded: (data) => Scaffold(
                    body: PageView(
                        controller: controller,
                        children: List.generate(
                            data.length,
                            (index) => pageItem(context,
                                image: data[index].gambar!.isNotEmpty
                                    ? UXCacheNetworkImage(
                                        imageUrl: data[index].gambar!)
                                    : LottieBuilder.asset(imageLottie[index]),
                                currentPage: currentPageValue,
                                dataLength: data.length,
                                title: data[index].nama,
                                text: data[index].deskripsi))),
                    bottomSheet: Container(
                        height: 100,
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Center(
                                child: SmoothPageIndicator(
                              effect: ExpandingDotsEffect(
                                  dotHeight: 10,
                                  dotWidth: 10,
                                  activeDotColor: UXAppColors.primary),
                              controller: controller,
                              count: data.length,
                            )),
                            UXSpacer(height: UXConstants.kPaddingM),
                            SizedBox(
                              height: 40,
                              child: Row(
                                children: [
                                  currentPageValue == 0
                                      ? SizedBox()
                                      : UXButton(
                                          onPressed: () {
                                            controller.previousPage(
                                                duration:
                                                    Duration(milliseconds: 500),
                                                curve: Curves.easeInOut);
                                          },
                                          title: 'Prev',
                                          height: 40,
                                          backgroundColor: UXColors.grey_60,
                                        ),
                                  UXSpacer(width: 4),
                                  Expanded(
                                    child: UXButton(
                                      onPressed: () {
                                        if (currentPageValue ==
                                            (data.length - 1)) {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              PageTransition(
                                                  alignment: Alignment.center,
                                                  child: AppRoot(),
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  type:
                                                      PageTransitionType.fade),
                                              (route) => true);
                                        } else {
                                          controller.nextPage(
                                              duration:
                                                  Duration(milliseconds: 500),
                                              curve: Curves.easeInOut);
                                        }
                                      },
                                      height: 40,
                                      title: 'Next',
                                      backgroundColor:
                                          UXAppColors.primaryColors,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                );
              },
            ),
          ),
        );
      }),
    );
  }

  Widget pageItem(BuildContext context,
      {Widget? image,
      double? currentPage,
      int? dataLength,
      String? title,
      String? text}) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding:
                  EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 5),
              height: 48,
              width: UXScreens.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(Assets.images.bebungeFullColor.path),
                  currentPage == (dataLength! - 1)
                      ? SizedBox()
                      : TextButton(
                          onPressed: () {},
                          child: Text(
                            'Skip',
                            style: TextStyle(
                                fontSize: UXConstants.kFontSizeL,
                                fontWeight: FontWeight.w400),
                          ))
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    height: 332,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                    child: image),
                UXSpacer(
                  height: UXConstants.kPaddingXL,
                ),
                Container(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                  child: Text(title ?? '',
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: TextStyle(
                          height: 1.2,
                          fontSize: UXConstants.kFontSizeM,
                          fontWeight: FontWeight.w600)),
                ),
                UXSpacer(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                  child: Text(text ?? '',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          height: 1.2,
                          fontSize: UXConstants.kFontSizeM,
                          fontWeight: FontWeight.w400)),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
