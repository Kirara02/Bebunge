import 'package:bebunge/gen/assets.gen.dart';
import 'package:bebunge/src/widgets/button/button.dart';
import 'package:flutter/material.dart';

class NoQuotaDialog extends StatelessWidget {
  final String message;
  final VoidCallback onTap;
  const NoQuotaDialog({super.key, required this.message, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 36, horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.svgs.alert.svg(),
            const SizedBox(
              height: 20,
            ),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            UXButton(
              title: "OKE",
              onPressed: onTap,
            )
          ],
        ),
      ),
    );
  }
}
