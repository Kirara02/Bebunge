part of 'berita_terkini_bloc.dart';

@freezed
class BeritaTerkiniEvent with _$BeritaTerkiniEvent {
  const factory BeritaTerkiniEvent.started(
      {required int pageNumber, @Default(false) bool showContent}) = _Started;
}
