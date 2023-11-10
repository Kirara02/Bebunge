import 'package:bebunge/src/widgets/wrapper/custom_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../gen/assets.gen.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/common/ux_spacer.dart';

class KesehatanRSDetail extends StatefulWidget {
  const KesehatanRSDetail({super.key});

  @override
  State<KesehatanRSDetail> createState() => _KesehatanRSDetailState();
}

class _KesehatanRSDetailState extends State<KesehatanRSDetail> {
  List<Map<String, dynamic>> ruangan = [
    {'room': 'VVIP: 23', 'status': 'active'},
    {'room': 'VIP: 8', 'status': 'deactive'},
    {'room': 'Utama: 28', 'status': 'deactive'},
    {'room': 'Kelas I: 172', 'status': 'deactive'},
    {'room': 'Kelas II: 212', 'status': 'deactive'},
    {'room': 'Kelas III: 310', 'status': 'deactive'},
    {'room': 'ICU: 18', 'status': 'deactive'},
    {'room': 'ICCU: 0', 'status': 'active'},
    {'room': 'NICU: 18', 'status': 'deactive'},
    {'room': 'PICU: 7', 'status': 'deactive'},
    {'room': 'IGD: 8', 'status': 'deactive'},
    {'room': 'UGD: 0', 'status': 'active'},
    {'room': 'Bersalin: 0', 'status': 'active'},
    {'room': 'HCU: 80', 'status': 'deactive'},
    {'room': 'Isolasi: 116', 'status': 'deactive'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(30),
                  bottomEnd: Radius.circular(30))),
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
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text("RS IZZA",
                    style: TextStyle(
                        fontSize: UXConstants.kFontSizeM,
                        color: UXColors.white,
                        fontWeight: FontWeight.w700)),
              ),
              preferredSize: Size.fromHeight(30)),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            CustomWrapper(
              name: 'Ketersedian Ruangan',
              child: GridView.builder(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 28,
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                physics: ClampingScrollPhysics(),
                itemCount: ruangan.length,
                shrinkWrap: true,
                // crossAxisCount: 3,
                itemBuilder: (context, index) => Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: ruangan[index]['status'] == 'active'
                          ? UXAppColors.danger
                          : UXColors.white,
                      border: Border.all(color: UXColors.grey_60),
                      borderRadius: BorderRadiusDirectional.circular(5)),
                  child: Text(
                    ruangan[index]['room'],
                    style: TextStyle(
                        fontSize: UXConstants.kFontSizeXS,
                        fontWeight: FontWeight.w700,
                        color: ruangan[index]['status'] == 'active'
                            ? UXColors.white
                            : UXColors.grey_80),
                  ),
                ),
              ),
            ),
            UXSpacer(
              height: UXConstants.kPaddingM,
            ),
            CustomWrapper(
              name: 'Rekomendasi Rumah Sakit',
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
                      UXSpacer(height: UXConstants.kPaddingS),
                  itemCount: 20),
            )
          ]),
        ));
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
