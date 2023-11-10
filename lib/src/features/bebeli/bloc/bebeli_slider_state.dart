part of 'bebeli_slider_bloc.dart';

@freezed
class BebeliSliderState with _$BebeliSliderState {
  const factory BebeliSliderState.initial() = _Initial;
  const factory BebeliSliderState.loading() = _Loading;
  const factory BebeliSliderState.loaded(List<BebeliSliderImg> data) = _Loaded;
  const factory BebeliSliderState.error(NetworkExceptions error) = _Error;
}
