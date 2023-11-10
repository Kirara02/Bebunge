part of 'berita_filter_bloc.dart';

@freezed
class BeritaFilterEvent with _$BeritaFilterEvent {
  const factory BeritaFilterEvent.started(FilterParams filter) = _Started;
}
