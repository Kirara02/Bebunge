import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_toko.freezed.dart';
part 'filter_toko.g.dart';

@freezed
class FilterToko with _$FilterToko {
  factory FilterToko({String? id, String? text}) = _FilterToko;

  factory FilterToko.fromJson(Map<String, dynamic> json) =>
      _$FilterTokoFromJson(json);
}
