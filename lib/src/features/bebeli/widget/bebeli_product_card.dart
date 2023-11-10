import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money2/money2.dart';

import '../../../../gen/assets.gen.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/images/cache_network.dart';

class BebeliProductCard extends StatefulWidget {
  const BebeliProductCard(
      {this.image,
      this.kec,
      this.keldes,
      this.price,
      this.title,
      this.score,
      this.titleShop,
      this.diskon,
      this.hargaDiskon,
      this.onTap,
      super.key});
  final Function()? onTap;
  final String? image;
  final String? kec;
  final String? keldes;
  final String? title;
  final String? diskon;
  final int? hargaDiskon;
  final int? price;
  final double? score;
  final String? titleShop;
  @override
  State<BebeliProductCard> createState() => _BebeliProductCardState();
}

class _BebeliProductCardState extends State<BebeliProductCard> {
  bool initValue = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadiusDirectional.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: widget.onTap,
        splashColor: UXAppColors.primaryColors,
        child: Column(
          children: [
            //ANCHOR - Image
            SizedBox(
              height: 140,
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
                          fit: BoxFit.cover, imageUrl: widget.image ?? ""),
                    ),
                  ),
                  Positioned(
                      right: 5,
                      top: 5,
                      child: CircleAvatar(
                        backgroundColor: UXAppColors.yellow,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Text('80%',
                              style: TextStyle(
                                  fontSize: UXConstants.kFontSizeS,
                                  color: UXColors.white,
                                  fontWeight: FontWeight.w600)),
                          Text(
                            'TKDN',
                            style: TextStyle(
                                fontSize: 9,
                                color: UXColors.white,
                                fontWeight: FontWeight.w600),
                          )
                        ]),
                      ))
                ],
              ),
            ),
            //ANCHOR -  Judul
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title ?? "",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: UXConstants.kFontSizeM,
                          fontWeight: FontWeight.w400,
                          color: UXColors.grey_80,
                        )),
                    SizedBox(
                      height: UXConstants.kPaddingS,
                    ),
                    //ANCHOR - Title Shop
                    Row(
                      children: [
                        SvgPicture.asset(
                          Assets.svgs.badge.path,
                          height: 16,
                          width: 16,
                        ),
                        Expanded(
                          child: Text(
                            widget.titleShop ?? "",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(fontSize: UXConstants.kFontSizeXS),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: UXConstants.kPaddingS,
                    ),
                    //ANCHOR - Harga
                    Builder(builder: (context) {
                      var diskon = double.tryParse(widget.diskon ?? '0');
                      return diskon! > 0
                          ? Text(
                              Money.fromNumWithCurrency(
                                widget.hargaDiskon ?? 0,
                                Currency.create('IDR', 2,
                                    country: 'Indonesia',
                                    symbol: 'Rp ',
                                    invertSeparators: true,
                                    pattern: 'S###.###',
                                    unit: 'rupiah'),
                              ).toString(),
                              style: TextStyle(
                                  fontSize: UXConstants.kFontSizeM,
                                  fontWeight: FontWeight.w700,
                                  color: UXColors.grey_80,
                                  decoration: TextDecoration.none,
                                  decorationColor: UXAppColors.danger),
                            )
                          : Text(
                              Money.fromNumWithCurrency(
                                widget.price ?? 0,
                                Currency.create('IDR', 2,
                                    country: 'Indonesia',
                                    symbol: 'Rp ',
                                    invertSeparators: true,
                                    pattern: 'S###.###',
                                    unit: 'rupiah'),
                              ).toString(),
                              style: TextStyle(
                                  fontSize: UXConstants.kFontSizeM,
                                  fontWeight: FontWeight.w700,
                                  color: UXColors.grey_80,
                                  decoration: TextDecoration.none,
                                  decorationColor: UXAppColors.danger),
                            );
                    }),
                    UXSpacer(
                      height: 3,
                    ),
                    Builder(builder: (context) {
                      var diskon = double.tryParse(widget.diskon ?? '0');
                      return diskon! > 0
                          ? Row(
                              children: [
                                Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  padding: EdgeInsetsDirectional.all(4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: UXAppColors.gojekRed),
                                  child: Text('${(diskon).toString()}%',
                                      style: TextStyle(
                                        fontSize: UXConstants.kFontSizeXS,
                                        fontWeight: FontWeight.w700,
                                        color: UXAppColors.danger,
                                      )),
                                ),
                                UXSpacer(width: 4),
                                Text(
                                  Money.fromNumWithCurrency(
                                    widget.price ?? 0,
                                    Currency.create('IDR', 2,
                                        country: 'Indonesia',
                                        symbol: 'Rp ',
                                        invertSeparators: true,
                                        pattern: 'S###.###',
                                        unit: 'rupiah'),
                                  ).toString(),
                                  style: TextStyle(
                                      fontSize: UXConstants.kFontSizeS,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 181, 185, 191),
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: UXColors.grey_40),
                                ),
                              ],
                            )
                          : SizedBox();
                    }),
                    SizedBox(
                      height: UXConstants.kPaddingXS,
                    ),
                    //ANCHOR - Lokasi
                    Text(
                      "${widget.kec ?? ""}",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: UXColors.grey_60,
                          fontSize: UXConstants.kFontSizeS,
                          fontWeight: FontWeight.w100),
                    ),
                    SizedBox(
                      height: UXConstants.kPaddingXS,
                    ),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // ANCHOR - Rating
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star_outlined,
                                color: UXAppColors.orange,
                                size: 20,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                widget.score.toString(),
                                style: TextStyle(
                                    fontSize: UXConstants.kFontSizeS,
                                    color: UXColors.grey_60),
                              )
                            ],
                          ),
                        ]),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
