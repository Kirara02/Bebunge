import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../config/ux_constants.dart';
import '../wrapper/state_wrapper.dart';

class FlashMessageContent extends StatelessWidget {
  const FlashMessageContent({Key? key, this.title, required this.message})
      : super(key: key);

  final String? title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        contents(context),
        bubleIcon(),
        Positioned(
          top: -16,
          left: UXConstants.kPaddingS,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Assets.svgs.fail.svg(
                height: 40,
              ),
              Positioned(
                top: 10,
                child: Assets.svgs.close.svg(
                  height: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container contents(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: const Color(0xFFC72C41),
        borderRadius: BorderRadius.circular(UXConstants.kRadiusL),
      ),
      child: Row(
        children: [
          const SizedBox(width: 48),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(UXConstants.kPaddingS),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? lookupMessages.ohSnap(),
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(height: UXConstants.kPaddingXS * 0.1),
                  AutoSizeText(
                    message,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontSize: UXConstants.kFontSizeM,
                        ),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Positioned bubleIcon() {
    return Positioned(
      bottom: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(UXConstants.kRadiusL),
        child: Assets.svgs.bubbles.svg(
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}
