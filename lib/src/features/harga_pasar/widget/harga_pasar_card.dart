import 'package:flutter/material.dart';
import 'package:money2/money2.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/common/ux_spacer.dart';
import '../../../widgets/images/cache_network.dart';

Widget hargaPasarCard(BuildContext context,
    {String? image, String? price, String? comoditasName}) {
  return Material(
    elevation: 3,
    borderRadius: BorderRadiusDirectional.circular(8),
    child: InkWell(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                color: UXAppColors.primary,
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(8), topEnd: Radius.circular(8))),
            height: 40,
            alignment: Alignment.center,
            width: double.infinity,
            child: Text(
              Money.fromNumWithCurrency(
                int.tryParse(price ?? '0') ?? 0,
                Currency.create('IDR', 2,
                    country: 'Indonesia',
                    symbol: 'Rp',
                    invertSeparators: true,
                    pattern: 'S###.###',
                    unit: 'rupiah'),
              ).toString(),
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeL,
                  fontWeight: FontWeight.w700,
                  color: UXColors.white),
            ),
          ),
          SizedBox(
            height: 120,
            child:
                UXCacheNetworkImage(imageUrl: image ?? "", fit: BoxFit.cover),
          ),
          UXSpacer(
            height: UXConstants.kPaddingM,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
            child: Text(
              comoditasName ?? "",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeM,
                  fontWeight: FontWeight.w300),
            ),
          ),
          UXSpacer(height: UXConstants.kPaddingL)
        ],
      ),
    ),
  );
}
