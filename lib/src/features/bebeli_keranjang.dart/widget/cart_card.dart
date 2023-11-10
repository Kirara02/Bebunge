import 'package:flutter/material.dart';
import 'package:money2/money2.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/common/ux_spacer.dart';
import '../../../widgets/images/cache_network.dart';
import 'bbl_stock_button.dart';

class CartCard extends StatefulWidget {
  const CartCard(
      {this.image,
      this.nameProduk,
      this.price,
      this.onDelete,
      this.quantity,
      this.onEdit,
      super.key});
  final String? image;
  final int? price;
  final String? nameProduk;
  final int? quantity;
  final VoidCallback? onDelete;
  final Function(int)? onEdit;

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  bool submit = false;
  // int? newQuantity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 20),
      child: Column(
        children: [
          SizedBox(
            height: 90,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                      width: 90,
                      height: 90,
                      child: UXCacheNetworkImage(
                          imageUrl: widget.image ?? '', fit: BoxFit.cover)),
                ),
                UXSpacer(
                  width: UXConstants.kPaddingS,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Text(
                          widget.nameProduk ?? '',
                          style: TextStyle(
                              fontSize: UXConstants.kFontSizeL,
                              fontWeight: FontWeight.w400),
                          softWrap: true,
                          maxLines: 2,
                        ),
                      ),
                      UXSpacer(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          Money.fromNumWithCurrency(
                            widget.price ?? 0,
                            Currency.create('IDR', 2,
                                country: 'Indonesia',
                                symbol: 'Rp',
                                invertSeparators: true,
                                pattern: 'S###.###',
                                unit: 'rupiah'),
                          ).toString(),
                          style: TextStyle(
                              fontSize: UXConstants.kFontSizeL,
                              fontWeight: FontWeight.w500,
                              color: UXAppColors.primary),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          UXSpacer(height: 20),
          Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        widget.onDelete!();
                      },
                      child:
                          Icon(Icons.delete_forever, color: UXColors.grey_60)),
                  UXSpacer(width: UXConstants.kPaddingS),
                  BBLStockButton(
                    quantity: widget.quantity,
                    submit: (p0) {
                      setState(() {
                        submit = p0;
                      });
                    },
                    callback: (p0) {
                      if (widget.onEdit != null) {
                        setState(() {
                          widget.onEdit!(p0);
                        });
                      }
                    },
                  ),
                  // UXSpacer(width: UXConstants.kPaddingS),
                  // submit
                  //     ? GestureDetector(
                  //         onTap: () {
                  //           if (widget.onEdit != null) {
                  //             setState(() {
                  //               // widget.onEdit!(newQuantity!);
                  //             });
                  //           }
                  //         },
                  //         child:
                  //             Icon(Icons.task_alt, color: UXAppColors.primary))
                  //     : SizedBox(),
                ],
              )),
        ],
      ),
    );
  }
}
