import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/widgets/button/button.dart';
import 'package:bebunge/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BookingCodeDialog extends StatefulWidget {
  final String code;
  const BookingCodeDialog({super.key, required this.code});

  @override
  State<BookingCodeDialog> createState() => _BookingCodeDialogState();
}

class _BookingCodeDialogState extends State<BookingCodeDialog> {
  _toast() {
    return UXToast.show(
      message: "Text Copied",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 36,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Kode Booking",
              style: TextStyle(
                fontSize: UXConstants.kFontSizeL,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Gunakan kode booking ini saat pendaftaran untuk mendapatkan kuota pendaftaran",
              style: TextStyle(
                color: UXColors.custom_grey2,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      border: Border.all(color: UXAppColors.grey2),
                    ),
                    child: Center(
                      child: Text(
                        widget.code,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: widget.code)).then(
                      (value) => _toast(),
                    );
                  },
                  child: Container(
                    width: 52,
                    height: 36,
                    decoration: BoxDecoration(
                      color: UXAppColors.grey2,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "copy".toUpperCase(),
                        style: TextStyle(
                          fontSize: UXConstants.kFontSizeS,
                          fontWeight: FontWeight.w500,
                          color: UXColors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            UXButton(
              title: "OKE",
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
