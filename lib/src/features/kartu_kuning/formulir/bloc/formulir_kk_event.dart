part of 'formulir_kk_bloc.dart';

@freezed
class FormulirKkEvent with _$FormulirKkEvent {
  const factory FormulirKkEvent.formTahap1({FormData? params}) = _FormTahap1;
  const factory FormulirKkEvent.formTahap2({FormData? params}) = _FormTahap2;
  const factory FormulirKkEvent.getKecamatan() = _GetKecamatan;
  const factory FormulirKkEvent.getDesa({String? kecamatan}) = _GetDesa;
  const factory FormulirKkEvent.getPendidikan() = _GetPendidikan;
  const factory FormulirKkEvent.getReligion() = _GetReligion;
  const factory FormulirKkEvent.getMaritalStatus() = _GetMaritalStatus;
  const factory FormulirKkEvent.getDesiredWages() = _GetDesiredWages;
  const factory FormulirKkEvent.getJurusan({String? education}) = _GetJurusan;
  const factory FormulirKkEvent.getBahasa() = _GetBahasa;
  const factory FormulirKkEvent.getPekerjaan() = _GetPekerjaan;
}
