part of 'fasilitas_content_bloc.dart';

@freezed
class FasilitasContentState with _$FasilitasContentState {
  const factory FasilitasContentState.initial() = _Initial;
  const factory FasilitasContentState.loading() = _Loading;
  const factory FasilitasContentState.loaded(List<FasilitasContent> data) =
      _Loaded;
  const factory FasilitasContentState.error(NetworkExceptions error) = _Error;
}
