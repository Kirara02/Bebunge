import 'package:bebunge/gen/assets.gen.dart';
import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:flutter/material.dart';

class BookingSuccessDialog extends StatefulWidget {
  const BookingSuccessDialog({super.key});

  @override
  State<BookingSuccessDialog> createState() => _BookingSuccessDialogState();
}

class _BookingSuccessDialogState extends State<BookingSuccessDialog> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pop(context);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.images.checkMark.image(
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Booking Berhasil!".toUpperCase(),
              style: TextStyle(
                fontSize: UXConstants.kFontSizeXXL,
                fontWeight: FontWeight.w600,
                color: UXAppColors.darkGreen,
              ),
            )
          ],
        ),
      ),
    );
  }
}
