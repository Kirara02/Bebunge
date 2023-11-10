import 'package:flutter/material.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../config/ux_screen.dart';
import '../../../widgets/images/cache_network.dart';

Widget cardBeritaGeneral(BuildContext context,
    {String? image,
    String? title,
    String? tag,
    String? date,
    VoidCallback? shared,
    VoidCallback? goTo}) {
  final double? tagFontSize = UXConstants.kFontSizeXS;
  final double? titleFontSize = UXConstants.kFontSizeXS;
  final double? dateFontSize = UXConstants.kFontSizeXS;
  return Container(
    height: 80,
    // decoration: BoxDecoration(color: UXAppColors.danger),
    width: UXScreens.width,
    child: InkWell(
      onTap: goTo,
      child: Row(
        children: [
          //ANCHOR - Card Image Berita
          SizedBox(
            width: 118,
            child: ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(5),
              child: UXCacheNetworkImage(imageUrl: image ?? ""),
            ),
          ),
          SizedBox(width: 8),
          //ANCHOR - Body Card
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                //ANCHOR - Kategori Berita
                FittedBox(
                  child: Container(
                      height: 19,
                      alignment: Alignment.center,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 16, vertical: 2),
                      decoration: BoxDecoration(
                          color: UXAppColors.yellow,
                          borderRadius: BorderRadiusDirectional.circular(3)),
                      child: Text(
                        tag ?? "",
                        style: TextStyle(
                            fontSize: tagFontSize, fontWeight: FontWeight.w300),
                      )),
                ),
                SizedBox(height: UXConstants.kPaddingXS),
                //ANCHOR - Title Berita
                Expanded(
                    child: Text(
                  title ?? "",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.w700,
                      height: 1.3),
                )),
                Row(
                  children: [
                    //ANCHOR - Date Icon
                    Icon(
                      Icons.calendar_month_outlined,
                      size: UXConstants.kIconsXS,
                    ),
                    SizedBox(width: UXConstants.kPaddingXS),
                    //ANCHOR - Date Release
                    Text(
                      date ?? "",
                      style: TextStyle(
                          fontSize: dateFontSize, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(width: UXConstants.kPaddingXL),
                    //ANCHOR - View Count
                    // Expanded(
                    //   child: Row(children: [
                    //     Icon(Icons.remove_red_eye, size: UXConstants.kIconsXS),
                    //     SizedBox(width: UXConstants.kPaddingXS),
                    //     Text('120',
                    //         style: TextStyle(
                    //             fontSize: UXConstants.kFontSizeS,
                    //             fontWeight: FontWeight.w300)),
                    //   ]),
                    // ),
                    //ANCHOR - Shared Icon
                    Material(
                        child: InkWell(
                            onTap: shared,
                            child:
                                Icon(Icons.share, size: UXConstants.kIconsS)))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
