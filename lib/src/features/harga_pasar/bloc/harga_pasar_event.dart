part of 'harga_pasar_bloc.dart';

@freezed
class HargaPasarEvent with _$HargaPasarEvent {
  const factory HargaPasarEvent.started({String? date}) = _Started;
}
