part of 'bebeli_added_bloc.dart';

@freezed
class BebeliAddedState with _$BebeliAddedState {
  const factory BebeliAddedState.initial() = _Initial;
  const factory BebeliAddedState.loading() = _loading;
  const factory BebeliAddedState.loaded(Response data) = _Loaded;
  const factory BebeliAddedState.error(NetworkExceptions error) = _Error;
}
