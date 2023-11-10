part of 'berita_terkini_bloc.dart';

@freezed
class BeritaTerkiniState with _$BeritaTerkiniState {
  const factory BeritaTerkiniState.initial() = _Initial;
  const factory BeritaTerkiniState.loading() = _Loading;
  const factory BeritaTerkiniState.loaded(
      {required List<BeritaDetailDto> data,
      required bool nextPage,
      required int currentPage}) = _Loaded;
  const factory BeritaTerkiniState.Error(NetworkExceptions error) = _Error;
}
