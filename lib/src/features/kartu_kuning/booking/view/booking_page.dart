import 'package:bebunge/gen/assets.gen.dart';
import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/beranda/view/beranda.dart';
import 'package:bebunge/src/features/kartu_kuning/booking/bloc/booking_bloc.dart';
import 'package:bebunge/src/features/kartu_kuning/booking/widget/no_quota_dialog.dart';
import 'package:bebunge/src/features/kartu_kuning/formulir/view/kartu_kuning_tahap_1.dart';
import 'package:bebunge/src/features/kartu_kuning/login/bloc/auth_kk_bloc.dart';
import 'package:bebunge/src/widgets/button/button.dart';
import 'package:bebunge/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../widget/booking_form_dialog.dart';
import '../widget/booking_redeem_dialog.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  _bookingFormDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return BlocProvider(
          create: (context) => BookingBloc(),
          child: BookingFormDialog(),
        );
      },
    );
  }

  _bookingReedemDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return BlocProvider(
          create: (context) => BookingBloc(),
          child: BookingRedeemDialog(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        pushDynamicScreen(context,
            screen: PageTransition(
                child: Beranda(), type: PageTransitionType.leftToRight));
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Booking"),
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
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.shrugConceptIllustration.image(
                width: 172,
                height: 160,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Apakah kamu sudah melakukan booking pendaftaran?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: UXConstants.kFontSizeL,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              UXButton(
                title: "Booking Pendaftaran",
                onPressed: () => _bookingFormDialog(context),
              ),
              const SizedBox(
                height: 10,
              ),
              UXButton(
                title: "Daftar dengan Kode Booking",
                outline: true,
                onPressed: () => _bookingReedemDialog(context),
              ),
              const SizedBox(
                height: 10,
              ),
              BlocProvider(
                create: (context) => BookingBloc(),
                child: BlocConsumer<BookingBloc, BookingState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      loading: () {
                        UXToast.show(
                            message: 'Sedang Mengecek Quota',
                            backgroundColor: UXAppColors.gojekBlue,
                            textColor: UXAppColors.biru2,
                            toastGravity: ToastGravity.BOTTOM);
                      },
                      quotaSuccess: (data) {
                        Logger().v(data);
                        if (data.success) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => KartuKuningTahap1(),
                              ),
                              (route) => false);
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return NoQuotaDialog(
                                message: data.message,
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              );
                            },
                          );
                        }
                      },
                    );
                  },
                  builder: (context, state) {
                    return UXButton(
                      title: "Daftar tanpa Kode Booking",
                      onPressed: () {
                        context.read<BookingBloc>()
                          ..add(BookingEvent.checkQuota());
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
