import 'package:flutter/material.dart';

import '../../../config/ux_constants.dart';
import 'button_minus.dart';
import 'button_plus.dart';

class AXStockButton extends StatefulWidget {
  const AXStockButton({this.price, super.key});
  final int? price;

  @override
  State<AXStockButton> createState() => _AXStockButtonState();
}

class _AXStockButtonState extends State<AXStockButton> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AXButtonMinus(
              active: count >= 2 ? true : false,
              callback: () {
                if (count >= 2) {
                  setState(() {
                    count--;
                  });
                }
              },
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              count.toString(),
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeM,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 10,
            ),
            AXButtonPlus(
              active: true,
              callback: () {
                setState(() {
                  count++;
                });
              },
            )
          ],
        ),
        Builder(builder: (context) {
          return Align(
              alignment: Alignment.centerRight,
              child: Text('Total : Rp ${(widget.price ?? 0) * count}'));
        })
      ],
    );
  }
}
