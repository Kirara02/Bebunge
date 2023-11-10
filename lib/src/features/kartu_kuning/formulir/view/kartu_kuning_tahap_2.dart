// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:io';

import 'package:bebunge/src/features/kartu_kuning/booking/view/booking_page.dart';
import 'package:bebunge/src/features/kartu_kuning/booking/widget/no_quota_dialog.dart';
import 'package:bebunge/src/features/kartu_kuning/formulir/widget/image_pick.dart';
import 'package:bebunge/src/features/kartu_kuning/pengambilan/view/kartu_kuning_pengambilan.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/dropdown_custom.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/input_cip_tags.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/input_radio_form.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/input_select_form.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/input_tags_form.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/kartu_kuning_form.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/ux_constants.dart';
import '../../../../widgets/button/button.dart';
import '../../../../widgets/button/button_custom.dart';
import '../../../../widgets/dialogs/ux_toast_wrapper.dart';
import '../bloc/formulir_kk_bloc.dart';

class KartuKuningTahap2 extends StatefulWidget {
  final String nomor;
  final String date;
  final String name;
  final String placeBorn;
  final String dateBorn;
  final String gender;
  final String kecamatan;
  final String desa;
  final String address;
  final String telp;
  final String email;
  final String zip_code;
  final String status;
  final String religion;
  final String heiht;
  final String weight;
  final List<String> sims;
  final String bookingCode;

  const KartuKuningTahap2(
      {Key? key,
      required this.nomor,
      required this.date,
      required this.name,
      required this.placeBorn,
      required this.dateBorn,
      required this.gender,
      required this.kecamatan,
      required this.address,
      required this.telp,
      required this.email,
      required this.zip_code,
      required this.status,
      required this.religion,
      required this.heiht,
      required this.weight,
      required this.sims,
      required this.desa,
      required this.bookingCode})
      : super(key: key);

  @override
  State<KartuKuningTahap2> createState() => _KartuKuningTahap2State();
}

class _KartuKuningTahap2State extends State<KartuKuningTahap2> {
  late bool loading = false;

  TextEditingController gradController = TextEditingController(text: '');
  TextEditingController ipkController = TextEditingController(text: '');
  TextEditingController gajiController = TextEditingController(text: '');
  TextEditingController tanggunganController = TextEditingController(text: '');
  TextEditingController jurusanLainController = TextEditingController(text: '');

  String? selectedPosisi;
  String? selectedType;
  String? selectedLokasi;
  String? selectedWilayah;
  String? selectedUpah;
  String? selectedPendidikan;
  String? selectedJurusan;

  List<String> valueBahasa = [];
  List<String> valueJabatan = [];
  List<String> valueTugas = [];
  List<String> valueLamaKerja = [];
  List<String> valuePerusahaan = [];
  List<String> valueSkill = [];

  List<dynamic> listPend = [];
  List<dynamic> listJurusan = [];
  List<dynamic> listPekerjaan = [];
  List<String> listBahasa = [];
  List<String> listDesiresWages = [];

  String ktp = '';
  bool hasKtp = false;
  String ijazah = '';
  bool hasIjazah = false;
  String experience = '';
  bool hasExp = false;
  String kompetensi = '';
  bool hasKomp = false;

  TextfieldTagsController bahasaController = TextfieldTagsController();

