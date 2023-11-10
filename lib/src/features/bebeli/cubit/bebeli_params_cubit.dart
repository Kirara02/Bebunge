import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

import '../../../network/model/bebeli/bebeli_params.dart';

class BebeliParamsCubit extends Cubit<BebeliParams> {
  BebeliParamsCubit() : super(BebeliParams());

  addParams(
      {String? cari,
      String? kategori,
      String? kecamatan,
      String? kelurahan,
      String? sub,
      String? toko,
      String? start}) {
    emit(state.copyWith(
        cari: cari ?? state.cari,
        kat: kategori ?? state.kat,
        kec: kecamatan ?? state.kec,
        kel: kelurahan ?? state.kel,
        toko: toko ?? state.toko,
        sub: sub ?? state.sub,
        start: start ?? state.start));
  }

  @override
  void onChange(Change<BebeliParams> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
