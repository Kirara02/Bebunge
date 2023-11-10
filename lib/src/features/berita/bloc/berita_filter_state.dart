part of 'berita_filter_bloc.dart';

@freezed
class BeritaFilterState with _$BeritaFilterState {
  const factory BeritaFilterState.initial() = _Initial;
  const factory BeritaFilterState.loading() = _Loading;
  const factory BeritaFilterState.loaded(
      List<BeritaDetailDto> data, int curentPage, bool nextPage) = _Loaded;
  const factory BeritaFilterState.error(NetworkExceptions error) = _Error;
}
