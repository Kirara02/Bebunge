import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/darurat_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/darurat/darurat_kategory_mod.dart';

part 'darurat_kategori_event.dart';
part 'darurat_kategori_state.dart';
part 'darurat_kategori_bloc.freezed.dart';

class DaruratKategoriBloc
    extends Bloc<DaruratKategoriEvent, DaruratKategoriState> {
  DaruratKategoriBloc() : super(_Initial()) {
    on<DaruratKategoriEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(DaruratKategoriState.loading());
          final ApiResult<List<DaruratKategoryMod>> apiResult =
              await DaruratRepositoryImpl().categoryDarurat();
          apiResult.when(
            success: (data) => emit(DaruratKategoriState.loaded(data)),
            failure: (error) => emit(DaruratKategoriState.error(error)),
          );
        },
      );
    });
  }
  @override
  void onChange(Change<DaruratKategoriState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
