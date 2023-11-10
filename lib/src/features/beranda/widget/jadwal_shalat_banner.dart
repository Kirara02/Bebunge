// import 'package:bebunge/src/config/ux_screen.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';

class JadwalShalatBanner extends StatefulWidget {
  const JadwalShalatBanner(
      {this.subuh, this.zuhur, this.asyar, this.magrib, this.isya, super.key});
  final String? subuh;
  final String? zuhur;
  final String? asyar;
  final String? magrib;
  final String? isya;

  @override
  State<JadwalShalatBanner> createState() => _JadwalShalatBannerState();
}

class _JadwalShalatBannerState extends State<JadwalShalatBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 24, start: 20, end: 20),
      child: ClipRRect(
        borderRadius: BorderRadiusDirectional.circular(10),
        child: Container(
          child: Stack(
            children: [
              SizedBox(
                height: 92,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(
                        0.3), // Adjust the color and opacity as needed
                    BlendMode.srcATop, // Adjust the blend mode if needed
                  ),
                  child: Image.asset(
                    Assets.images.jadwalShalatPng.path,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 8,
                child: Text(LocaleKeys.prayer_time_title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: UXConstants.kFontSizeS,
                            fontWeight: FontWeight.w700,
                            color: UXColors.white))
                    .tr(),
              ),
              // Positioned(
              //   right: 0,
              //   bottom: 0,
              //   child: Container(
              //     width: 127,
              //     height: 40,
              //     decoration: BoxDecoration(color: Colors.black),
              //     padding: EdgeInsetsDirectional.symmetric(
              //       horizontal: 8,
              //       vertical: 10,
              //     ),
              //   ),
              // ),
              Positioned(
                top: 40,
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(LocaleKeys.prayer_time_shubuh.tr(),
                            style: TextStyle(
                                color: UXColors.white,
                                fontSize: UXConstants.kFontSizeS,
                                fontWeight: FontWeight.w700,
                                height: 1.1)),
                        UXSpacer(
                          height: 4,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: UXAppColors.primary,
                              borderRadius:
                                  BorderRadiusDirectional.circular(5)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Text(widget.subuh ?? '',
                              style: TextStyle(
                                  color: UXColors.white,
                                  fontSize: UXConstants.kFontSizeS,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                    //ANCHOR - Dzuhur
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(LocaleKeys.prayer_time_dzuhur.tr(),
                            style: TextStyle(
                                color: UXColors.white,
                                fontSize: UXConstants.kFontSizeS,
                                fontWeight: FontWeight.w700,
                                height: 1.1)),
                        UXSpacer(
                          height: 4,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: UXAppColors.primary,
                              borderRadius:
                                  BorderRadiusDirectional.circular(5)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Text(widget.zuhur ?? '',
                              style: TextStyle(
                                  color: UXColors.white,
                                  fontSize: UXConstants.kFontSizeS,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                    //ANCHOR - Asyar
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(LocaleKeys.prayer_time_asyar.tr(),
                            style: TextStyle(
                                color: UXColors.white,
                                fontSize: UXConstants.kFontSizeS,
                                fontWeight: FontWeight.w700,
                                height: 1.1)),
                        UXSpacer(
                          height: 4,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: UXAppColors.primary,
                              borderRadius:
                                  BorderRadiusDirectional.circular(5)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Text(widget.asyar ?? '',
                              style: TextStyle(
                                  color: UXColors.white,
                                  fontSize: UXConstants.kFontSizeS,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                    //ANCHOR - Magrib
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(LocaleKeys.prayer_time_magrib.tr(),
                            style: TextStyle(
                                color: UXColors.white,
                                fontSize: UXConstants.kFontSizeS,
                                fontWeight: FontWeight.w700,
                                height: 1.1)),
                        UXSpacer(
                          height: 4,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: UXAppColors.primary,
                              borderRadius:
                                  BorderRadiusDirectional.circular(5)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Text(widget.magrib ?? '',
                              style: TextStyle(
                                  color: UXColors.white,
                                  fontSize: UXConstants.kFontSizeS,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                    //ANCHOR - Isya
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(LocaleKeys.prayer_time_isya.tr(),
                            style: TextStyle(
                                color: UXColors.white,
                                fontSize: UXConstants.kFontSizeS,
                                fontWeight: FontWeight.w700,
                                height: 1.1)),
                        UXSpacer(
                          height: 4,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: UXAppColors.primary,
                              borderRadius:
                                  BorderRadiusDirectional.circular(5)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Text(widget.isya ?? '',
                              style: TextStyle(
                                  color: UXColors.white,
                                  fontSize: UXConstants.kFontSizeS,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
