// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/config/ux_screen.dart';
import 'package:bebunge/src/features/beranda/view/beranda.dart';
import 'package:bebunge/src/features/kartu_kuning/login/bloc/auth_kk_bloc.dart';
import 'package:bebunge/src/features/kartu_kuning/pengambilan/bloc/pengambilan_kk_bloc.dart';
import 'package:bebunge/src/features/kartu_kuning/pengambilan/view/kartu_kuning_detail.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/dropdown_custom.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/input_radio_form.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/input_select_form.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/kartu_kuning_form.dart';
import 'package:bebunge/src/widgets/button/button.dart';
import 'package:bebunge/src/widgets/common/preferences.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../../config/theme/colors.dart';
import '../../../../widgets/common/date_picker.dart';
import '../../../../widgets/dialogs/ux_toast_wrapper.dart';

class KartuKuningPengambilan extends StatefulWidget {
  const KartuKuningPengambilan({Key? key}) : super(key: key);

  @override
  State<KartuKuningPengambilan> createState() => _KartuKuningPengambilanState();
}

class _KartuKuningPengambilanState extends State<KartuKuningPengambilan> {
  TextEditingController dateController = TextEditingController(text: '');
  late String date;
  String? selectedPickup;
  String? selectedPlace;
  final prefs = Preference.load();

