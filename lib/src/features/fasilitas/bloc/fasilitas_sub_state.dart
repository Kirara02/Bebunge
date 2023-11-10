part of 'fasilitas_sub_bloc.dart';

@freezed
class FasilitasSubState with _$FasilitasSubState {
  const factory FasilitasSubState.initial() = _Initial;
  const factory FasilitasSubState.loading() = _Loading;
  const factory FasilitasSubState.loaded(List<FasilitasSubItem> data) = _loaded;
  const factory FasilitasSubState.error(NetworkExceptions error) = _Error;
}
