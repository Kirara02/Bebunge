import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../gen/assets.gen.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/images/cache_network.dart';

class BebeliBeritaCard extends StatefulWidget {
  const BebeliBeritaCard(
      {this.image,
      this.kec,
      this.keldes,
      this.category,
      this.title,
      this.score,
      this.titleShop,
      this.onTap,
      super.key});
  final Function()? onTap;
  final String? image;
  final String? kec;
  final String? keldes;
  final String? title;
  final String? score;
  final String? titleShop;
  final String? category;
  @override
  State<BebeliBeritaCard> createState() => _BebeliBeritaCardState();
}

class _BebeliBeritaCardState extends State<BebeliBeritaCard> {
  bool initValue = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadiusDirectional.circular(10),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        width: 200,
        decoration: BoxDecoration(
            color: UXColors.white,
            borderRadius: BorderRadiusDirectional.circular(10)),
        child: InkWell(
          onTap: widget.onTap,
          child: Column(
            children: [
              //ANCHOR - Image Container
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Stack(
                  children: [
                    //ANCHOR - Image File
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
                    //ANCHOR - Tagging Category
                    Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 4, vertical: 2),
                          decoration: BoxDecoration(
                              color: UXAppColors.yellow,
                              borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(10),
                                  bottomEnd: Radius.circular(10))),
                          child: Text(widget.category ?? '',
                              style:
                                  TextStyle(fontSize: UXConstants.kFontSizeS),
                              overflow: TextOverflow.ellipsis),
                        )),
                  ],
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //ANCHOR -  Judul
                      Text(
                        "${widget.kec ?? ""} - ${widget.keldes ?? ""}",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: UXConstants.kFontSizeXXS,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 4),
                      Expanded(
                        child: Text(widget.title ?? "",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: UXConstants.kFontSizeXS,
                                fontWeight: FontWeight.w600,
                                color: UXColors.grey_80)),
                      ),
                      // SizedBox(height: 0),
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
                                size: UXConstants.kIconsXS,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                widget.score.toString(),
                                style: TextStyle(
                                    fontSize: UXConstants.kFontSizeXS),
                              )
                            ],
                          ),
                        ],
                      ),
                      UXSpacer(height: 4),
                      Row(
                        children: [
                          SvgPicture.asset(Assets.svgs.badge.path),
                          UXSpacer(
                            width: 4,
                          ),
                          Flexible(
                            child: Text(
                              widget.titleShop ?? "",
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(fontSize: UXConstants.kFontSizeXS),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