  Future _deliveryDate() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(10),
          child: DatePicker(
            passDate: false,
            tanggal_awal: date,
          ),
        );
      },
    );
  }

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

  Future _toast(String? message) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: UXAppColors.danger,
        textColor: UXColors.white);
  }

  Future<void> pengajuanDialog() async {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return BlocProvider(
          create: (context) => PengambilanKkBloc(),
          child: BlocListener<PengambilanKkBloc, PengambilanKkState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  loadedPengajuan: (data) {
                    if (data.success!) {
                      UXToast.show(
                          message: data.message ?? '',
                          backgroundColor: UXAppColors.green,
                          textColor: UXColors.white);
                      _refresh();
                      Navigator.pop(context);
                    }
                  },
                  error: (error) {
                    print(error);
                    _toast(error.toString());
                  });
            },
            child: StatefulBuilder(
              builder: (context, setState) {
                return Dialog(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pengajuan Pengambilan Kartu',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        InputRadioForm(
                          title: 'Diambil *',
                          selected: selectedPickup,
                          options: ['Ditempat', 'Kirim Email'],
                          onSelected: (value) {
                            setState(() {
                              selectedPickup = value;
                            });
                          },
                        ),
                        if (selectedPickup == 'Ditempat')
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              KartuKuningForm(
                                title: 'Pilih Tanggal Pengambilan Kartu *',
                                controller: dateController,
                                readOnly: true,
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.calendar_month,
                                  ),
                                ),
                                onTap: () {
                                  _deliveryDate().then((dValue) {
                                    if (dValue != null) {
                                      _selectTime().then((tValue) {
                                        if (tValue != null) {
                                          dateController.text =
                                              '$dValue ${tValue.hour.toString().padLeft(2, '0')}:${tValue.minute.toString().padLeft(0, '00')}:00';
                                        }
                                      });
                                    }
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              DropdownCustom(
                                label: 'Lokasi Pengambilan *',
                                items: [
                                  'Kantor Dinas Ketenakerjaan',
                                  'MPP',
                                ],
                                selectedItem: selectedPlace,
                                onChanged: (value) {
                                  setState(() {
                                    selectedPlace = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        UXButton(
                          onPressed: () {
                            if (selectedPickup == '') {
                              _toast('Diambil belum diisi');
                            } else {
                              if (selectedPickup == 'Kirim Email') {
                                dateController.clear();
                                selectedPlace = '';
                              }
                              context.read<PengambilanKkBloc>().add(
                                    PengambilanKkEvent.pengajuan(
                                        pickup_by: selectedPickup!,
                                        pickup_date: dateController.text,
                                        pickup_place: selectedPlace ?? ''),
                                  );
                            }
                          },
                          title: 'Submit',
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  _refresh() {
    dateController.clear();
    selectedPickup = '';
  }

  @override
  void initState() {
    super.initState();
    date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        pushDynamicScreen(
          context,
          screen: PageTransition(
            child: Beranda(),
            type: PageTransitionType.leftToRight,
          ),
        );
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Aktivitas',
            style: const TextStyle(
              color: UXColors.white,
            ),
          ),
          leading: IconButton(
            onPressed: () => pushDynamicScreen(
              context,
              screen: PageTransition(
                child: Beranda(),
                type: PageTransitionType.leftToRight,
              ),
            ),
            icon: Icon(CupertinoIcons.chevron_back),
          ),
          iconTheme: IconThemeData(
            color: UXColors.white,
          ),
          backgroundColor: UXAppColors.primaryColors,
          actions: [
            IconButton(
              icon: Icon(Icons.logout_outlined),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => AuthKkBloc(),
                      child: BlocConsumer<AuthKkBloc, AuthKkState>(
                          listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          unAuthenticated: () {
                            UXToast.show(
                              message: 'Logout Success',
                              backgroundColor: UXAppColors.primary,
                              toastGravity: ToastGravity.BOTTOM,
                            );
                            Future.delayed(
                              Duration(seconds: 2),
                              () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Beranda()),
                                  (route) => false,
                                );
                              },
                            );
                          },
                        );
                      }, builder: (context, state) {
                        return AlertDialog(
                          title: Text('Logout'),
                          content: Text('Yakin Ingin Logout?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Tidak'),
                            ),
                            TextButton(
                                onPressed: () {
                                  context
                                      .read<AuthKkBloc>()
                                      .add(AuthKkEvent.userLogout());
                                },
                                child: Text('Ya')),
                          ],
                        );
                      }),
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: BlocProvider(
          create: (context) =>
              PengambilanKkBloc()..add(PengambilanKkEvent.getKartuKuning()),
          child: BlocBuilder<PengambilanKkBloc, PengambilanKkState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return Center(child: CircularProgressIndicator());
                },
                loaded: (data) {
                  Logger().v(data);
                  DateTime? regDate = data.regDate != null
                      ? DateTime.parse(data.regDate!)
                      : null;

                  String formattedDate =
                      DateFormat('d MMMM y').format(regDate!);

                  String status = '';
                  Color color;
                  Color textColor;
                  if (data.status == 'Sedang Di Proses') {
                    status = data.status!;
                    color = UXAppColors.orange;
                    textColor = UXColors.text;
                  } else if (data.status == 'Selesai' &&
                      data.pickupDate == null) {
                    Preference().setString('status_kk', data.status!);
                    status = 'Selesai Dibuat';
                    color = UXAppColors.orange;
                    textColor = UXColors.white;
                  } else if (data.pickupStatus == 'Pengajuan') {
                    Preference().setString('status_kk', data.status!);
                    status = 'Menunggu Konfirmasi';
                    color = UXAppColors.greenAccent;
                    textColor = UXColors.white;
                  } else {
                    Preference().setString('status_kk', data.status!);
                    status = 'Selesai';
                    color = UXAppColors.greenAccent;
                    textColor = UXColors.white;
                  }

                  DateTime? pickupDate = data.pickupDate != null
                      ? DateTime.parse(data.pickupDate!)
                      : null;
                  String formattedPickupDate = '-';
                  if (data.pickupDate != null) {
                    formattedPickupDate =
                        DateFormat('d MMMM y, HH:mm').format(pickupDate!);
                  }

                  return RefreshIndicator(
                    onRefresh: () async {
                      // Dispatch the getKartuKuning event again to fetch the latest data
                      context
                          .read<PengambilanKkBloc>()
                          .add(PengambilanKkEvent.getKartuKuning());
                      // Wait for a short duration to show the refresh indicator
                      await Future.delayed(Duration(seconds: 1));
                    },
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Container(
                        height: UXScreens.height,
                        padding: const EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 20.0,
                        ),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    pushDynamicScreen(context,
                                        screen: PageTransition(
                                            child: KartuKuningDetail(),
                                            type:
                                                PageTransitionType.rightToLeft),
                                        withNavBar: true);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: UXAppColors.primaryDark
                                            .withOpacity(0.5),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Pengajuan Kartu Kuning',
                                                  style: const TextStyle(
                                                    fontSize:
                                                        UXConstants.kFontSizeL,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  formattedDate,
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 4,
                                                horizontal: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: color,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                status,
                                                style: TextStyle(
                                                  color: textColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const Divider(
                                          thickness: 2,
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        BlocProvider(
                                          create: (context) =>
                                              PengambilanKkBloc()
                                                ..add(PengambilanKkEvent
                                                    .getUser()),
                                          child: BlocBuilder<PengambilanKkBloc,
                                              PengambilanKkState>(
                                            builder: (context, state) {
                                              return state.maybeWhen(
                                                orElse: () {
                                                  return Text('');
                                                },
                                                loadedUser: (user) {
                                                  print(user);
                                                  return Text(
                                                    user.name,
                                                    style: const TextStyle(
                                                      color:
                                                          UXAppColors.primary,
                                                      fontSize: UXConstants
                                                          .kFontSizeL,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Jadwal Pengambilan',
                                                  style: const TextStyle(
                                                    color: UXColors.grey_80,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 4.0,
                                                ),
                                                Text(
                                                  data.pickupDate != ''
                                                      ? formattedPickupDate
                                                      : '-',
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Visibility(
                                              visible:
                                                  data.status == "Selesai" &&
                                                      data.pickupBy == null,
                                              child: GestureDetector(
                                                onTap: () async {
                                                  if (data.status == 'Selesai')
                                                    return await pengajuanDialog();
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                    color: data.status ==
                                                            'Sedang Di Proses'
                                                        ? UXAppColors.biru2
                                                        : UXAppColors.biru1,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Text(
                                                    'Atur Jadwal',
                                                    style: const TextStyle(
                                                      color: UXColors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
