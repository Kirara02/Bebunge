import 'dart:async';
import 'dart:developer';

import 'package:bebunge/gen/assets.gen.dart';
import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/kartu_kuning/booking/bloc/booking_bloc.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/kartu_kuning_form.dart';
import 'package:bebunge/src/widgets/button/button.dart';
import 'package:bebunge/src/widgets/common/date_picker.dart';
import 'package:bebunge/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

import 'booking_code_dialog.dart';
import 'booking_success_dialog.dart';

class BookingFormDialog extends StatefulWidget {
  const BookingFormDialog({super.key});

  @override
  State<BookingFormDialog> createState() => _BookingFormDialogState();
}

class _BookingFormDialogState extends State<BookingFormDialog> {
  TextEditingController dateBookingController = TextEditingController();
  bool showBookingSuccess = false;

  String? date;

  @override
  void initState() {
    super.initState();
    DateTime today = DateTime.now();
    DateTime tomorrow = today.add(Duration(days: 1));
    date = DateFormat("yyyy-MM-dd").format(tomorrow);
  }

  @override
  void dispose() {
    dateBookingController.dispose();
    super.dispose();
  }

  Future _toast(String? message) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: UXAppColors.danger,
        textColor: UXColors.white);
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
          success: (data) async {
            Logger().d(data);
            if (data.success) {
              await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return BookingSuccessDialog();
                  });

              context
                  .read<BookingBloc>()
                  .add(BookingEvent.showCodeDialog(code: data.data!));
            } else {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 36, horizontal: 24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Assets.svgs.alert.svg(),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            data.message,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          UXButton(
                            title: "OKE",
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
          error: (error) {
            Logger().e(error);
          },
          showCodeDialog: (code) {
            Future.delayed(Duration(seconds: 3));
            if (mounted) {
              // Periksa apakah widget masih aktif
              showDialog(
                context: context,
                builder: (context) => BookingCodeDialog(code: code),
              );
            }
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  "Booking Tanggal Pendaftaran",
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
                title: 'Tanggal Booking',
                controller: dateBookingController,
                readOnly: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.calendar_month),
                ),
                onTap: () {
                  _deliveryDate(passDate: false, todayDisabled: true)
                      .then((dValue) {
                    if (dValue != null) {
                      dateBookingController.text = '$dValue';
                    }
                  });
                },
              ),
              const SizedBox(
                height: 16,
              ),
              UXButton(
                title: "SUBMIT",
                onPressed: () async {
                  if (dateBookingController.text.isEmpty) {
                    _toast("Silahkan masukan tanggal booking");
                  } else {
                    context.read<BookingBloc>().add(
                        BookingEvent.booking(date: dateBookingController.text));
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
