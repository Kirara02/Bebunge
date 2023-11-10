import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/network/model/bebeli/bebeli_slider_img.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'carousel_card.dart';

class Carousel extends StatefulWidget {
  const Carousel({this.listPaths, this.loading = false, super.key});
  final List<BebeliSliderImg>? listPaths;
  final bool loading;

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int currentPos = 0;

  @override
  Widget build(BuildContext context) {
    return widget.listPaths != null
        ? Column(children: [
            CarouselSlider.builder(
              itemCount: widget.loading ? 5 : widget.listPaths!.length,
              options: CarouselOptions(
                  initialPage: 1,
                  viewportFraction: 1,
                  height: 160,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  padEnds: true,
                  autoPlayInterval: Duration(seconds: 5),
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPos = index;
                    });
                  }),
              itemBuilder: (context, index, _) {
                return widget.loading
                    ? Shimmer.fromColors(
                        baseColor: UXColors.shimmerBaseColor,
                        highlightColor: UXColors.shimmerHighlightColor,
                        child: Container(
                          color: UXColors.white,
                        ))
                    : CarouselCard(imgPath: widget.listPaths![index].img);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: widget.listPaths!.map((url) {
                int index = widget.listPaths!.indexOf(url);
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPos == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          ])
        : SizedBox();
  }
}
