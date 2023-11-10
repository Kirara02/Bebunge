import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../config/theme/colors.dart';

class CategoryListShimmer extends StatefulWidget {
  const CategoryListShimmer({this.onPressed, super.key});
  final Function()? onPressed;
  @override
  State<CategoryListShimmer> createState() => _CategoryListShimmerState();
}

class _CategoryListShimmerState extends State<CategoryListShimmer> {
  int? index;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
          height: 24,
          padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
          child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (context, index) => SizedBox(width: 5),
              itemBuilder: (context, index) => Shimmer.fromColors(
                  baseColor: UXColors.shimmerBaseColor,
                  highlightColor: UXColors.shimmerHighlightColor,
                  child: Container(
                    width: 90,
                    decoration: BoxDecoration(
                        color: UXColors.white,
                        borderRadius: BorderRadiusDirectional.circular(20)),
                  )))),
    );
  }
}
