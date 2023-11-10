import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/images/cache_network.dart';

class PendidikanDetail extends StatefulWidget {
  const PendidikanDetail({super.key});

  @override
  State<PendidikanDetail> createState() => _PendidikanDetailState();
}

class _PendidikanDetailState extends State<PendidikanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: true,
            centerTitle: true,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                    width: UXConstants.kIconsM,
                    child: Image.asset(Assets.images.pendidikan.path)),
                SizedBox(width: UXConstants.kPaddingXS),
                Text(
                  'Pendidikan',
                  style: TextStyle(
                      fontSize: UXConstants.kFontSizeXL,
                      fontWeight: FontWeight.w700,
                      color: UXAppColors.biru1),
                )
              ],
            )),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(5),
                  child: UXCacheNetworkImage(
                      imageUrl:
                          "https://www.bekasikab.go.id/uploads/news/id6893_WhatsApp Image 2023-03-20 at 13.14.23-min.jpeg",
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: UXConstants.kPaddingXL,
                    vertical: UXConstants.kPaddingXS),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //ANCHOR - Tag Berita
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: UXConstants.kPaddingM,
                                  vertical: 2),
                              decoration:
                                  BoxDecoration(color: UXAppColors.yellow),
                              child: Text(
                                'Formal',
                                style:
                                    TextStyle(fontSize: UXConstants.kFontSizeS),
                              ),
                            ),
                            SizedBox(
                              width: UXConstants.kPaddingXS,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: UXConstants.kPaddingM,
                                  vertical: 2),
                              decoration:
                                  BoxDecoration(color: UXAppColors.yellow),
                              child: Text(
                                'SMA',
                                style:
                                    TextStyle(fontSize: UXConstants.kFontSizeS),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //ANCHOR - Judul Berita
                      Text(
                        'SMA Negeri 1 Karang Bahagia',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: UXConstants.kFontSizeL,
                            height: 1.5,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: UXConstants.kPaddingS),
                      //ANCHOR - Sub Info
                      Column(
                        children: [
                          //ANCHOR - Tanggal
                          Row(
                            children: [
                              Icon(Icons.phone, size: UXConstants.kIconsS),
                              SizedBox(width: UXConstants.kPaddingXS),
                              Text(
                                '(021) 49382403',
                                style:
                                    TextStyle(fontSize: UXConstants.kFontSizeS),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.location_on_sharp,
                                  size: UXConstants.kIconsS),
                              SizedBox(width: UXConstants.kPaddingXS),
                              Flexible(
                                child: Text(
                                  'Jalan Buyut Kaipah No.11 RT. 002/003, Karanganyar, Kec. Karangbahagia, Kabupaten Bekasi, Jawa Barat 17530',
                                  style: TextStyle(
                                      fontSize: UXConstants.kFontSizeS),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.mail, size: UXConstants.kIconsS),
                              SizedBox(width: UXConstants.kPaddingXS),
                              Text(
                                'ibumaifa@gmail.com',
                                style:
                                    TextStyle(fontSize: UXConstants.kFontSizeS),
                              )
                            ],
                          ),
                          //view
                          // Row(
                          //   children: [
                          //     Icon(Icons.remove_red_eye_sharp,
                          //         size: UXConstants.kIconsXS),
                          //     SizedBox(width: UXConstants.kPaddingXS),
                          //     Text(
                          //       '100 dibaca',
                          //       style: TextStyle(fontSize: UXConstants.kFontSizeXS),
                          //     )
                          //   ],
                          // )
                        ],
                      ),
                      SizedBox(height: UXConstants.kPaddingM),
                      // HtmlWidget(
                      //   text,
                      // )
                    ]),
              ),
            ],
          ),
        ));
  }
}
