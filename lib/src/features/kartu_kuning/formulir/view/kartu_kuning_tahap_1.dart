// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:developer';

import 'package:bebunge/gen/assets.gen.dart';
import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/kartu_kuning/booking/view/booking_page.dart';
import 'package:bebunge/src/features/kartu_kuning/formulir/view/kartu_kuning_tahap_2.dart';
import 'package:bebunge/src/features/kartu_kuning/booking/widget/booking_redeem_dialog.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/dropdown_custom.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/input_radio_form.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/desa_mod.dart';
import 'package:bebunge/src/utils/dismiss_keyboard.dart';
import 'package:bebunge/src/widgets/button/button.dart';
import 'package:bebunge/src/widgets/common/preferences.dart';
import 'package:bebunge/src/widgets/forms/ux_input_custom.dart';
import 'package:bebunge/src/widgets/forms/ux_input_form.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../../widgets/common/date_picker.dart';
import '../../../../widgets/dialogs/ux_toast_wrapper.dart';
import '../../widget/input_check_form.dart';
import '../../widget/input_select_form.dart';
import '../../widget/kartu_kuning_form.dart';
import '../../widget/kartu_kuning_textarea.dart';
import '../bloc/formulir_kk_bloc.dart';
import '../../booking/widget/booking_form_dialog.dart';

class KartuKuningTahap1 extends StatefulWidget {
  final String? date;
  final String? bookingCode;

  KartuKuningTahap1({Key? key, this.date, this.bookingCode}) : super(key: key);

  @override
  State<KartuKuningTahap1> createState() => _KartuKuningTahap1State();
}

class _KartuKuningTahap1State extends State<KartuKuningTahap1> {
  TextEditingController nomorController = TextEditingController(text: '');
  TextEditingController dateController = TextEditingController(text: '');
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController placeController = TextEditingController(text: '');
  TextEditingController bornController = TextEditingController(text: '');
  TextEditingController addressController = TextEditingController(text: '');
  TextEditingController telpController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController posController = TextEditingController(text: '');
  TextEditingController tinggiController = TextEditingController(text: '');
  TextEditingController beratController = TextEditingController(text: '');
  TextEditingController codeController = TextEditingController(text: '');
  TextEditingController dateBookingController = TextEditingController(text: '');

  String? selectedGender;
  String? selectedStatus;
  String? selectedAgama;
  String? selectedKecamatan;
  String? selectedDesa;
  DesaMod? selectedDesaMod;

  bool selectedSimA = false;
  bool selectedSimB = false;
  bool selectedSimC = false;
  late String date;
  late String email;

  List<String> selectedSims = [];
  List<dynamic> listKec = [];
  List<dynamic> listReligion = [];
  List<dynamic> listMaritalStatus = [];
  List<dynamic> listDesa = [];
  List<DesaMod> listDesaMod = [];

  late bool loading = false;

  @override
  void initState() {
    super.initState();
    if (widget.date != null) {
      date = widget.date!;
    } else {
      date = DateFormat("yyyy-MM-dd").format(DateTime.now());
    }
    dateController.text = date;
  }

