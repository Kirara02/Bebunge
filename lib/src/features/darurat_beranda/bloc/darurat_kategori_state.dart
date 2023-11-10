part of 'darurat_kategori_bloc.dart';

@freezed
class DaruratKategoriState with _$DaruratKategoriState {
  const factory DaruratKategoriState.initial() = _Initial;
  const factory DaruratKategoriState.loading() = _Loading;
  const factory DaruratKategoriState.loaded(List<DaruratKategoryMod> data) =
      _loaded;
  const factory DaruratKategoriState.error(NetworkExceptions error) = _Error;
}
