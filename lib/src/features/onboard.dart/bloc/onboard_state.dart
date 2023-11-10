part of 'onboard_bloc.dart';

@freezed
class OnboardState with _$OnboardState {
  const factory OnboardState.initial() = _Initial;
  const factory OnboardState.loading() = _Loading;
  const factory OnboardState.loaded(List<OnboardMod> data) = _Loaded;
  const factory OnboardState.error(NetworkExceptions error) = _Error;
}
