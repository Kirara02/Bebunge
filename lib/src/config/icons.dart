import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../gen/assets.gen.dart';

class AppIcons {
  //ANCHOR - Main Navigation Icon
  static const Icon beranda = Icon(Symbols.home);
  static const Icon berita = Icon(Symbols.newspaper);
  static const Icon darurat = Icon(Symbols.emergency);
  static const Icon pengaturan = Icon(Icons.settings);

  //ANCHOR - Main Menu Icon
  static Widget kependudukan =
      Image.asset(Assets.images.kependudukan.path, height: 42, width: 42);

  static Widget bebeli =
      Image.asset(Assets.images.bebeli.path, height: 52, width: 52);

  static Widget span_lapor =
      Image.asset(Assets.images.laporan.path, height: 45, width: 45);

  static Widget harga_bahan =
      Image.asset(Assets.images.hargaPasar.path, height: 42, width: 42);

  static Widget boss =
      Image.asset(Assets.images.boss.path, height: 42, width: 42);

  static Widget ipbb =
      Image.asset(Assets.images.ipbb.path, height: 54, width: 54);

  static Widget kartuKuning =
      Image.asset(Assets.images.kartukuning.path, height: 42, width: 42);

  static Widget sipKerja =
      Image.asset(Assets.images.sipKerja.path, height: 42, width: 42);

  static Widget ketenagakerjaan =
      Image.asset(Assets.images.ketenagakerjaan.path, height: 42, width: 42);

  static Widget lainnya =
      Image.asset(Assets.images.lainnya.path, height: 32, width: 32);

  static Widget ppdb =
      Image.asset(Assets.images.ppdb.path, height: 54, width: 54);
}
