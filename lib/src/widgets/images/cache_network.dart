import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../config/theme/colors.dart';
import '../../config/ux_constants.dart';

class UXCacheNetworkImage extends StatelessWidget {
  const UXCacheNetworkImage({
    Key? key,
    required this.imageUrl,
    this.size,
    this.fit,
    this.shimmerRadius,
    this.shimmerBaseColor,
    this.shimmerShape,
  }) : super(key: key);

  final String imageUrl;
  final Size? size;
  final BoxFit? fit;
  final double? shimmerRadius;
  final Color? shimmerBaseColor;
  final BoxShape? shimmerShape;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      errorWidget: (BuildContext context, String url, dynamic error) =>
          _whenErrorLoadImage(),
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: shimmerBaseColor ?? UXColors.shimmerBaseColor,
        highlightColor: UXColors.shimmerHighlightColor,
        child: Container(
          height: size?.height,
          width: size?.width,
          decoration: BoxDecoration(
            shape: shimmerShape ?? BoxShape.rectangle,
            color: UXColors.grey_20,
            borderRadius: shimmerShape == null
                ? BorderRadius.only(
                    topLeft: Radius.circular(
                        shimmerRadius ?? UXConstants.kFontSizeM),
                    topRight: Radius.circular(
                        shimmerRadius ?? UXConstants.kFontSizeM))
                : null,
          ),
        ),
      ),
      width: size?.width,
      height: size?.height,
      fit: fit ?? BoxFit.cover,
    );
  }

  Container _whenErrorLoadImage() {
    return Container(
      height: size?.height,
      width: size?.width,
      decoration: BoxDecoration(
        color: UXColors.grey_20,
        borderRadius: BorderRadius.circular(
          shimmerRadius ?? UXConstants.kFontSizeM,
        ),
      ),
      child: errorIcon(size),
    );
  }

  static Widget errorIcon(Size? size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.image_rounded,
          color: UXColors.grey_40,
        ),
        // if size > 700
        if (size != null && size.width > 50)
          const SizedBox(height: UXConstants.kPaddingXS),
        if (size != null && size.width > 50)
          const Text(
            "Not Found",
            style: TextStyle(
              color: UXColors.grey_40,
              fontSize: UXConstants.kFontSizeS,
            ),
          ),
      ],
    );
  }
}
