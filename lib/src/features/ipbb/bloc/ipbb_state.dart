part of 'ipbb_bloc.dart';

@freezed
class IpbbState with _$IpbbState {
  const factory IpbbState.initial() = _Initial;
  const factory IpbbState.loading() = _Loading;
  const factory IpbbState.loaded(IPBBMod data) = _Loaded;
  const factory IpbbState.error(NetworkExceptions error) = _Error;
}
