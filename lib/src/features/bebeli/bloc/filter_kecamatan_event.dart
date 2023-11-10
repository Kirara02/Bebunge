part of 'filter_kecamatan_bloc.dart';

@freezed
class FilterKecamatanEvent with _$FilterKecamatanEvent {
  const factory FilterKecamatanEvent.started({String? seachText, String? id}) =
      _Started;
}
