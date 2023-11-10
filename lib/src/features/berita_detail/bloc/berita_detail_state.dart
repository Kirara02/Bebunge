part of 'berita_detail_bloc.dart';

@freezed
class BeritaDetailState with _$BeritaDetailState {
  const factory BeritaDetailState.initial() = _Initial;
  const factory BeritaDetailState.loading() = _Loading;
  const factory BeritaDetailState.loaded(BeritaDetailDto data) = _Loaded;
  const factory BeritaDetailState.error(NetworkExceptions error) = _Error;
}
