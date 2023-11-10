import 'dart:async';
import 'dart:developer';

import 'package:bebunge/src/config/ux_constants.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../widgets/wrapper/flash_message_wrapper.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  Position? position;
  double lat = -7.3559213;
  double lon = 108.187251;

  String? address;
  bool refreshMapsOnlyOnce = false;
  Timer? timerRefreshLocation;
  Timer? timerRefresh;

  Future<void> UXOpenMap({String? lat, String? long}) async {
    final String googleMapslocationUrl =
        "https://www.google.com/maps/search/?api=1&query=${lat},${long}";
    if (!await launchUrlString(googleMapslocationUrl,
        mode: LaunchMode.externalApplication,
        webViewConfiguration: WebViewConfiguration(
            enableDomStorage: true, enableJavaScript: true))) {
      throw Exception('Could not launch $googleMapslocationUrl');
    }
  }
  // GlobalKey _globalKey = GlobalKey();

  // void _timer() {
  //   timerRefresh = Timer.periodic(
  //     const Duration(seconds: 3),
  //     (timer) {
  //       if (toogleRefresh) {
  //         toogleRefresh = false;
  //         setState(() {});
  //       }
  //     },
  //   );

  //   Future.delayed(const Duration(seconds: 5)).then((value) {
  //     toogleRefresh = true;
  //   });
  // }

  Future<Position?> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    //location service not enabled, don't continue
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location service Not Enabled');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        FlashMessage.error(
          context: context,
          message:
              "Kamu Harus Mengijinkan akses Lokasi Untuk Menggunakan Fitur ini",
        );
        return Future.error('Location permission denied');
      }
    }
    //permission denied forever
    if (permission == LocationPermission.deniedForever) {
      FlashMessage.error(
        context: context,
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
    log('default  -7.3398585 108.2450203');
    return position;
  }

  Future<Position?> _getAddress() async {
    var currentPosition = await _getCurrentLocation();
    List<Placemark> data = await placemarkFromCoordinates(
      lat,
      lon,
    );
    final place = data.first;
    address =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.administrativeArea}, ${place.country}';
    log(address!);
    return currentPosition;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Menunggu data lokasi',
                style: TextStyle(fontSize: UXConstants.kFontSizeL)),
            SizedBox(
              height: 140,
              child: FutureBuilder(
                future: _getAddress(),
                builder: (context, AsyncSnapshot<Position?> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    Future.delayed(
                      Duration(seconds: 1),
                      () {
                        Navigator.pop(context, [
                          address,
                          {
                            'lat': snapshot.data!.latitude.toString(),
                            'lon': snapshot.data!.longitude.toString()
                          }
                        ]);
                      },
                    );
                    return Column(
                      children: [
                        Text('Koordinat',
                            style: TextStyle(fontSize: UXConstants.kFontSizeL)),
                        snapshot.data != null
                            ? Text(
                                'latitude:${snapshot.data!.latitude},\nlongitude:${snapshot.data!.longitude}')
                            : SizedBox(),
                        TextButton(
                            onPressed: () {
                              UXOpenMap(
                                  lat: snapshot.data!.latitude.toString(),
                                  long: snapshot.data!.longitude.toString());
                            },
                            child: Text('Map')),
                        Flexible(
                          child: Text(
                            '${address}',
                            textAlign: TextAlign.center,
                            maxLines: null,
                          ),
                        )
                      ],
                    );
                  }
                },
              ),
            ),

            // SizedBox(
            //   height: 500,
            //   child: FutureBuilder(
            //     future: _getCurrentLocation(),
            //     builder: (context, AsyncSnapshot<Position?> snapshot) {
            //       if (snapshot.connectionState ==
            //           ConnectionState.waiting) {
            //         return const Center(
            //           child: CircularProgressIndicator(),
            //         );
            //       } else {
            //         return SimpleMap(
            //           lat: -6.3685552,
            //           lon: 108.2450203,
            //           radius: '200',
            //         );
            //       }
            //     },
            //   ),
            // ),
          ],
        )),
      ),
    );
  }
}
