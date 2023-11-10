part of 'berita_category_bloc.dart';

@freezed
class BeritaCategoryState with _$BeritaCategoryState {
  const factory BeritaCategoryState.initial() = _Initial;
  const factory BeritaCategoryState.loading() = _Loading;
  const factory BeritaCategoryState.loaded(List<BeritaCategory> data) = _Loaded;
  const factory BeritaCategoryState.error(NetworkExceptions error) = _Error;
}
