part of 'fasilitas_content_bloc.dart';

@freezed
class FasilitasContentEvent with _$FasilitasContentEvent {
  const factory FasilitasContentEvent.started({String? id}) = _Started;
}
