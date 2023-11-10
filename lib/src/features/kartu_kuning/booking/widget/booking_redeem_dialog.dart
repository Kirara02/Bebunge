import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/kartu_kuning/booking/bloc/booking_bloc.dart';
import 'package:bebunge/src/features/kartu_kuning/formulir/view/kartu_kuning_tahap_1.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/kartu_kuning_form.dart';
import 'package:bebunge/src/utils/dismiss_keyboard.dart';
import 'package:bebunge/src/widgets/button/button.dart';
import 'package:bebunge/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../../config/theme/colors.dart';

class BookingRedeemDialog extends StatefulWidget {
  const BookingRedeemDialog({super.key});

  @override
  State<BookingRedeemDialog> createState() => _BookingRedeemDialogState();
}

class _BookingRedeemDialogState extends State<BookingRedeemDialog> {
  TextEditingController codeController = TextEditingController();

  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  Future _toast(String? message) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: UXAppColors.danger,
        textColor: UXColors.white);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BookingBloc, BookingState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loading: () => UXToast.show(
              message: 'Sedang Menggirim Data',
              backgroundColor: UXAppColors.gojekBlue,
              textColor: UXAppColors.biru2,
              toastGravity: ToastGravity.BOTTOM),
          success: (data) {
            Logger().v(data);
            if (data.success && data.date != null) {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KartuKuningTahap1(
                      date: data.date!,
                      bookingCode: codeController.text,
                    ),
                  ),
                  (route) => false);
            } else if (!data.success) {
              _toast(data.message);
            }
          },
          error: (error) {
            Logger().v(error);
          },
        );
      },
      child: Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 36,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Pengecekan Kode Booking",
                  style: TextStyle(
                    fontSize: UXConstants.kFontSizeL,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              KartuKuningForm(
                controller: codeController,
                title: "Masukan Kode",
                decoration: InputDecoration(
                  hintText: "*******",
                ),
                maxLength: 10,
              ),
              const SizedBox(
                height: 16,
              ),
              UXButton(
                title: "SUBMIT",
                onPressed: () {
                  if (codeController.text.isEmpty) {
                    _toast("Silahkan masukan kode booking anda");
                  } else {
                    hideKeyboard(context);
                    context.read<BookingBloc>().add(
                        BookingEvent.checkBooking(code: codeController.text));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
