import 'package:bebunge/gen/assets.gen.dart';
import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/kesehatan_rs_detail.dart/view/KesehatanRSDetail.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:bebunge/src/widgets/wrapper/custom_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../widgets/forms/ux_input_custom.dart';

class Kesehatan extends StatefulWidget {
  const Kesehatan({super.key});

  @override
  State<Kesehatan> createState() => _KesehatanState();
}

class _KesehatanState extends State<Kesehatan> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(30),
                bottomStart: Radius.circular(30))),
        centerTitle: true,
        backgroundColor: UXAppColors.primaryColors,
        foregroundColor: UXColors.white,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              Assets.svgs.gedung.path,
              theme: SvgTheme(
                currentColor: UXColors.white,
              ),
            ),
            UXSpacer(width: UXConstants.kPaddingS),
            Text(
              'Info Ruangan',
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeL,
                  fontWeight: FontWeight.w700,
                  color: UXColors.white),
            )
          ],
        ),
        // flexibleSpace: Column(mainAxisSize: MainAxisSize.min, children: [
        //   Text(
        //     'Cek kapasitas persediaan ruangan',
        //     style: TextStyle(
        //         fontSize: UXConstants.kFontSizeM,
        //         fontWeight: FontWeight.w700,
        //         color: UXColors.white),
        //   )
        // ]),
        bottom: PreferredSize(
          child: Container(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              UXSpacer(height: 5),
              Text(
                'Cek kapasitas persediaan ruangan',
                style: TextStyle(
                    fontSize: UXConstants.kFontSizeM,
                    fontWeight: FontWeight.w700,
                    color: UXColors.white),
              ),
              UXSpacer(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: UXConstants.kIconsS,
                        color: UXColors.white,
                      ),
                      Text(
                        '18 Januari 2023',
                        style: TextStyle(
                            fontSize: UXConstants.kFontSizeS,
                            color: UXColors.white),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled,
                        size: UXConstants.kIconsS,
                        color: UXColors.white,
                      ),
                      Text('18:47:59',
                          style: TextStyle(
                              fontSize: UXConstants.kFontSizeS,
                              color: UXColors.white))
                    ],
                  )
                ],
              ),
              UXSpacer(height: 18),
              Container(
                height: 28,
                padding: EdgeInsetsDirectional.only(start: 20),
                child: ListView.separated(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: UXColors.white,
                            borderRadius: BorderRadiusDirectional.circular(5)),
                        child: Text(
                          'VVIP : 23',
                          style: TextStyle(fontSize: UXConstants.kFontSizeS),
                        )),
                    separatorBuilder: (context, index) => UXSpacer(
                          width: 8,
                        ),
                    itemCount: 10),
              ),
              UXSpacer(height: 38),
            ]),
          ),
          preferredSize: Size.fromHeight(122),
        ),
      ),
      body: Column(mainAxisSize: MainAxisSize.min, children: [
        UXSpacer(height: UXConstants.kPaddingM),
        Container(
            height: 40,
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: UXConstants.kPaddingXL),
            child: UXInputCustom(
              controller: searchController,
              hintText: 'Cari fasilitas kesehatan',
              prefixIconWidget: Icon(Icons.search),
            )),
        UXSpacer(height: 8),
        Expanded(
          child: CustomWrapper(
            name: 'Daftar Rumah Sakit',
            child: Expanded(
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                  itemBuilder: (context, index) => rumahSakitCard(context, () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => KesehatanRSDetail(),
                            ));
                      }),
                  separatorBuilder: (context, index) =>
                      UXSpacer(height: UXConstants.kPaddingM),
                  itemCount: 20),
            ),
          ),
        )
      ]),
    );
  }

  Widget rumahSakitCard(BuildContext context, VoidCallback? onPressed) {
    return InkWell(
      onTap: onPressed,
      splashColor: UXAppColors.primaryColors.withAlpha(100),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(5),
            border: Border.all(color: UXColors.grey_60)),
        height: 40,
        child: Row(children: [
          UXSpacer(width: 15),
          SvgPicture.asset(Assets.svgs.rumahSakit.path),
          UXSpacer(width: 10),
          Expanded(
              child: Text(
            'RS IZZA',
            style: TextStyle(fontSize: UXConstants.kFontSizeM),
          )),
          Icon(
            Icons.arrow_forward_ios,
            color: UXAppColors.primary,
            size: UXConstants.kIconsS,
          ),
          UXSpacer(width: 15),
        ]),
      ),
    );
  }
}
