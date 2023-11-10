import 'dart:convert';
import 'dart:developer';

import 'package:bebunge/src/features/beranda/view/beranda.dart';
import 'package:bebunge/src/features/check_out/bloc/checkout_bloc.dart';
import 'package:bebunge/src/features/check_out/widget/ppk_selector.dart';
import 'package:bebunge/src/features/check_out/widget/skpd_selector.dart';
import 'package:bebunge/src/network/model/bebeli/bebeli_cart_mod.dart';
import 'package:bebunge/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:money2/money2.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/button/button_custom.dart';
import '../../../widgets/common/date_picker.dart';
import '../../../widgets/common/ux_spacer.dart';
import '../../../widgets/forms/ux_input_custom.dart';

class CheckOut extends StatefulWidget {
  const CheckOut(this.cardItems, {super.key});
  final BebeliCartMod cardItems;

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  final _form = GlobalKey<FormState>();
  final _waktuController = TextEditingController();
  final _rekeningController = TextEditingController();
  final _kegiatanController = TextEditingController();
  final _tahunController = TextEditingController();
  final _ppkController = TextEditingController();
  final _noteController = TextEditingController();
  late String date;
  bool validForm = false;

  Future<TimeOfDay?> _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dialOnly,
    );
    if (newTime != null) {
      return newTime;
    } else {
      return null;
    }
  }

  @override
  void initState() {
    date = DateFormat("yyyy-MM-dd").format(DateTime.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckoutBloc(),
      child: Scaffold(
          appBar: AppBar(
              title: Text(
            'Checkout',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          )),
          body: Builder(builder: (context) {
            return BlocListener<CheckoutBloc, CheckoutState>(
              listener: (context, state) {
                state.whenOrNull(
                  loading: () {},
                  loaded: (data) async {
                    var pref = await SharedPreferences.getInstance();
                    pref.remove(UXConstants.kodeTransaksi);
                    _suksesCheckout(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                                child: Beranda(),
                                type: PageTransitionType.leftToRight),
                            (route) => false);
                      },
                    );
                  },
                );
              },
              child: Column(children: [
                Expanded(child: form(context)),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: UXColors.defaultScaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, -1),
                          spreadRadius: -9,
                          blurRadius: 10,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        )
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 25, right: 25, top: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Payment',
                                style: TextStyle(
                                    fontSize: UXConstants.kFontSizeM,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                Money.fromNumWithCurrency(
                                  widget.cardItems.nilai ?? 0,
                                  Currency.create('IDR', 2,
                                      country: 'Indonesia',
                                      symbol: 'Rp',
                                      invertSeparators: true,
                                      pattern: 'S###.###',
                                      unit: 'rupiah'),
                                ).toString(),
                                style: TextStyle(
                                    fontSize: UXConstants.kFontSizeL,
                                    fontWeight: FontWeight.w700,
                                    color: UXAppColors.primary),
                              )
                            ]),
                      ),
                      UXSpacer(height: 20),
                      Builder(builder: (context) {
                        return Container(
                          height: 50,
                          padding:
                              EdgeInsetsDirectional.symmetric(horizontal: 20),
                          child: UXButtonCustom(
                            onPressed: () async {
                              if (_waktuController.text.isEmpty) {
                                return showMessage('Waktu Pengiriman');
                              } else if (_rekeningController.text.isEmpty) {
                                return showMessage('Kode Rekening');
                              } else if (_kegiatanController.text.isEmpty) {
                                return showMessage('Nama Kegiatan');
                              } else if (_tahunController.text.isEmpty) {
                                return showMessage('Tahun DPA');
                              } else if (_ppkController.text.isEmpty) {
                                return showMessage('PPK Tujuan');
                              }
                              var pref = await SharedPreferences.getInstance();
                              String? member = await pref
                                  .getString(UXConstants.bebeliAccount);
                              String? transactionCode = await pref
                                  .getString(UXConstants.kodeTransaksi);
                              if (member != null && member.isNotEmpty) {
                                Map<String, dynamic> userMap =
                                    jsonDecode(member) as Map<String, dynamic>;
                                var json = {
                                  "payload": {
                                    "username": userMap['username'],
                                    "type": userMap['type'],
                                    "token": userMap['token'],
                                    "kode_transaksi": transactionCode,
                                    "waktu_pengiriman": _waktuController.text,
                                    "data": widget.cardItems.data,
                                    "kode_rekening": _rekeningController.text,
                                    "nama_kegiatan": _kegiatanController.text,
                                    "tahun_dpa": _tahunController.text,
                                    "ppk_tujuan": _ppkController.text,
                                    "catatan": _noteController.text
                                  }
                                };
                                log(json.toString());
                                context.read<CheckoutBloc>()
                                  ..add(CheckoutEvent.started(
                                      params: jsonEncode(json)));
                              }
                            },
                            title: 'Check Out',
                            withHorizontalPadding: true,
                            fontSize: UXConstants.kFontSizeL,
                            backgroundColor: UXAppColors.primary,
                            borderShape: ContinuousRectangleBorder(
                                borderRadius:
                                    BorderRadiusDirectional.circular(30)),
                            enabled: true,
                          ),
                        );
                      }),
                      UXSpacer(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ]),
            );
          })),
    );
  }

  Form form(BuildContext context) {
    return Form(
        key: _form,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 20),
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            const SizedBox(height: 20),
            //ANCHOR - Waktu Pengiriman
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Waktu Pengiriman',
                  style: const TextStyle(
                    fontSize: UXConstants.kFontSizeM,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                UXInputCustom(
                  autoValidMode: AutovalidateMode.always,
                  hintText: '-- pilih --',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  controller: _waktuController,
                  readOnly: true,
                  onTap: () {
                    _deliveryDate().then((dValue) {
                      if (dValue != null) {
                        _selectTime().then((tValue) {
                          if (tValue != null) {
                            setState(() {
                              _waktuController.text =
                                  '${dValue} ${tValue.hour.toString().padLeft(2, '0')}:${tValue.minute.toString().padLeft(2, '0')}:00';
                              formValidate();
                            });
                          }
                        });
                      }
                    });
                  },
                  validator: (p0) =>
                      p0!.isEmpty ? "Waktu pengiriman belum di atur" : null,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    setState(() {
                      formValidate();
                    });
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
                  'Kode Rekening',
                  style: const TextStyle(
                    fontSize: UXConstants.kFontSizeM,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                UXInputCustom(
                  autoValidMode: AutovalidateMode.always,
                  labelText: "Masukkan Rekening Tujuan",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  // prefixIcon: Icons.password_rounded,
                  controller: _rekeningController,
                  // errorText: _error.message("password"),
                  keyboardType: TextInputType.text,
                  validator: (p0) =>
                      p0!.isEmpty ? "Kode rekening belum diisi" : null,
                  onChanged: (value) {
                    setState(() {
                      formValidate();
                    });
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
                  'Nama Kegiatan',
                  style: const TextStyle(
                    fontSize: UXConstants.kFontSizeM,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                UXInputCustom(
                  autoValidMode: AutovalidateMode.always,
                  labelText: "Masukkan Nama Kegiatan",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  // prefixIcon: Icons.password_rounded,
                  controller: _kegiatanController,
                  // errorText: _error.message("password"),
                  keyboardType: TextInputType.text,
                  validator: (p0) =>
                      p0!.isEmpty ? "Kegiatan belum diisi" : null,
                  onChanged: (value) {
                    setState(() {
                      formValidate();
                    });
                  },
                ),
                //ANCHOR - DPA
              ],
            ),
            const SizedBox(
              height: UXConstants.kPaddingL,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tahun DPA',
                  style: const TextStyle(
                    fontSize: UXConstants.kFontSizeM,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                UXInputCustom(
                  autoValidMode: AutovalidateMode.always,
                  labelText: "Masukkan tahun DPA",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  // prefixIcon: Icons.password_rounded,
                  controller: _tahunController,
                  // errorText: _error.message("password"),
                  keyboardType: TextInputType.number,

                  validator: (p0) =>
                      p0!.isEmpty ? "Tahun DPA belum diisi" : null,
                  // onChanged: (value) {
                  //   setState(() {
                  //     formValidate();
                  //   });
                  // },
                ),
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
                  'PPK Tujuan',
                  style: const TextStyle(
                    fontSize: UXConstants.kFontSizeM,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                UXInputCustom(
                  autoValidMode: AutovalidateMode.always,
                  labelText: "Masukkan PPK Tujuan",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  // prefixIcon: Icons.password_rounded,
                  controller: _ppkController,
                  // errorText: _error.message("password"),
                  onTap: () {
                    _skpdTujuan().then((spkdValue) async {
                      if (spkdValue != null) {
                        print(spkdValue);
                        await _ppkTujuan(spkdValue).then((value) {
                          if (value != null) {
                            setState(() {
                              _ppkController.text = value;
                            });
                          }
                        });
                      }
                    });
                  },
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  validator: (p0) =>
                      p0!.isEmpty ? "PPK Tujuan belum diisi" : null,
                  onChanged: (value) {
                    setState(() {
                      formValidate();
                    });
                  },
                ),
              ],
            ),
            //ANCHOR - Catatan
            const SizedBox(
              height: UXConstants.kPaddingL,
            ),
            TextField(
              textAlign: TextAlign.left,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  hintText: 'Catatan',
                  contentPadding: EdgeInsets.all(20.0),
                  prefixIcon: Icon(Icons.note_add)),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              controller: _noteController,
            ),
            const SizedBox(
              height: UXConstants.kPaddingL,
            ),
          ]),
        ));
  }

  showMessage(String? text) {
    return UXToast.show(
        message: "Kolom ${text}  belum diisi",
        backgroundColor: UXAppColors.danger,
        textColor: UXColors.white,
        toastGravity: ToastGravity.CENTER);
  }

  Future _deliveryDate() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
            insetPadding: EdgeInsets.all(10),
            child: DatePicker(
              passDate: false,
              tanggal_awal: date,
            ));
      },
    );
  }

  formValidate() {
    if (_waktuController.text.isNotEmpty) {
      if (_rekeningController.text.isNotEmpty) {
        if (_kegiatanController.text.isNotEmpty) {
          if (_tahunController.text.isNotEmpty) {
            if (_ppkController.text.isNotEmpty) {
              setState(() {
                validForm = true;
              });
            } else {
              setState(() {
                validForm = false;
              });
            }
          } else {
            setState(() {
              validForm = false;
            });
          }
        } else {
          setState(() {
            validForm = false;
          });
        }
      } else {
        setState(() {
          validForm = false;
        });
      }
    } else {
      setState(() {
        validForm = false;
      });
    }
  }

  Future _skpdTujuan() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 10),
          child: SkpdSelector(),
          insetAnimationCurve: Curves.easeInOut,
          insetAnimationDuration: Duration(milliseconds: 400),
          elevation: 5,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(25)),
        );
      },
    );
  }

  Future _ppkTujuan(String id) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 10),
          child: PpkSelector(idSkpd: id),
          insetAnimationCurve: Curves.easeInOut,
          insetAnimationDuration: Duration(milliseconds: 400),
          elevation: 5,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(25)),
        );
      },
    );
  }

  Future _suksesCheckout({VoidCallback? onPressed}) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
          alignment: Alignment.center,
          actions: [TextButton(onPressed: onPressed, child: Text("Kembali"))],
          title: Text('Status Pemesanan'),
          content: Row(
            children: [
              Icon(Icons.check_circle, color: UXAppColors.primary),
              Text(
                'Pemesanan Sukses',
                style: TextStyle(fontSize: UXConstants.kFontSizeL),
              )
            ],
          )),
    );
  }

  @override
  void dispose() {
    _waktuController.dispose();
    _rekeningController.dispose();
    _kegiatanController.dispose();
    _tahunController.dispose();
    _ppkController.dispose();
    _noteController.dispose();
    super.dispose();
  }
}
