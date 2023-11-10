import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/berita/berita_detail.dart';

part 'beranda_state.freezed.dart';

@freezed
class BerandaState with _$BerandaState {
  const factory BerandaState.initial() = _Initial;
  const factory BerandaState.loading() = _Loading;
  const factory BerandaState.loaded(List<BeritaDetailDto> data) = _Loaded;
  const factory BerandaState.error(NetworkExceptions error) = _Error;
}
