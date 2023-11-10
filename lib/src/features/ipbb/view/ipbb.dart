import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/features/ipbb/bloc/ipbb_bloc.dart';
import 'package:bebunge/src/widgets/common/empty_list.dart';
import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money2/money2.dart';

import '../../../config/ux_constants.dart';
import '../../../widgets/common/ux_spacer.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../widget/objek_pajak_detail.dart';

class IpbbPage extends StatefulWidget {
  const IpbbPage({super.key});

  @override
  State<IpbbPage> createState() => _IpbbPageState();
}

class _IpbbPageState extends State<IpbbPage> {
  var separator = ' - ';
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IpbbBloc(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: UXAppColors.primary,
          foregroundColor: UXColors.white,
          title: Text('IPBB Kabupaten Bekasi'),
          centerTitle: true,
        ),
        body: Builder(builder: (context) {
          return Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: SizedBox(
                height: 40,
                child: UXInputCustom(
                  // autoValidMode: AutovalidateMode.always,
                  keyboardType: TextInputType.number,
                  // inputFormatters: [
                  //   LengthLimitingTextInputFormatter(18 + separator.length * 4),
                  //   CardFormatter(separator: separator),
                  // ],
                  // validator: (val) {
                  //   /// check if it is null empty or whitespace
                  //   if (val == null || val.isEmpty || val.trim().isEmpty) {
                  //     return "Please input card number";
                  //   }

                  //   var cleanCardNumber = val.replaceAll(separator, '');
                  //   return null;
                  //   // if (_validateCard(cleanCardNumber)) {
                  //   //   return "invalid card number";
                  //   // }
                  // },
                  textInputAction: TextInputAction.search,

                  controller: _searchController,
                  hintText: 'Masukkan 18 Digit Nomor Objek Pajak',
                  onFieldSubmitted: (value) {
                    if (value.isNotEmpty) {
                      context.read<IpbbBloc>()
                        ..add(IpbbEvent.started(nopNumber: value));
                      _searchController.clear();
                    }
                  },
                  onChanged: (value) {},
                ),
              ),
            ),
            UXSpacer(height: 10),
            BlocBuilder<IpbbBloc, IpbbState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => SizedBox(),
                  loading: () => UXLoading(),
                  error: (error) {
                    return error.maybeWhen(
                        orElse: () => SizedBox(),
                        notFound: (reason) =>
                            EmptyList(size: 150, title: reason),
                        badRequest: (reason) {
                          return EmptyList(size: 150, title: reason);
                        });
                  },
                  loaded: (data) {
                    return Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            ObjekPajakDetail(
                                nop: data.nop,
                                alamat: data.op.alamat,
                                kecamatan: data.op.kecamatan,
                                kelurahan: data.op.kelurahan),
                            UXSpacer(height: UXConstants.kPaddingL),
                            ListView(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                reverse: true,
                                children: List.generate(
                                    data.tagihan.length,
                                    (index) => nopCard(
                                        status:
                                            data.tagihan[index].lunas == 'Ya'
                                                ? true
                                                : false,
                                        tahun: data.tagihan[index].tahun,
                                        pokok: data.tagihan[index].pokok,
                                        denda: data.tagihan[index].denda,
                                        bayar: data.tagihan[index].bayar,
                                        sisa: data.tagihan[index].sisa,
                                        tanggal:
                                            data.tagihan[index].tglBayar))),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            )
          ]);
        }),
      ),
    );
  }

  nopCard(
      {bool status = false,
      String? tahun,
      int? pokok,
      int? denda,
      int? bayar,
      int? sisa,
      String? tanggal}) {
    return Card(
      color: status ? UXAppColors.gojekGreen : UXAppColors.gojekRed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    'Tahun ${tahun}',
                    style: TextStyle(
                        fontSize: UXConstants.kFontSizeM,
                        fontWeight: FontWeight.w600),
                  ),
                  UXSpacer(width: 5),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                        color:
                            status ? UXAppColors.primary : UXAppColors.danger,
                        borderRadius: BorderRadiusDirectional.circular(5)),
                    child: Text(
                      status ? 'Lunas' : 'Belum',
                      style: TextStyle(
                          fontSize: UXConstants.kFontSizeS,
                          color: UXColors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              UXSpacer(height: 5),
              duplicateRow(
                  field: 'Pokok',
                  content: Money.fromNumWithCurrency(
                    pokok ?? 0,
                    Currency.create('IDR', 2,
                        country: 'Indonesia',
                        symbol: 'Rp ',
                        invertSeparators: true,
                        pattern: 'S###.###',
                        unit: 'rupiah'),
                  ).toString()),
              duplicateRow(
                  field: 'Denda',
                  content: Money.fromNumWithCurrency(
                    denda ?? 0,
                    Currency.create('IDR', 2,
                        country: 'Indonesia',
                        symbol: 'Rp ',
                        invertSeparators: true,
                        pattern: 'S###.###',
                        unit: 'rupiah'),
                  ).toString()),
              duplicateRow(
                  field: 'Bayar',
                  content: Money.fromNumWithCurrency(
                    bayar ?? 0,
                    Currency.create('IDR', 2,
                        country: 'Indonesia',
                        symbol: 'Rp ',
                        invertSeparators: true,
                        pattern: 'S###.###',
                        unit: 'rupiah'),
                  ).toString()),
              duplicateRow(
                  field: 'Sisa',
                  content: Money.fromNumWithCurrency(
                    sisa ?? 0,
                    Currency.create('IDR', 2,
                        country: 'Indonesia',
                        symbol: 'Rp ',
                        invertSeparators: true,
                        pattern: 'S###.###',
                        unit: 'rupiah'),
                  ).toString()),
              duplicateRow(field: 'Tanggal Pembayaran', content: tanggal)
            ]),
      ),
    );
  }

  Widget duplicateRow({String? field, String? content}) {
    return Row(children: [
      Text('${field}:'),
      UXSpacer(width: UXConstants.kPaddingXS),
      Text(content ?? '')
    ]);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
