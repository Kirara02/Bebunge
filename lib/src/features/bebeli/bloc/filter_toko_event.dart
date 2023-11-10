part of 'filter_toko_bloc.dart';

@freezed
class FilterTokoEvent with _$FilterTokoEvent {
  const factory FilterTokoEvent.started({String? id, String? toko}) = _Started;
}
