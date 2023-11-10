part of 'formulir_kk_bloc.dart';

@freezed
class FormulirKkState with _$FormulirKkState {
  const factory FormulirKkState.initial() = _Initial;
  const factory FormulirKkState.loading() = _loading;
  const factory FormulirKkState.loaded(FormulirKk success) = _Loaded;
  const factory FormulirKkState.loadedKecamatan(List<KecamatanMod> data) =
      _LoadedKecamatan;
  const factory FormulirKkState.loadedDesa(List<DesaMod> data) = _LoadedDesa;
  const factory FormulirKkState.loadedPendidikan(List<EducationMod> data) =
      _LoadedEducation;
  const factory FormulirKkState.loadedBahasa(List<LanguageMod> data) =
      _LoadedBahasa;
  const factory FormulirKkState.loadedJurusan(List<MajorMod> data) =
      _LoadedJurusan;
  const factory FormulirKkState.loadedPekerjaan(List<OccupationMod> data) =
      _LoadedPekerjaan;
  const factory FormulirKkState.loadedReligion(List<ReligionMod> data) =
      _LoadedReligion;
  const factory FormulirKkState.loadedMaritalStatus(
      List<MaritalStatusMod> data) = _LoadedMaritalStatus;
  const factory FormulirKkState.loadedDesiredWages(List<DesiredWagesMod> data) =
      _LoadedDesiredWages;
  const factory FormulirKkState.error(NetworkExceptions error) = _Error;
}
