import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../network/model/berita/berita_detail.dart';
import '../../../utils/date_utils.dart';
import '../../../widgets/images/cache_network.dart';

class BeritaCard extends StatefulWidget {
  const BeritaCard({this.onTap, this.detail, super.key});
  final Function()? onTap;
  final BeritaDetailDto? detail;
  @override
  State<BeritaCard> createState() => _BeritaCardState();
}

class _BeritaCardState extends State<BeritaCard> {
  bool initValue = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadiusDirectional.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: widget.onTap,
        child: Container(
          height: 200,
          width: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          child: Column(children: [
            //ANCHOR - Image
            SizedBox(
              height: 110,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(10),
                          topEnd: Radius.circular(10)),
                      child: UXCacheNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              widget.detail != null ? widget.detail!.img! : ""),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(
                          color: UXAppColors.yellow,
                          borderRadius: BorderRadiusDirectional.only(
                              bottomStart: Radius.circular(10),
                              topEnd: Radius.circular(10))),
                      child: Text(
                        widget.detail!.kategori ?? "",
                        style: TextStyle(
                          fontSize: UXConstants.kFontSizeS,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    //ANCHOR -  Time & Date
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          size: UXConstants.kIconsXS,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          convertUTC(widget.detail!.tgl!),
                          style: TextStyle(
                              fontSize: UXConstants.kFontSizeXS,
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                    SizedBox(height: 4),
                    //ANCHOR - Judul
                    Flexible(
                      child: Text(
                          widget.detail != null ? widget.detail!.judul! : '',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: UXConstants.kFontSizeXS,
                              fontWeight: FontWeight.w700,
                              color: UXAppColors.primary)),
                    ),
                    SizedBox(height: 6),
                    Flexible(
                        child: HtmlWidget(
                      widget.detail!.isi != null
                          ? widget.detail!.isi!.length < 120
                              ? widget.detail!.isi!
                              : widget.detail!.isi!.substring(0, 120)
                          : '',
                      enableCaching: true,
                      textStyle: TextStyle(
                          fontSize: UXConstants.kFontSizeXS,
                          fontWeight: FontWeight.w300,
                          overflow: TextOverflow.ellipsis,
                          letterSpacing: 0.1),
                    ))
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
