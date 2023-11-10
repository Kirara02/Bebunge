part of 'about_bloc.dart';

@freezed
class AboutState with _$AboutState {
  const factory AboutState.initial() = _Initial;
  const factory AboutState.loading() = _loading;
  const factory AboutState.loaded(AboutMod data) = _Loaded;
  const factory AboutState.error(NetworkExceptions error) = _error;
}
