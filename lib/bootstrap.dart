import 'dart:async';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_maps_flutter_android/google_maps_flutter_android.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:wakelock/wakelock.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function() builder,
  // required String environment,
  // required FirebaseOptions firebaseOptions,
) async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory appDir = await path_provider.getApplicationDocumentsDirectory();
  await dotenv.load(fileName: ".env");
  await EasyLocalization.ensureInitialized();
  // final GoogleMapsFlutterPlatform mapsImplementation =
  //     GoogleMapsFlutterPlatform.instance;
  // if (mapsImplementation is GoogleMapsFlutterAndroid) {
  //   mapsImplementation.useAndroidViewSurface = true;
  // }
  Wakelock.enable();
  runApp(await builder());
}
