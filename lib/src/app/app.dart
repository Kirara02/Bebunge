import 'dart:developer';

import 'package:advanced_in_app_review/advanced_in_app_review.dart';
import 'package:app_version_update/app_version_update.dart';
import 'package:bebunge/src/features/shared/jadwal_shalat/jadwal_shalat_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../config/route/routes.dart';
import '../config/theme/themes.dart';
import '../features/bebeli/cubit/bebeli_params_cubit.dart';
import '../features/shared/auth/auth_bloc.dart';
import '../features/shared/bebeli/bebeli_auth_bloc.dart';
import '../features/shared/jadwal_shalat/jadwal_shalat_cubit.dart';
import '../utils/dismiss_keyboard.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      log(context.locale.toString());
      // context.setLocale(Locale('id'));
    });

    super.initState();
    // _verifyVersion();
    AdvancedInAppReview()
        .setMinDaysBeforeRemind(4)
        .setMinDaysAfterInstall(1)
        .setMinLaunchTimes(3)
        .setMinSecondsBeforeShowDialog(4)
        .monitor();
  }

  void _verifyVersion() async {
    await AppVersionUpdate.checkForUpdates(
            appleId: '1459706595',
            playStoreId: 'apps.bebunge.diskominfokabbekasi',
            country: 'id')
        .then((data) async {
      print(data);
      if (data.canUpdate!) {
        // await AppVersionUpdate.showBottomSheetUpdate(context: context, appVersionResult: appVersionResult)
        // await AppVersionUpdate.showPageUpdate(context: context, appVersionResult: appVersionResult)
        await AppVersionUpdate.showAlertUpdate(
          appVersionResult: data,
          context: context,
          mandatory: true,
          backgroundColor: Colors.grey[200],
          title: 'Tersedia versi yang lebih baru.',
          content:
              'Apakah Anda ingin memperbarui aplikasi Anda ke versi terbaru?',
          updateButtonText: 'MEMPERBARUI',
          cancelButtonText: 'NANTI',
          titleTextStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24.0),
          contentTextStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        );
      }
    });
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        hideKeyboard(context);
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(),
          ),
          BlocProvider(
            create: (context) => JadwalShalatCubit()..initValue(),
          ),
          BlocProvider(
            create: (context) => BebeliAuthBloc(),
          ),
          BlocProvider(
            create: (context) => JadwalShalatBloc(),
          ),
          BlocProvider(
            create: (context) => BebeliParamsCubit(),
          ),
        ],
        child: MaterialApp(
          theme: UXTheme.light(),
          // theme: Theme.of(context).,
          // darkTheme: darkTheme,
          // themeMode: themeMode,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          // home: BebeliKeranjang(),
          initialRoute: '/splash',
          onGenerateRoute: Routes.routeServices,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