  Future<FormData?> sendData() async {
    if (selectedPendidikan == null || selectedPendidikan == '') {
      _toast('Pendidikan Tertinggi belum diisi');
      return null;
    } else if (gradController.text.isEmpty) {
      _toast('Tahun Lulus belum diisi');
      return null;
    } else if (selectedJurusan == null || selectedJurusan == '') {
      _toast('Jurusan belum diisi');
      return null;
    } else if (selectedLokasi == '' || selectedLokasi == null) {
      _toast('Lokasi belum diisi');
      return null;
    } else if (selectedUpah == null || selectedUpah == '') {
      _toast('Upah yang diinginkan Lengkap belum diisi');
      return null;
    } else if (ktp == '') {
      _toast('KTP belum diisi');
    }

    File fileKtp = await _compressAndGetFile(ktp, rotate: 90);
    // File fileIjazah = await _compressAndGetFile(ijazah, rotate: 90);

    File? fileIjazah;
    File? fileExp;
    File? fileKomp;

    if (hasIjazah) {
      fileIjazah = await _compressAndGetFile(ijazah, rotate: 90);
    }
    if (hasExp) {
      fileExp = await _compressAndGetFile(experience, rotate: 90);
    }
    if (hasKomp) {
      fileKomp = await _compressAndGetFile(kompetensi, rotate: 90);
    }

    FormData formData = FormData.fromMap({
      'booking_code': widget.bookingCode,
      'nik': widget.nomor,
      'reg_date': widget.date,
      'name': widget.name,
      'birth_place': widget.placeBorn,
      'birth_date': widget.dateBorn,
      'gender': widget.gender,
      'subdistrict': widget.kecamatan,
      'village': widget.desa,
      'address': widget.address,
      'phone': widget.telp,
      'email': widget.email,
      'zip_code': widget.zip_code,
      'marital_status': widget.status,
      'religion': widget.religion,
      'height': widget.heiht,
      'weight': widget.weight,
      'sim[]': widget.sims.toList(),
      'education': selectedPendidikan,
      'graduation_year': gradController.text,
      'scores': ipkController.text,
      'major': selectedJurusan == 'LAINNYA'
          ? jurusanLainController.text
          : selectedJurusan,
      'skills[]': valueSkill.toList(),
      'languages[]': bahasaController.getTags,
      'occupations[]': valueJabatan.toList(),
      'job_descriptions[]': valueTugas.toList(),
      'work_length[]': valueLamaKerja.toList(),
      'companies[]': valuePerusahaan.toList(),
      'desired_position': selectedPosisi,
      'desired_location': selectedLokasi,
      'region': selectedWilayah,
      'desired_wages': selectedUpah,
      'file_idcard': await MultipartFile.fromFile(
        fileKtp.path,
      ),
      'file_certificate': hasIjazah
          ? await MultipartFile.fromFile(
              fileIjazah!.path,
            )
          : '',
      'file_expericence': hasExp
          ? await MultipartFile.fromFile(
              fileExp!.path,
            )
          : '',
      'file_competency': hasKomp
          ? await MultipartFile.fromFile(
              fileKomp!.path,
            )
          : '',
    });

    print(formData);

    return formData;
  }

  Future<File> _compressAndGetFile(String file, {int? rotate}) async {
    final filePath = file;
    final lastIndex = filePath.lastIndexOf(RegExp(r'.jp'));
    final splitted = filePath.substring(0, (lastIndex));
    final outPath = '${splitted}_out${filePath.substring(lastIndex)}';
    var result = await FlutterImageCompress.compressAndGetFile(file, outPath,
        quality: 75, rotate: rotate ?? 0);

    return File(result!.path);
  }