  Future _deliveryDate({bool passDate = false, bool todayDisabled = false}) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(10),
          child: DatePicker(
            passDate: passDate,
            tanggal_awal: date,
            todayDisabled: todayDisabled,
          ),
        );
      },
    );
  }

  _refresh() {
    nomorController.clear();
    dateController.clear();
    nameController.clear();
    placeController.clear();
    bornController.clear();
    selectedGender = null;
    selectedKecamatan = null;
    addressController.clear();
    telpController.clear();
    emailController.clear();
    posController.clear();
    selectedStatus = null;
    selectedAgama = null;
    tinggiController.clear();
    beratController.clear();
    selectedSimA = false;
    selectedSimB = false;
    selectedSimC = false;
    selectedSims.clear();
  }

  Future<FormData?> sendData() async {
    if (selectedSimA) selectedSims.add('A');
    if (selectedSimB) selectedSims.add('B');
    if (selectedSimC) selectedSims.add('C');

    if (nomorController.text.isEmpty) {
      _toast('Nomor Induk dan Kependudukan belum diisi');
      return null;
    } else if (dateController.text.isEmpty) {
      _toast('Tanggal Pendaftaran belum diisi');
      return null;
    } else if (nameController.text.isEmpty) {
      _toast('Nama Lengkap belum diisi');
      return null;
    } else if (placeController.text.isEmpty) {
      _toast('Tempat Lahir belum diisi');
      return null;
    } else if (bornController.text.isEmpty) {
      _toast('Tanggal Lahir belum diisi');
      return null;
    } else if (placeController.text.isEmpty) {
      _toast('Tempat Lahir belum diisi');
      return null;
    } else if (selectedGender == '' || selectedGender == null) {
      _toast('Jenis Kelamin belum diisi');
      return null;
    } else if (selectedKecamatan == null || selectedKecamatan == "") {
      _toast('Kecamatan Lengkap belum diisi');
      return null;
    } else if (selectedDesa == null || selectedDesa == "") {
      _toast('Desa belum diisi');
      return null;
    } else if (addressController.text.isEmpty) {
      _toast('Alamat Lengkap belum diisi');
      return null;
    } else if (telpController.text.isEmpty) {
      _toast('Telp/Hp belum diisi');
      return null;
    } else if (emailController.text.isEmpty) {
      _toast('Email belum diisi');
      return null;
    } else if (selectedStatus == '' || selectedStatus == null) {
      _toast('Status belum diisi');
      return null;
    } else if (selectedAgama == '' || selectedAgama == null) {
      _toast('Agama belum diisi');
      return null;
    } else if (tinggiController.text.isEmpty) {
      _toast('Tinggi Badan belum diisi');
      return null;
    } else if (beratController.text.isEmpty) {
      _toast('Berat Berat belum diisi');
      return null;
    }

    FormData formData = FormData.fromMap({
      'nik': nomorController.text,
      'reg_date': dateController.text,
      'name': nameController.text,
      'birth_place': placeController.text,
      'birth_date': bornController.text,
      'gender': selectedGender,
      'subdistrict': selectedKecamatan,
      "village": selectedDesa,
      'address': addressController.text,
      'phone': telpController.text,
      'email': emailController.text,
      'zip_code': posController.text,
      'marital_status': selectedStatus,
      'religion': selectedGender,
      'height': tinggiController.text,
      'weight': beratController.text,
      'sim[]': selectedSims
    });

    return formData;
  }

  Future _toast(String? message) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: UXAppColors.danger,
        toastGravity: ToastGravity.BOTTOM,
        textColor: UXColors.white);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FormulirKkBloc(),
        ),
      ],
      child: WillPopScope(
        onWillPop: () async {
          pushDynamicScreen(context,
              screen: PageTransition(
                  child: BookingPage(), type: PageTransitionType.leftToRight));
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'KARTU DATA PENCARI KERJA (AK/III)',
              style: const TextStyle(
                fontSize: UXConstants.kFontSizeL,
                color: UXColors.white,
              ),
            ),
            backgroundColor: UXAppColors.primaryColors,
          ),
          body: BlocListener<FormulirKkBloc, FormulirKkState>(
            listener: (context, state) {
              state.whenOrNull(
                loading: () => UXToast.show(
                    message: 'Sedang Menggirim Data',
                    backgroundColor: UXAppColors.gojekBlue,
                    textColor: UXAppColors.biru2,
                    toastGravity: ToastGravity.BOTTOM),
                loaded: (data) {
                  if (data.success!) {
                    UXToast.show(
                        message: 'Berhasil di upload',
                        backgroundColor: UXAppColors.primary,
                        textColor: UXColors.white,
                        toastGravity: ToastGravity.BOTTOM);
                    setState(() {
                      loading = true;
                    });
                    Future.delayed(
                      const Duration(seconds: 1),
                      () async {
                        setState(() {
                          loading = false;
                        });
                        pushDynamicScreen(
                          context,
                          screen: PageTransition(
                              child: KartuKuningTahap2(
                                nomor: nomorController.text,
                                date: dateController.text,
                                name: nameController.text,
                                placeBorn: placeController.text,
                                dateBorn: bornController.text,
                                gender: selectedGender!,
                                kecamatan: selectedKecamatan!,
                                desa: selectedDesa!,
                                address: addressController.text,
                                telp: telpController.text,
                                email: emailController.text,
                                zip_code: posController.text,
                                status: selectedStatus!,
                                religion: selectedAgama!,
                                heiht: tinggiController.text,
                                weight: beratController.text,
                                sims: selectedSims.toList(),
                                bookingCode: widget.bookingCode ?? "",
                              ),
                              type: PageTransitionType.rightToLeft),
                          withNavBar: false,
                        );
                        _refresh();
                        hideKeyboard(context);
                      },
                    );
                  }
                },
                error: (error) {
                  error.maybeWhen(
                    orElse: () {},
                    unprocessableEntity: (reasons) {
                      String errorMessage = reasons?.message ?? '';
                      List<dynamic> errorMessages = reasons?.errors?.values
                              .map((valueList) =>
                                  valueList.isNotEmpty ? valueList[0] : '')
                              .toList() ??
                          [];

                      String fullErrorMessage =
                          '$errorMessage ${errorMessages[0]}';

                      UXToast.show(
                        message: fullErrorMessage,
                        backgroundColor: UXAppColors.danger,
                        textColor: UXColors.white,
                      );
                    },
                  );
                },
              );
            },
            child: Builder(builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DIISI DENGAN HURUP KAPITAL',
                        style: TextStyle(
                          fontSize: UXConstants.kFontSizeL,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Text(
                        'Silahkan lengkapi formulir berikut dengan benar.',
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        'Tahap 1 - Data Diri',
                        style: const TextStyle(
                          color: UXColors.grey_80,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      KartuKuningForm(
                        title: 'Nomor Induk dan Kependudukan *',
                        decoration: InputDecoration(
                          hintText: '',
                        ),
                        keyboardType: TextInputType.number,
                        controller: nomorController,
                        maxLength: 16,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      KartuKuningForm(
                        title: 'Tanggal Pendaftaran',
                        controller: dateController,
                        readOnly: true,
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.calendar_month)),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Keterangan Umum',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: UXConstants.kFontSizeL,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      KartuKuningForm(
                        title: 'Nama Lengkap *',
                        decoration: InputDecoration(hintText: ''),
                        controller: nameController,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      KartuKuningForm(
                        title: 'Tempat Lahir *',
                        decoration: InputDecoration(
                          hintText: '',
                        ),
                        controller: placeController,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      KartuKuningForm(
                        title: 'Tanggal Lahir *',
                        controller: bornController,
                        readOnly: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.calendar_month),
                        ),
                        onTap: () {
                          _deliveryDate(
                            passDate: true,
                          ).then((dValue) {
                            if (dValue != null) {
                              bornController.text = '$dValue';
                            }
                          });
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      InputRadioForm(
                        title: 'Jenis Kelamin *',
                        options: ['Laki-laki', 'Perempuan'],
                        selected: selectedGender,
                        onSelected: (value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      BlocProvider(
                        create: (context) => FormulirKkBloc()
                          ..add(FormulirKkEvent.getKecamatan()),
                        child: BlocListener<FormulirKkBloc, FormulirKkState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              loadedKecamatan: (data) {
                                listKec.addAll(
                                    data.map((kecamatan) => kecamatan.name));
                              },
                            );
                          },
                          child: DropdownCustom(
                            label: "Kecamatan *",
                            items: listKec,
                            selectedItem: selectedKecamatan,
                            onChanged: (value) {
                              setState(() {
                                listDesa.clear();
                                selectedDesa = null;
                                selectedKecamatan = value;
                              });
                              context.read<FormulirKkBloc>().add(
                                  FormulirKkEvent.getDesa(
                                      kecamatan: selectedKecamatan));
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      BlocListener<FormulirKkBloc, FormulirKkState>(
                        listener: (context, state) {
                          state.maybeWhen(
                            orElse: () {},
                            loadedDesa: (data) {
                              Logger().v(data);
                              listDesa.addAll(data.map((desa) => desa.name));
                              listDesaMod.addAll(data);
                            },
                          );
                        },
                        child: DropdownCustom(
                          label: "Desa *",
                          items: listDesa,
                          selectedItem: selectedDesa,
                          onChanged: (value) {
                            setState(() {
                              selectedDesa = value;

                              // Cari objek DesaMod yang sesuai berdasarkan nama desa
                              selectedDesaMod = listDesaMod.firstWhere(
                                (desa) => desa.name == value,
                                orElse: () => DesaMod(name: "", zipCode: ""),
                              );

                              Logger().v(listDesaMod);
                              posController.text = selectedDesaMod!.zipCode;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      KartuKuningTextArea(
                        title: 'Alamat Lengkap *',
                        controller: addressController,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          hintText: 'Nama Jalan, RT RW',
                          contentPadding: const EdgeInsets.all(15),
                          filled: false,
                        ),
                        maxLines: 3,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      KartuKuningForm(
                        title: 'Telp/Hp *',
                        decoration: InputDecoration(
                          hintText: '',
                        ),
                        controller: telpController,
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      KartuKuningForm(
                        title: 'Email *',
                        decoration: InputDecoration(
                          hintText: '',
                        ),
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      KartuKuningForm(
                        title: 'Kode Pos',
                        decoration: InputDecoration(
                          hintText: '',
                        ),
                        controller: posController,
                        maxLength: 5,
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      BlocProvider(
                        create: (context) => FormulirKkBloc()
                          ..add(FormulirKkEvent.getMaritalStatus()),
                        child: BlocConsumer<FormulirKkBloc, FormulirKkState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              loadedMaritalStatus: (data) {
                                listMaritalStatus
                                    .addAll(data.map((status) => status.name));
                              },
                            );
                          },
                          builder: (context, state) {
                            return DropdownCustom(
                              label: "Status *",
                              items: listMaritalStatus,
                              selectedItem: selectedStatus,
                              onChanged: (value) {
                                setState(() {
                                  selectedStatus = value;
                                });
                              },
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      BlocProvider(
                        create: (context) => FormulirKkBloc()
                          ..add(FormulirKkEvent.getReligion()),
                        child: BlocConsumer<FormulirKkBloc, FormulirKkState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              loadedReligion: (data) {
                                listReligion.addAll(
                                    data.map((religion) => religion.name));
                              },
                            );
                          },
                          builder: (context, state) {
                            return DropdownCustom(
                              label: "Agama *",
                              items: listReligion,
                              selectedItem: selectedAgama,
                              onChanged: (value) {
                                setState(() {
                                  selectedAgama = value;
                                });
                              },
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      KartuKuningForm(
                        title: 'Tinggi Badan (cm) *',
                        controller: tinggiController,
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      KartuKuningForm(
                        title: 'Berat Badan (kg) *',
                        controller: beratController,
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sim yang dimiliki ( Optional )'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InputCheckForm(
                                label: 'SIM A',
                                value: selectedSimA,
                                onChanged: (value) {
                                  setState(() {
                                    selectedSimA = value!;
                                  });
                                },
                              ),
                              InputCheckForm(
                                label: 'SIM B',
                                value: selectedSimB,
                                onChanged: (value) {
                                  setState(() {
                                    selectedSimB = value!;
                                  });
                                },
                              ),
                              InputCheckForm(
                                label: 'SIM C',
                                value: selectedSimC,
                                onChanged: (value) {
                                  setState(() {
                                    selectedSimC = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      UXButton(
                        onPressed: () {
                          sendData().then(
                            (value) {
                              if (value != null) {
                                context.read<FormulirKkBloc>().add(
                                    FormulirKkEvent.formTahap1(params: value));
                              }
                            },
                          );
                        },
                        child: Text('Selanjutnya'),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nomorController.dispose();
    dateController.dispose();
    nameController.dispose();
    placeController.dispose();
    bornController.dispose();
    addressController.dispose();
    telpController.dispose();
    emailController.dispose();
    posController.dispose();
    tinggiController.dispose();
    beratController.dispose();
    super.dispose();
  }
}
