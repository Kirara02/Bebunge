import 'package:flutter/material.dart';

import '../../../config/theme/colors.dart';
import '../../../widgets/images/cache_network.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({this.imgPath, super.key});
  final String? imgPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: UXAppColors.biru2,
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: InkResponse(
              onTap: () {},
              child: UXCacheNetworkImage(
                  imageUrl: imgPath ?? "", fit: BoxFit.cover))),
    );
  }
}
