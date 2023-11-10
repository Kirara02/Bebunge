import 'package:bebunge/src/features/transportasi/view/angkot_page.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:bebunge/src/widgets/wrapper/custom_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../../gen/assets.gen.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../config/ux_screen.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../../../widgets/images/cache_network.dart';

class Transportasi extends StatefulWidget {
  const Transportasi({super.key});

  @override
  State<Transportasi> createState() => _TransportasiState();
}

class _TransportasiState extends State<Transportasi> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: UXColors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            automaticallyImplyLeading: false,
            title: Container(
                height: 32,
                margin: EdgeInsets.only(left: 15),
                child: Image.asset(
                  Assets.images.bebungeFullColor.path,
                )),
            actions: [
              Row(
                children: [
                  SizedBox(
                      width: UXConstants.kIconsM,
                      child: SvgPicture.asset(
                        Assets.svgs.train.path,
                        theme: SvgTheme(
                            currentColor: Color.fromARGB(255, 0, 116, 174)),
                      )),
                  SizedBox(width: UXConstants.kPaddingXS),
                  Text(
                    'Transportasi',
                    style: TextStyle(
                        fontSize: UXConstants.kFontSizeXL,
                        fontWeight: FontWeight.w700,
                        color: UXAppColors.biru1),
                  )
                ],
              ),
              SizedBox(
                width: UXConstants.kPaddingL,
              )
            ],
            bottom: PreferredSize(
                child: Container(
                    height: 40,
                    padding: EdgeInsetsDirectional.symmetric(
                        horizontal: UXConstants.kPaddingXL),
                    child: UXInputCustom(controller: searchController)),
                preferredSize: Size.fromHeight(40)),
          ),
          body: Column(
            children: [
              CustomWrapper(
                paddingWrapper: EdgeInsetsDirectional.symmetric(
                    vertical: 20, horizontal: 20),
                name: 'Transportasi yang tersedia',
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(children: [
                    //ANCHOR - Bis choice button
                    InkWell(
                      borderRadius: BorderRadius.circular(15),
                      splashColor: UXAppColors.primary,
                      onTap: () {},
                      child: Container(
                        height: 92,
                        decoration: BoxDecoration(
                            border: Border.all(color: UXColors.grey_60),
                            borderRadius: BorderRadiusDirectional.circular(15)),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10),
                              child: Image.asset(
                                Assets.images.bis.path,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          UXSpacer(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bus Bekasi',
                                style: TextStyle(
                                    fontSize: UXConstants.kFontSizeXL,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Lihat Rute & Jadwal',
                                style: TextStyle(
                                    fontSize: UXConstants.kFontSizeXS,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1),
                              )
                            ],
                          ),
                          Expanded(child: Icon(Icons.arrow_forward_ios))
                        ]),
                      ),
                    ),
                    SizedBox(height: UXConstants.kPaddingS),
                    //ANCHOR - Angkot choice button
                    InkWell(
                      borderRadius: BorderRadius.circular(15),
                      splashColor: UXAppColors.primary,
                      onTap: () {
                        pushDynamicScreen(context,
                            screen: PageTransition(
                                child: AngkotPage(),
                                type: PageTransitionType.rightToLeft));
                      },
                      child: Container(
                        height: 92,
                        decoration: BoxDecoration(
                            border: Border.all(color: UXColors.grey_60),
                            borderRadius: BorderRadiusDirectional.circular(15)),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10),
                              child: Image.asset(
                                Assets.images.angkot.path,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          UXSpacer(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Angkot Bekasi',
                                style: TextStyle(
                                    fontSize: UXConstants.kFontSizeXL,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Lihat Rute & Jadwal',
                                style: TextStyle(
                                    fontSize: UXConstants.kFontSizeXS,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1),
                              )
                            ],
                          ),
                          Expanded(child: Icon(Icons.arrow_forward_ios))
                        ]),
                      ),
                    ),
                    SizedBox(height: UXConstants.kPaddingS),
                    //ANCHOR - Kereta choice button
                    InkWell(
                      borderRadius: BorderRadius.circular(15),
                      splashColor: UXAppColors.primary,
                      onTap: () {},
                      child: Container(
                        height: 92,
                        decoration: BoxDecoration(
                            border: Border.all(color: UXColors.grey_60),
                            borderRadius: BorderRadiusDirectional.circular(15)),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10),
                              child: Image.asset(
                                Assets.images.kereta.path,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          UXSpacer(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kereta Bekasi',
                                style: TextStyle(
                                    fontSize: UXConstants.kFontSizeXL,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Lihat Rute & Jadwal',
                                style: TextStyle(
                                    fontSize: UXConstants.kFontSizeXS,
                                    fontWeight: FontWeight.w500,
                                    wordSpacing: 1),
                              )
                            ],
                          ),
                          Expanded(child: Icon(Icons.arrow_forward_ios))
                        ]),
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget cardBerita(BuildContext context, {Function()? onPressed}) {
  final double? tagFontSize = UXConstants.kFontSizeXS;
  final double? titleFontSize = UXConstants.kFontSizeXS;
  final double? dateFontSize = UXConstants.kFontSizeXS;
  return Container(
    height: 80,
    // decoration: BoxDecoration(color: UXAppColors.danger),
    width: UXScreens.width,
    child: InkWell(
      onTap: onPressed,
      child: Row(
        children: [
          //ANCHOR - Card Image Berita
          ClipRRect(
            borderRadius: BorderRadiusDirectional.circular(5),
            child: UXCacheNetworkImage(
                imageUrl:
                    'https://www.bekasikab.go.id/uploads/news/id6893_WhatsApp Image 2023-03-20 at 13.14.23-min.jpeg'),
          ),
          SizedBox(width: 8),
          //ANCHOR - Body Card
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                //ANCHOR - Tagging Berita
                Row(children: [
                  Container(
                      height: 19,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 16, vertical: 2),
                      decoration: BoxDecoration(
                          color: UXAppColors.yellow,
                          borderRadius: BorderRadiusDirectional.circular(3)),
                      child: Text(
                        'Formal',
                        style: TextStyle(
                            fontSize: tagFontSize, fontWeight: FontWeight.w300),
                      )),
                  SizedBox(
                    width: UXConstants.kPaddingXS,
                  ),
                  Container(
                      height: 19,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 16, vertical: 2),
                      decoration: BoxDecoration(
                          color: UXAppColors.yellow,
                          borderRadius: BorderRadiusDirectional.circular(3)),
                      child: Text(
                        'SMA',
                        style: TextStyle(
                            fontSize: tagFontSize, fontWeight: FontWeight.w300),
                      )),
                ]),

                SizedBox(height: UXConstants.kPaddingXS),
                //ANCHOR - Title Berita
                Expanded(
                    child: Text(
                  'SMA Negeri 1 Karang Bahagia',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.w700,
                      height: 1.3),
                )),
                Expanded(
                    child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: UXConstants.kIconsXS,
                    ),
                    Text(
                      '(021) 8472847',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: titleFontSize,
                          fontWeight: FontWeight.w300,
                          height: 1.3),
                    ),
                  ],
                )),
                Flexible(
                  child: Row(
                    children: [
                      //ANCHOR - Date Icon
                      Icon(
                        Icons.location_on_sharp,
                        size: UXConstants.kIconsXS,
                      ),
                      SizedBox(width: UXConstants.kPaddingXS),
                      //ANCHOR - Date Release
                      Flexible(
                        child: Text(
                          'Jalan Buyut Kaipah No.11 RT. 002/003, Karanganyar, Kec. Karangbahagia, Kabupaten Bekasi, Jawa Barat 17530',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: dateFontSize,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
