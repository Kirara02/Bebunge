import 'dart:async';

import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/bebeli_keranjang.dart/widget/bbl_button_minus.dart';
import 'package:bebunge/src/features/bebeli_keranjang.dart/widget/bbl_button_plus.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:flutter/material.dart';

class BBLStockButton extends StatefulWidget {
  const BBLStockButton(
      {this.callback,
      this.stock = 0,
      this.submit,
      this.withStock = false,
      this.quantity,
      super.key});
  final int? quantity;
  final int stock;
  final Function(int)? callback;
  final Function(bool)? submit;
  final bool withStock;
  @override
  State<BBLStockButton> createState() => _BBLStockButtonState();
}

class _BBLStockButtonState extends State<BBLStockButton> {
  int value = 1;

  Timer? timer;

  @override
  void initState() {
    setState(() {
      value = widget.quantity!;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(Radius.circular(8)),
          border: Border.all(color: UXColors.grey_60)),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        BBLButtonMinus(
          onTap: () {
            if (value >= 2) {
              setState(() {
                value--;
                if (widget.callback != null) {
                  widget.callback!(value);
                }
                if (widget.submit != null) {
                  widget.submit!(true);
                }
              });
            }
          },
          onLongPress: () {
            timer = Timer.periodic(Duration(milliseconds: 400), (timer) {
              if (value - 10 <= 1) {
                timer.cancel();
                return;
              }
              setState(() {
                value = value - 10;
                if (widget.callback != null) {
                  widget.callback!(value);
                }

                if (widget.submit != null) {
                  widget.submit!(true);
                }
              });
            });
          },
          onLongPressEnd: () {
            timer?.cancel();
          },
          active: value >= 2 ? true : false,
        ),
        UXSpacer(width: UXConstants.kPaddingM),
        Text('${value.toString()}',
            style: TextStyle(
              fontSize: UXConstants.kFontSizeL,
            )),
        UXSpacer(width: UXConstants.kPaddingM),
        BBLButtonPlus(
          active: true,
          onTap: () {
            if (widget.callback != null) {
              if (widget.withStock) {
                if (value < widget.stock) {
                  setState(() {
                    value++;
                    widget.callback!(value);
                    if (widget.submit != null) {
                      widget.submit!(true);
                    }
                  });
                }
              } else {
                setState(() {
                  value++;
                  widget.callback!(value);
                  if (widget.submit != null) {
                    widget.submit!(true);
                  }
                });
              }
            }
          },
          onLongPress: () {
            timer = Timer.periodic(Duration(milliseconds: 400), (timer) {
              if (value <= widget.stock) {
                timer.cancel();
                return;
              }
              setState(() {
                value = value + 10;
                // if (widget.callback != null) {
                //   widget.callback!(value);
                //   widget.submit!(true);
                // }
              });
            });
          },
          onLongPressEnd: () {
            timer?.cancel();
          },
        ),
      ]),
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
