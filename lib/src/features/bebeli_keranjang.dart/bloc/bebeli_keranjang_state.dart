part of 'bebeli_keranjang_bloc.dart';

@freezed
class BebeliKeranjangState with _$BebeliKeranjangState {
  const factory BebeliKeranjangState.initial() = _Initial;
  const factory BebeliKeranjangState.loading() = _Loading;
  const factory BebeliKeranjangState.loaded(BebeliCartMod data) = _Loaded;
  const factory BebeliKeranjangState.error(NetworkExceptions error) = _Error;
}
