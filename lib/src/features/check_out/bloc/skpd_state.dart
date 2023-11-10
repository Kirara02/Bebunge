part of 'skpd_bloc.dart';

@freezed
class SkpdState with _$SkpdState {
  const factory SkpdState.initial() = _Initial;
  const factory SkpdState.loading() = _Loading;
  const factory SkpdState.loaded(List<SkpdItem> data) = _Loaded;
  const factory SkpdState.error(NetworkExceptions error) = _Error;
}
