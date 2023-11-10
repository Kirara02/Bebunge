part of 'fasilitas_bloc.dart';

@freezed
class FasilitasState with _$FasilitasState {
  const factory FasilitasState.initial() = _Initial;
  const factory FasilitasState.loading() = _Loading;
  const factory FasilitasState.loaded(List<FasilitasItem> data) = _Loaded;
  const factory FasilitasState.error(NetworkExceptions error) = _Error;
}
