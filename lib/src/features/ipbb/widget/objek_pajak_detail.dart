import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:flutter/material.dart';

class ObjekPajakDetail extends StatelessWidget {
  const ObjekPajakDetail(
      {this.nop, this.alamat, this.kecamatan, this.kelurahan, super.key});
  final String? nop;
  final String? alamat;
  final String? kelurahan;
  final String? kecamatan;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 5),
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Objek Pajak",
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeL,
                  fontWeight: FontWeight.w600),
            ),
            UXSpacer(height: UXConstants.kPaddingS),
            duplicateRow(field: 'NOP', content: nop),
            duplicateRow(field: 'Alamat', content: alamat),
            duplicateRow(field: 'Kecamatan', content: kecamatan),
            duplicateRow(field: 'Kelurahan', content: kelurahan)
          ]),
    );
  }

  Widget duplicateRow({String? field, String? content}) {
    return Row(children: [
      Text('${field}:',
          style: TextStyle(
              fontSize: UXConstants.kFontSizeM, fontWeight: FontWeight.w600)),
      UXSpacer(width: UXConstants.kPaddingXS),
      Text(content ?? '')
    ]);
  }
}
