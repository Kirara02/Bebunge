import 'package:bebunge/src/features/bebeli_keranjang.dart/view/bebeli_keranjang.dart';
import 'package:bebunge/src/features/darurat_beranda/view/darurat_beranda.dart';
import 'package:bebunge/src/features/darurat_beranda/widget/location_widget.dart';
import 'package:bebunge/src/features/fasilitas/view/fasilitas_page.dart';
import 'package:bebunge/src/features/harga_pasar/view/harga_pasar.dart';
import 'package:bebunge/src/features/kesehatan/view/kesehatan.dart';
import 'package:bebunge/src/features/kesehatan_rs_detail.dart/view/KesehatanRSDetail.dart';
import 'package:bebunge/src/features/onboard.dart/view/onboard_page.dart';
import 'package:bebunge/src/features/transportasi/view/transportasi.dart';

import '../../features/about_page/view/tentang_geografis.dart';
import '../../features/about_page/view/tentang_kependudukan.dart';
import 'package:flutter/material.dart';

import '../../app/app.dart';
import '../../app/app_root.dart';
import '../../features/about_page/view/tentang_sejarah.dart';
import '../../features/bebeli/view/bebeli.dart';
import '../../features/bebeli_detail/view/bebeli_detail.dart';
import '../../features/beranda/view/beranda.dart';
import '../../features/berita/view/berita.dart';
import '../../features/berita_detail/view/berita_detail.dart';
import '../../features/darurat/view/darurat.dart';
import '../../features/pendidikan/view/pendidikan.dart';
import '../../features/pengaturan/view/pengaturan.dart';
import '../../features/splash/view/splash.dart';
import 'routes_name.dart';

class Routes {
  static Route<dynamic>? routeServices(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.app:
        return MaterialPageRoute(builder: ((context) => const App()));

      case RoutesName.appRoot:
        return MaterialPageRoute(builder: (context) => const AppRoot());

      case RoutesName.onboardPage:
        return MaterialPageRoute(builder: (context) => const OnboardPage());

      case RoutesName.splashPage:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      // case RoutesName.signinPage:
      //   return MaterialPageRoute(builder: (context) => const SigninPage());

      // case RoutesName.pilihRegistrasi:
      //   return MaterialPageRoute(builder: (context) => const PilihRegistrasi());

      // case RoutesName.registerPage:
      //   return MaterialPageRoute(builder: (context) => const RegisterPage());

      case RoutesName.berandaPage:
        return MaterialPageRoute(builder: (context) => const Beranda());

      case RoutesName.beritaPage:
        return MaterialPageRoute(builder: (context) => const Berita());

      case RoutesName.daruratPage:
        return MaterialPageRoute(builder: (context) => const DaruratPage());
      case RoutesName.daruratBerandaPage:
        return MaterialPageRoute(builder: (context) => const DaruratBeranda());

      case RoutesName.pengaturanPage:
        return MaterialPageRoute(builder: (context) => const Pengaturan());

      case RoutesName.pendidikanPage:
        return MaterialPageRoute(builder: (context) => const Pendidikan());

      case RoutesName.beritaDetailPage:
        return MaterialPageRoute(builder: (context) => const BeritaDetail());
      case RoutesName.bebeliPage:
        return MaterialPageRoute(builder: (context) => const Bebeli());
      // case RoutesName.bebeliSigninPage:
      //   return MaterialPageRoute(builder: (context) => const SigninBebeli());
      case RoutesName.bebeliDetailPage:
        return MaterialPageRoute(builder: (context) => const BebeliDetail());
      case RoutesName.bebeliKeranjangPage:
        return MaterialPageRoute(builder: (context) => const BebeliKeranjang());
      case RoutesName.tentangSejarah:
        return MaterialPageRoute(builder: (context) => const TentangSejarah());
      case RoutesName.tentangKependudukan:
        return MaterialPageRoute(
            builder: (context) => const TentangKependudukan());
      case RoutesName.tentangGeografis:
        return MaterialPageRoute(
            builder: (context) => const TentangGeografis());
      case RoutesName.hargaPasarPage:
        return MaterialPageRoute(builder: (context) => const HargaPasar());
      case RoutesName.transportasiPage:
        return MaterialPageRoute(builder: (context) => const Transportasi());
      case RoutesName.kesehatanPage:
        return MaterialPageRoute(builder: (context) => const Kesehatan());
      case RoutesName.kesehatanRSDetailPage:
        return MaterialPageRoute(
            builder: (context) => const KesehatanRSDetail());
      case RoutesName.fasilitasPage:
        return MaterialPageRoute(builder: (context) => const FasilitasPage());
      case RoutesName.LocationPage:
        return MaterialPageRoute(builder: (context) => const LocationWidget());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(title: const Text('ERROR'), centerTitle: true),
        body: const Center(
          child: Text('Page not Found'),
        ),
      );
    });
  }
}

// class MultiArgs {
//   final String parentId;
//   final String episodeId;
//   MultiArgs({required this.parentId, required this.episodeId});
// }
