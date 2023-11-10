import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../gen/assets.gen.dart';

class BossPage extends StatefulWidget {
  const BossPage({super.key});

  @override
  State<BossPage> createState() => _BossPageState();
}

class _BossPageState extends State<BossPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BOSS')),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieBuilder.asset(Assets.lottie.underContruction.path),
            UXSpacer(
              height: 10,
            ),
            Flexible(
              child: Text(
                "Segera Hadir!",
                style: TextStyle(
                    fontSize: UXConstants.kFontSizeXL,
                    color: UXAppColors.biru2,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              'Layanan ini sedang dalam tahap \n pengembangan, nantikan fitur ini pada\nupdate berikutnya ',
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeL, color: UXColors.grey_60),
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    UXAppColors.biru2,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali',
                    style: TextStyle(
                        fontSize: UXConstants.kFontSizeL,
                        color: UXColors.white)))
          ]),
    );
  }
}
