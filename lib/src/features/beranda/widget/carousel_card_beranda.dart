import 'package:flutter/material.dart';

import '../../../widgets/images/cache_network.dart';

class CarouselCardBeranda extends StatelessWidget {
  const CarouselCardBeranda({this.imgPath, super.key});
  final String? imgPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: InkResponse(
              onTap: () {
                print('sdsd');
              },
              child: UXCacheNetworkImage(
                  imageUrl: imgPath ?? "", fit: BoxFit.cover))),
    );
  }
}
