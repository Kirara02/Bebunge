import 'package:bebunge/l10n/locale_keys.g.dart';
import 'package:bebunge/src/features/beranda/widget/set_lokasi.dart';
import 'package:bebunge/src/features/shared/bebeli/bebeli_auth_bloc.dart';
import 'package:bebunge/src/features/shared/jadwal_shalat/jadwal_shalat_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/button/button_custom.dart';
import '../../../widgets/wrapper/custom_wrapper.dart';
import '../../shared/jadwal_shalat/jadwal_shalat_bloc.dart';

class Pengaturan extends StatefulWidget {
  const Pengaturan({super.key});

  @override
  State<Pengaturan> createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
  ValueNotifier<bool> showAddress = ValueNotifier(true);
  Future<String?> _getAddress() async {
    var pref = await SharedPreferences.getInstance();
    List<String>? location = pref.getStringList(UXConstants.location);
    var address = location![2];
    return address;
  }

  Future<void> _changeLang(Locale lang) async {
    await context.setLocale(lang);
  }

  refreshAddress() {
    setState(() {
      showAddress.value = false;
    });
    Future.delayed(
      Duration(seconds: 1),
      () {
        setState(() {
          showAddress.value = true;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<JadwalShalatCubit>(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(mainAxisSize: MainAxisSize.min, children: [
          Icon(
            Icons.settings,
            color: UXAppColors.biru1,
          ),
          SizedBox(
            width: UXConstants.kPaddingS,
          ),
          Text(
            LocaleKeys.settings_title.tr(),
            style: TextStyle(
                fontSize: UXConstants.kFontSizeXL,
                color: UXAppColors.biru1,
                fontWeight: FontWeight.w700),
          )
        ]),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: UXConstants.kPaddingM),
            child: CustomWrapper(
                name: LocaleKeys.settings_option.tr(),
                paddingWrapper: EdgeInsets.symmetric(
                    horizontal: 0, vertical: UXConstants.kPaddingM),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LocaleKeys.settings_show_prayer_schedule.tr(),
                      style: TextStyle(
                          fontSize: UXConstants.kFontSizeM,
                          fontWeight: FontWeight.w400),
                    ),
                    Switch.adaptive(
                      activeColor: UXAppColors.primary,
                      value: bloc.state,
                      onChanged: (value) async {
                        setState(() {
                          BlocProvider.of<JadwalShalatCubit>(context)
                              .changeValue(value);
                        });

                        // var pref = await SharedPreferences.getInstance();
                        // pref.setBool('jadwal', !value);
                      },
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(LocaleKeys.settings_update_prayer_schedule.tr()),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 2,
                        shape: CircleBorder(),
                        minimumSize: Size.zero,
                        padding: EdgeInsets.all(3),
                        backgroundColor: UXColors.white,
                        foregroundColor: UXAppColors.primary),
                    onPressed: () async {
                      await pushDynamicScreen(context,
                              screen: PageTransition(
                                  child: SetLokasi(),
                                  type: PageTransitionType.rightToLeft))
                          .then((value) {
                        if (value != null) {
                          BlocProvider.of<JadwalShalatBloc>(context)
                            ..add(JadwalShalatEvent.started(
                                lat: value[0], long: value[1]));
                          refreshAddress();
                        }
                      });
                    },
                    child: Icon(Icons.refresh)),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(LocaleKeys.settings_set_language.tr()),
                DropdownButton(
                    items: [
                      DropdownMenuItem(
                          value: Locale('en'), child: Text('English')),
                      DropdownMenuItem(
                          value: Locale('id'), child: Text('Indonesia'))
                    ],
                    onChanged: (value) async {
                      if (value != null) {
                        _changeLang(value);
                      }
                    },
                    value: context.locale),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              children: [
                Text(
                  '${LocaleKeys.settings_your_location.tr()}: ',
                  style: TextStyle(
                      fontSize: UXConstants.kFontSizeM,
                      fontWeight: FontWeight.w600),
                ),
                ValueListenableBuilder<bool>(
                  valueListenable: showAddress,
                  builder: (context, value, child) {
                    if (value) {
                      return FutureBuilder(
                        future: _getAddress(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data ?? '',
                              style: TextStyle(
                                  fontSize: UXConstants.kFontSizeM,
                                  fontWeight: FontWeight.w400),
                            );
                          } else {
                            return SizedBox();
                          }
                        },
                      );
                    } else {
                      return SizedBox();
                    }
                  },
                )
              ],
            ),
          ),
          BlocBuilder<BebeliAuthBloc, BebeliAuthState>(
            bloc: BebeliAuthBloc()..add(BebeliAuthEvent.checkStatus()),
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => SizedBox(),
                  isAuthenticated: (data) => Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: UXConstants.kPaddingM),
                        child: CustomWrapper(
                          name: LocaleKeys.settings_bebeli_account.tr(),
                          paddingWrapper: EdgeInsets.symmetric(
                              horizontal: 0, vertical: UXConstants.kPaddingM),
                          child: Column(children: [
                            UXButtonCustom(
                              title: LocaleKeys.settings_logout_bebeli.tr(),
                              onPressed: () {
                                context
                                    .read<BebeliAuthBloc>()
                                    .add(BebeliAuthEvent.userLogout());
                              },
                              backgroundColor: UXAppColors.danger,
                              borderShape: ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10)),
                            )
                          ]),
                        ),
                      ));
            },
          )

          // BlocListener<AuthBloc, AuthState>(
          //   listener: (context, state) {
          //     state.maybeWhen(
          //       orElse: () {},
          //       unAuthenticated: () => Navigator.pushAndRemoveUntil(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => SigninPage(),
          //           ),
          //           (route) => false),
          //     );
          //   },
          //   child: Padding(
          //     padding: const EdgeInsetsDirectional.symmetric(
          //         horizontal: UXConstants.kPaddingM),
          //     child: CustomWrapper(
          //       name: 'Data Diri',
          //       paddingWrapper: EdgeInsets.symmetric(
          //           horizontal: 0, vertical: UXConstants.kPaddingM),
          //       child: Column(children: [
          //         TextButton.icon(
          //             onPressed: () {},
          //             icon: Icon(Icons.arrow_forward_ios),
          //             label: Text('Ubah Pengaturan')),
          //         UXButtonCustom(
          //           title: 'Keluar',
          //           onPressed: () {
          //             context.read<AuthBloc>().add(AuthEvent.userLogout());
          //           },
          //           backgroundColor: UXAppColors.danger,
          //           borderShape: ContinuousRectangleBorder(
          //               borderRadius: BorderRadiusDirectional.circular(10)),
          //         )
          //       ]),
          //     ),
          //   ),
          // ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     var pref = await SharedPreferences.getInstance();
      //     pref.remove(UXConstants.kodeTransaksi);
      //   },
      // ),
    );
  }

  @override
  void dispose() {
    showAddress.dispose();
    super.dispose();
  }
}
