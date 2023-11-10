part of 'filter_kelurahan_bloc.dart';

@freezed
class FilterKelurahanEvent with _$FilterKelurahanEvent {
  const factory FilterKelurahanEvent.started(
      {String? search, String? kecId, String? kelId}) = _Started;
}
