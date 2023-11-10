import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_params.freezed.dart';
part 'filter_params.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class FilterParams with _$FilterParams {
  const factory FilterParams(
      {String? kategori,
      String? limit,
      String? page,
      String? search}) = _FilterParams;

  factory FilterParams.fromJson(Map<String, dynamic> json) =>
      _$FilterParamsFromJson(json);
}
