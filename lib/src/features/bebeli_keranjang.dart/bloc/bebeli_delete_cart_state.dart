part of 'bebeli_delete_cart_bloc.dart';

@freezed
class BebeliDeleteCartState with _$BebeliDeleteCartState {
  const factory BebeliDeleteCartState.initial() = _Initial;
  const factory BebeliDeleteCartState.loading() = _loading;
  const factory BebeliDeleteCartState.loaded(Response data) = _Loaded;
  const factory BebeliDeleteCartState.error(NetworkExceptions error) = _Error;
}
