part of 'bebeli_detail_bloc.dart';

@freezed
class BebeliDetailState with _$BebeliDetailState {
  const factory BebeliDetailState.initial() = _Initial;
  const factory BebeliDetailState.loading() = _Loading;
  const factory BebeliDetailState.loaded(BebeliProductDetail data) = _Loaded;
  const factory BebeliDetailState.error(NetworkExceptions error) = _Error;
}
