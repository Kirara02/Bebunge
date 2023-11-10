import 'dart:developer';

import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/config/ux_screen.dart';
import 'package:bebunge/src/utils/function.dart';
import 'package:bebunge/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SetLokasi extends StatefulWidget {
  const SetLokasi({super.key});

  @override
  State<SetLokasi> createState() => _SetLokasiState();
}

class _SetLokasiState extends State<SetLokasi> {
  Position? position;
  double lat = -6.170166;
  double lon = 106.831375;

  String? address;

  Future<Position?> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    //location service not enabled, don't continue
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      Navigator.pop(context);
      return Future.error('Location service Not Enabled');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        UXToast.show(
          backgroundColor: UXAppColors.gojekRed,
          message:
              "Kamu Harus Mengijinkan akses Lokasi Untuk Menggunakan Fitur ini",
        );
        return Future.error('Location permission denied');
      }
    }
    //permission denied forever
    if (permission == LocationPermission.deniedForever) {
      UXToast.show(
        backgroundColor: UXAppColors.gojekRed,
        message: "Location permission denied forever, we cannot access",
      );
      return Future.error(
        'Location permission denied forever, we cannot access',
      );
    }

    //getCurrentLocation
    position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
    lat = position!.latitude;
    lon = position!.longitude;
    log('location refresh $lat /$lon');
    log('default  -6.170166 106.831375.');
    return position;
  }

  Future<void> _getAddress(BuildContext context) async {
    await _getCurrentLocation();
    List<Placemark> data = await placemarkFromCoordinates(
      lat,
      lon,
    );
    final place = data.first;
    address =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.administrativeArea}, ${place.country}';
    log(address!);
    var pref = await SharedPreferences.getInstance();
    pref.setStringList(
        UXConstants.location, [lat.toString(), lon.toString(), address ?? '']);
    Navigator.pop(context, [lat.toString(), lon.toString()]);
    // Future.delayed(Duration(seconds: 1), () {

    // });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onWillPop(context),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: Container(
          child: FutureBuilder(
            future: _getAddress(context),
            builder: (context, AsyncSnapshot<void> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                if (snapshot.hasError) {
                  Logger().e('error nto');
                }
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Lokasi Anda'),
                      Text('Lintang ${lat}'),
                      Text('Bujur ${lon}'),
                      SizedBox(
                          width: UXScreens.width * 0.8,
                          child:
                              Text('${address}', textAlign: TextAlign.center)),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
