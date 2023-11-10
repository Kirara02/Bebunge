part of 'sekolah_list_bloc.dart';

@freezed
class SekolahListEvent with _$SekolahListEvent {
  const factory SekolahListEvent.started(PendidikanParams params) = _Started;
}
