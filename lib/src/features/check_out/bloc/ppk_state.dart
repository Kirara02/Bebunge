part of 'ppk_bloc.dart';

@freezed
class PpkState with _$PpkState {
  const factory PpkState.initial() = _Initial;
  const factory PpkState.loading() = _Loading;
  const factory PpkState.loaded(List<PpkItem> data) = _Loaded;
  const factory PpkState.error(NetworkExceptions error) = _Error;
}
