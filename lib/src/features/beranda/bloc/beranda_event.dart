import 'package:freezed_annotation/freezed_annotation.dart';

part 'beranda_event.freezed.dart';

@freezed
class BerandaEvent with _$BerandaEvent {
  const factory BerandaEvent.getBeritaDetail() = _getBeritaDetail;
}
