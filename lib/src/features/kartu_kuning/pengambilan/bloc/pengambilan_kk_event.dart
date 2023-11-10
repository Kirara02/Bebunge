part of 'pengambilan_kk_bloc.dart';

@freezed
class PengambilanKkEvent with _$PengambilanKkEvent {
  const factory PengambilanKkEvent.getKartuKuning() = _GetKartuKuning;
  const factory PengambilanKkEvent.getUser() = _GetUser;
  const factory PengambilanKkEvent.pengajuan({
    required String pickup_by,
    required String pickup_date,
    required String pickup_place,
  }) = _Pengajuan;
}
