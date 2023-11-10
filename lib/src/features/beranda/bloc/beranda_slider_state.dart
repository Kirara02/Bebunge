part of 'beranda_slider_bloc.dart';

@freezed
class BerandaSliderState with _$BerandaSliderState {
  const factory BerandaSliderState.initial() = _Initial;
  const factory BerandaSliderState.loading() = _Loading;
  const factory BerandaSliderState.loaded(List<BerandaSliderMod> data) =
      _Loaded;
  const factory BerandaSliderState.error(NetworkExceptions error) = _Error;
}