  Future _toast(String? message) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: UXAppColors.danger,
        textColor: UXColors.white);
  }

  Future _bulkImage({String? title, bool? showMore}) {
    return showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) =>
          ImageBulkPicker(title: title, showAdMore: showMore ?? true),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  _refresh() {
    selectedPendidikan = null;
    gradController.clear();
    ipkController.clear();
    selectedJurusan = null;
    valueSkill.clear();
    bahasaController.clearTags();
    valueJabatan.clear();
    valueTugas.clear();
    valueLamaKerja.clear();
    valuePerusahaan.clear();
    selectedPosisi = null;
    selectedLokasi = null;
    selectedWilayah = null;
    selectedUpah = null;
  }

  @override
  void dispose() {
    super.dispose();
    gradController.dispose();
    ipkController.dispose();
    bahasaController.dispose();
    gajiController.dispose();
    tanggunganController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormulirKkBloc(),
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
                color: UXColors.white,
                fontSize: UXConstants.kFontSizeL,
              ),
            ),
            backgroundColor: UXAppColors.primaryColors,
          ),
          body: Builder(builder: (context) {
            return BlocListener<FormulirKkBloc, FormulirKkState>(
              listener: (context, state) {
                state.whenOrNull(
                    loading: () => UXToast.show(
                        message: 'Sedang Menggirim Data',
                        backgroundColor: UXAppColors.gojekBlue,
                        textColor: UXAppColors.biru2,
                        toastGravity: ToastGravity.BOTTOM),
                    loaded: (data) {
                      Logger().v(data);

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
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      KartuKuningPengambilan(),
                                ),
                                (route) => false);
                            _refresh();
                          },
                        );
                      } else if (!data.success!) {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return NoQuotaDialog(
                              message: data.message!,
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BookingPage(),
                                    ),
                                    (route) => false);
                              },
                            );
                          },
                        );
                      }
                    },
                    error: (error) {
                      error.maybeWhen(
                        orElse: () {
                          UXToast.show(
                            message: error.toString(),
                            backgroundColor: UXAppColors.danger,
                            textColor: UXColors.white,
                          );
                        },
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
                    });
              },
              child: SingleChildScrollView(
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
                        'Tahap 2 - Data Diri',
                        style: const TextStyle(
                          color: UXColors.grey_80,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Pendidikan Formal',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: UXConstants.kFontSizeL,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      BlocProvider(
                        create: (context) => FormulirKkBloc()
                          ..add(FormulirKkEvent.getPendidikan()),
                        child: BlocListener<FormulirKkBloc, FormulirKkState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              loadedPendidikan: (data) {
                                listPend.addAll(
                                    data.map((education) => education.name));
                              },
                            );
                          },
                          child: DropdownCustom(
                            label: "Pendidikan Tertinggi *",
                            items: listPend,
                            selectedItem: selectedPendidikan,
                            onChanged: (value) {
                              setState(() {
                                listJurusan.clear();
                                selectedJurusan = null;
                                selectedPendidikan = value;
                              });
                              BlocProvider.of<FormulirKkBloc>(context).add(
                                  FormulirKkEvent.getJurusan(
                                      education: selectedPendidikan));
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      KartuKuningForm(
                        title: 'Tahun Lulus *',
                        maxLength: 4,
                        keyboardType: TextInputType.number,
                        controller: gradController,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      KartuKuningForm(
                        title: 'NEM/IPK ',
                        controller: ipkController,
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      BlocListener<FormulirKkBloc, FormulirKkState>(
                        listener: (context, state) {
                          state.maybeWhen(
                            orElse: () {},
                            loadedJurusan: (data) {
                              listJurusan
                                  .addAll(data.map((major) => major.name));
                              listJurusan.add("LAINNYA");
                            },
                          );
                        },
                        child: DropdownCustom(
                          label: "Jurusan *",
                          items: listJurusan,
                          selectedItem: selectedJurusan,
                          onChanged: (value) {
                            setState(() {
                              selectedJurusan = value;
                            });
                          },
                        ),
                      ),
                      if (selectedJurusan == 'LAINNYA')
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: KartuKuningForm(
                            title: 'Masukan Jurusan Lainnya *',
                            controller: jurusanLainController,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      InputChipTags(
                        label: 'Keterampilan ( Optional )',
                        tags: valueSkill,
                        onTagsChanged: (value) {},
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Bahasa Asing yang Dikuasai ',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: UXConstants.kFontSizeL,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      BlocProvider(
                        create: (context) =>
                            FormulirKkBloc()..add(FormulirKkEvent.getBahasa()),
                        child: BlocConsumer<FormulirKkBloc, FormulirKkState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              loadedBahasa: (data) {
                                listBahasa.addAll(
                                    data.map((language) => language.name!));
                              },
                            );
                          },
                          builder: (context, state) {
                            return InputTagsForm(
                              title: 'Nama Bahasa *',
                              controller: bahasaController,
                              picks: listBahasa,
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Pengalaman Kerja ',
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: UXConstants.kFontSizeL,
                              ),
                            ),
                            TextSpan(
                              text: '( Optional )',
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      InputChipTags(
                        label: 'Jabatan',
                        tags: valueJabatan,
                        onTagsChanged: (value) {
                          print(valueJabatan);
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      InputChipTags(
                        label: 'Uraian Tugas',
                        tags: valueTugas,
                        onTagsChanged: (value) {},
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      InputChipTags(
                        label: 'Lama Kerja',
                        tags: valueLamaKerja,
                        onTagsChanged: (value) {},
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      InputChipTags(
                        label: 'Instansi/Perusahaan',
                        tags: valuePerusahaan,
                        onTagsChanged: (value) {},
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Pekerjaan yang Diharapkan',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: UXConstants.kFontSizeL,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      BlocProvider(
                        create: (context) => FormulirKkBloc()
                          ..add(FormulirKkEvent.getPekerjaan()),
                        child: BlocConsumer<FormulirKkBloc, FormulirKkState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              loadedPekerjaan: (data) {
                                listPekerjaan.addAll(
                                    data.map((eccupation) => eccupation.name));
                              },
                            );
                          },
                          builder: (context, state) {
                            return InputSelectForm(
                              label: 'Jabatan yang Diinginkan ( Optional )',
                              options: listPekerjaan,
                              value: selectedPosisi,
                              onChanged: (value) {
                                setState(() {
                                  selectedPosisi = value;
                                });
                              },
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      InputRadioForm(
                        title: 'Lokasi yang Diinginkan *',
                        options: ['Dalam Negeri', 'Luar Negeri'],
                        selected: selectedLokasi,
                        onSelected: (value) {
                          setState(() {
                            selectedLokasi = value;
                            selectedWilayah = '';
                          });
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      if (selectedLokasi == 'Dalam Negeri')
                        InputRadioForm(
                          title: 'Wilayah yang Diinginkan *',
                          options: ['Lokasi Tempat Tinggal', 'Lainnya'],
                          selected: selectedWilayah,
                          onSelected: (value) {
                            setState(() {
                              selectedWilayah = value;
                            });
                          },
                        ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      BlocProvider(
                        create: (context) => FormulirKkBloc()
                          ..add(FormulirKkEvent.getDesiredWages()),
                        child: BlocListener<FormulirKkBloc, FormulirKkState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              loadedDesiredWages: (data) {
                                listDesiresWages
                                    .addAll(data.map((desire) => desire.name));
                              },
                            );
                          },
                          child: DropdownCustom(
                            label: "Besarnya Upah yang Diinginkan *",
                            items: listDesiresWages,
                            selectedItem: selectedUpah,
                            onChanged: (value) {
                              setState(() {
                                selectedUpah = value;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Unggah KTP *',
                                style: TextStyle(
                                  fontSize: UXConstants.kFontSizeM,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                ),
                              ),
                              const UXSpacer(width: UXConstants.kPaddingXS),
                              hasKtp
                                  ? const Icon(
                                      Icons.check_circle_outline,
                                      color: UXAppColors.primary,
                                      size: UXConstants.kIconsS,
                                    )
                                  : const SizedBox()
                            ],
                          ),
                          const SizedBox(height: 4),
                          SizedBox(
                            height: 45,
                            child: UXButtonCustom(
                              onPressed: () async {
                                _bulkImage(showMore: false, title: 'Unggah KTP')
                                    .then((value) {
                                  String? image = value;
                                  if (image != null && image.isNotEmpty) {
                                    // debugPrint(image);
                                    setState(() {
                                      ktp = image;
                                      hasKtp = true;
                                    });
                                  }
                                });
                              },
                              title: 'Browse Files',
                              withHorizontalPadding: true,
                              fontSize: UXConstants.kFontSizeL,
                              backgroundColor: UXAppColors.biru1,
                              borderShape: ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(20)),
                              enabled: true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Unggah Ijazah ( Optional )',
                                style: TextStyle(
                                  fontSize: UXConstants.kFontSizeM,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                ),
                              ),
                              const UXSpacer(width: UXConstants.kPaddingXS),
                              hasIjazah
                                  ? const Icon(
                                      Icons.check_circle_outline,
                                      color: UXAppColors.primary,
                                      size: UXConstants.kIconsS,
                                    )
                                  : const SizedBox()
                            ],
                          ),
                          const SizedBox(height: 4),
                          SizedBox(
                            height: 45,
                            child: UXButtonCustom(
                              onPressed: () async {
                                _bulkImage(
                                        showMore: false, title: 'Unggah Ijazah')
                                    .then((value) {
                                  String? image = value;
                                  if (image != null && image.isNotEmpty) {
                                    // debugPrint(image);
                                    setState(() {
                                      ijazah = image;
                                      hasIjazah = true;
                                    });
                                  }
                                });
                              },
                              title: 'Browse Files',
                              withHorizontalPadding: true,
                              fontSize: UXConstants.kFontSizeL,
                              backgroundColor: UXAppColors.biru1,
                              borderShape: ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(20)),
                              enabled: true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Unggah Surat Pengalaman Kerja ( Optional )',
                                style: TextStyle(
                                  fontSize: UXConstants.kFontSizeM,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                ),
                              ),
                              const UXSpacer(width: UXConstants.kPaddingXS),
                              hasExp
                                  ? const Icon(
                                      Icons.check_circle_outline,
                                      color: UXAppColors.primary,
                                      size: UXConstants.kIconsS,
                                    )
                                  : const SizedBox()
                            ],
                          ),
                          const SizedBox(height: 4),
                          SizedBox(
                            height: 45,
                            child: UXButtonCustom(
                              onPressed: () async {
                                _bulkImage(
                                        showMore: false,
                                        title: 'Unggah Surat Pengalaman Kerja')
                                    .then((value) {
                                  String? image = value;
                                  if (image != null && image.isNotEmpty) {
                                    // debugPrint(image);
                                    setState(() {
                                      experience = image;
                                      hasExp = true;
                                    });
                                  }
                                });
                              },
                              title: 'Browse Files',
                              withHorizontalPadding: true,
                              fontSize: UXConstants.kFontSizeL,
                              backgroundColor: UXAppColors.biru1,
                              borderShape: ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(20)),
                              enabled: true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Unggah Sertifikat Kompetensi Kerja ( Optional )',
                                style: TextStyle(
                                  fontSize: UXConstants.kFontSizeM,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                ),
                              ),
                              const UXSpacer(width: UXConstants.kPaddingXS),
                              hasKomp
                                  ? const Icon(
                                      Icons.check_circle_outline,
                                      color: UXAppColors.primary,
                                      size: UXConstants.kIconsS,
                                    )
                                  : const SizedBox()
                            ],
                          ),
                          const SizedBox(height: 4),
                          SizedBox(
                            height: 45,
                            child: UXButtonCustom(
                              onPressed: () async {
                                _bulkImage(
                                        showMore: false,
                                        title:
                                            'Unggah Sertifikat Kompetensi Kerja')
                                    .then((value) {
                                  String? image = value;
                                  if (image != null && image.isNotEmpty) {
                                    // debugPrint(image);
                                    setState(() {
                                      kompetensi = image;
                                      hasKomp = true;
                                    });
                                  }
                                });
                              },
                              title: 'Browse Files',
                              withHorizontalPadding: true,
                              fontSize: UXConstants.kFontSizeL,
                              backgroundColor: UXAppColors.biru1,
                              borderShape: ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(20)),
                              enabled: true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      UXButton(
                        child: Text('Daftar'),
                        onPressed: () {
                          sendData().then(
                            (value) {
                              if (value != null) {
                                context.read<FormulirKkBloc>().add(
                                    FormulirKkEvent.formTahap2(params: value));
                              }
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
