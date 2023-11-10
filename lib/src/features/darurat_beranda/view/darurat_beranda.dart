import 'package:bebunge/l10n/locale_keys.g.dart';
import 'package:bebunge/src/features/darurat_beranda/bloc/emergency_report_bloc.dart';
import 'package:bebunge/src/features/darurat_beranda/widget/darurat_list.dart';
import 'package:bebunge/src/features/darurat_beranda/widget/location_widget.dart';
import 'package:bebunge/src/widgets/button/button_custom.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/dialogs/ux_toast_wrapper.dart';
import '../../../widgets/forms/ux_input_custom.dart';

class DaruratBeranda extends StatefulWidget {
  const DaruratBeranda({super.key});

  @override
  State<DaruratBeranda> createState() => _DaruratBerandaState();
}

class _DaruratBerandaState extends State<DaruratBeranda> {
  final _form = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _teleponController = TextEditingController();
  final _alamatController = TextEditingController();
  final _lokasiController = TextEditingController();
  final _kategoryController = TextEditingController();
  String lat = '';
  String lon = '';
  String idKat = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _teleponController.dispose();
    _alamatController.dispose();
    _lokasiController.dispose();
    _kategoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmergencyReportBloc(),
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text(LocaleKeys.emergency_emergency_button.tr(),
                style: TextStyle(
                    fontSize: UXConstants.kFontSizeXL,
                    fontWeight: FontWeight.w700)),
            backgroundColor: UXAppColors.primary,
            foregroundColor: UXColors.white,
            bottom: PreferredSize(
                child: SizedBox(), preferredSize: Size.fromHeight(10)),
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(25),
                    bottomEnd: Radius.circular(25))),
          ),
          body: Builder(builder: (context) {
            return BlocListener<EmergencyReportBloc, EmergencyReportState>(
              listener: (context, state) {
                state.whenOrNull(
                  loading: () => UXToast.show(
                      message: LocaleKeys.emergency_send_report_loading.tr(),
                      backgroundColor: UXAppColors.gojekBlue,
                      textColor: UXAppColors.biru2,
                      toastGravity: ToastGravity.CENTER),
                  loaded: (data) => UXToast.show(
                      message: LocaleKeys.emergency_send_report_success.tr(),
                      backgroundColor: UXAppColors.primary,
                      textColor: UXColors.white,
                      toastGravity: ToastGravity.CENTER),
                  error: (error) => UXToast.show(
                      message: LocaleKeys.emergency_send_report_error.tr(),
                      backgroundColor: UXAppColors.danger,
                      textColor: UXColors.white,
                      toastGravity: ToastGravity.CENTER),
                );
              },
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  form(context),
                  UXSpacer(height: 20),
                  Container(
                    height: 50,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                    child: UXButtonCustom(
                      onPressed: () async {
                        if (_nameController.text.isEmpty) {
                          return showMessage('Nama Anda');
                        } else if (_teleponController.text.isEmpty) {
                          return showMessage('Nomor Telepon');
                        } else if (_alamatController.text.isEmpty) {
                          return showMessage('Alamat');
                        } else if (_lokasiController.text.isEmpty) {
                          return showMessage('Lokasi Anda');
                        } else if (_kategoryController.text.isEmpty) {
                          return showMessage('Kategory Kejadian');
                        }
                        // log("${lat},${lon},${idKat}");
                        BlocProvider.of<EmergencyReportBloc>(context).add(
                            EmergencyReportEvent.started(
                                nama: _nameController.text,
                                tlp: _teleponController.text,
                                alamat: _alamatController.text,
                                kategoriEvent: idKat,
                                lokasi: _lokasiController.text,
                                lat: lat,
                                lon: lon));
                      },
                      title: 'Kirim Laporan',
                      withHorizontalPadding: true,
                      fontSize: UXConstants.kFontSizeL,
                      backgroundColor: UXAppColors.danger,
                      borderShape: ContinuousRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(30)),
                      enabled: true,
                    ),
                  ),
                  UXSpacer(
                    height: 200,
                  )
                ]),
              ),
            );
          })),
    );
  }

  showMessage(String? text) {
    return UXToast.show(
        message: "Kolom ${text}  belum diisi",
        backgroundColor: UXAppColors.danger,
        textColor: UXColors.white,
        toastGravity: ToastGravity.CENTER);
  }

  Future _showList() {
    return showDialog(
      context: context,
      builder: (context) {
        return DaruratList();
      },
    );
  }

  Form form(BuildContext context) {
    return Form(
        key: _form,
        child: Column(children: [
          const SizedBox(height: 20),
          //ANCHOR - Waktu Pengiriman
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.emergency_form_title_name.tr(),
                style: const TextStyle(
                  fontSize: UXConstants.kFontSizeM,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              UXInputCustom(
                autoValidMode: AutovalidateMode.always,
                hintText: 'Nama Anda',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                controller: _nameController,
                onTap: () {},
                validator: (p0) => p0!.isEmpty ? "Nama anda belum diisi" : null,
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  // formValidate();
                },
              ),
            ],
          ),
          //ANCHOR - Kode Rekening
          const SizedBox(
            height: UXConstants.kPaddingL,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nomor Telepon',
                style: const TextStyle(
                  fontSize: UXConstants.kFontSizeM,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              UXInputCustom(
                autoValidMode: AutovalidateMode.always,
                labelText: "Masukkan nomor telepon anda",
                floatingLabelBehavior: FloatingLabelBehavior.never,
                // prefixIcon: Icons.password_rounded,
                controller: _teleponController,
                // errorText: _error.message("password"),
                keyboardType: TextInputType.phone,
                validator: (p0) =>
                    p0!.isEmpty ? "Nomor telepon belum diisi" : null,
                onChanged: (value) {
                  // formValidate();
                },
              ),
            ],
          ),
          //ANCHOR - Kegiatan
          const SizedBox(
            height: UXConstants.kPaddingL,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Alamat',
                style: const TextStyle(
                  fontSize: UXConstants.kFontSizeM,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              UXInputCustom(
                autoValidMode: AutovalidateMode.always,
                labelText: "Masukkan Alamat Anda Sekarang",
                floatingLabelBehavior: FloatingLabelBehavior.never,
                // prefixIcon: Icons.password_rounded,
                controller: _alamatController,
                // errorText: _error.message("password"),
                keyboardType: TextInputType.text,
                validator: (p0) =>
                    p0!.isEmpty ? "Alamat anda belum diisi" : null,
                onChanged: (value) {
                  // formValidate();
                },
              ),
              //ANCHOR - DPA
            ],
          ),

          //ANCHOR - PPK Tujuan
          const SizedBox(
            height: UXConstants.kPaddingL,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kejadian',
                style: const TextStyle(
                  fontSize: UXConstants.kFontSizeM,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              UXInputCustom(
                autoValidMode: AutovalidateMode.always,
                labelText: "Masukkan kejadian",
                floatingLabelBehavior: FloatingLabelBehavior.never,

                // prefixIcon: Icons.password_rounded,
                controller: _kategoryController,
                // errorText: _error.message("password"),
                onTap: () {
                  _showList().then((value) {
                    if (value != null) {
                      setState(() {
                        _kategoryController.text = value[1];
                        idKat = value[0].toString();
                      });
                    }
                  });
                },
                readOnly: true,
                keyboardType: TextInputType.number,
                validator: (p0) => p0!.isEmpty ? "kejadian belum diisi" : null,
                onChanged: (value) {
                  // formValidate();
                },
              ),
            ],
          ),
          const SizedBox(
            height: UXConstants.kPaddingL,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lokasi',
                style: const TextStyle(
                  fontSize: UXConstants.kFontSizeM,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              UXInputCustom(
                autoValidMode: AutovalidateMode.always,
                labelText: "Masukkan lokasi anda",
                readOnly: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                // prefixIcon: Icons.password_rounded,
                controller: _lokasiController,
                // errorText: _error.message("password"),
                onTap: () {
                  _getLoc().then((value) {
                    if (value != null) {
                      _lokasiController.text = value[0];
                      lat = value[1]['lat'];
                      lon = value[1]['lon'];
                      setState(() {});
                    }
                  });
                },
                keyboardType: TextInputType.number,
                validator: (p0) => p0!.isEmpty ? "Lokasi belum diisi" : null,
                onChanged: (value) {
                  // formValidate();
                },
              ),
            ],
          ),
        ]));
  }

  Future _getLoc() {
    return showDialog(
      context: context,
      builder: (context) {
        return LocationWidget();
      },
    );
  }

  Widget buttonSubmit() {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Padding(
        padding:
            const EdgeInsets.only(bottom: 10, left: 20, right: 20, top: 20),
        child: UXButtonCustom(
          verticalPadding: 8,
          height: 40,
          title: 'Kirim Laporan',
          fontSize: UXConstants.kFontSizeL,
          backgroundColor: UXAppColors.red,
          titleColor: UXColors.white,
          enabled: true,
          borderShape: ContinuousRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(20)),
          onPressed: () {
            pushDynamicScreen(context,
                screen: PageTransition(
                    child: LocationWidget(),
                    type: PageTransitionType.rightToLeft));
          },
        ),
      )
    ]);
  }
}
