part of 'sekolah_list_bloc.dart';

@freezed
class SekolahListState with _$SekolahListState {
  const factory SekolahListState.initial() = _Initial;
  const factory SekolahListState.loading() = _Loading;
  const factory SekolahListState.loaded(
    int currentPage,
    bool nextPage,
    List<SekolahDetail> data,
  ) = _Loaded;
  const factory SekolahListState.error(NetworkExceptions error) = _Error;
}
