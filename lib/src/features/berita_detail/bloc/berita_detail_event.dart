part of 'berita_detail_bloc.dart';

@freezed
class BeritaDetailEvent with _$BeritaDetailEvent {
  const factory BeritaDetailEvent.started({String? beritaId}) = _Started;
}
