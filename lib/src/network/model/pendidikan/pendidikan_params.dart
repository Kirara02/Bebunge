import 'package:freezed_annotation/freezed_annotation.dart';

part 'pendidikan_params.freezed.dart';
part 'pendidikan_params.g.dart';

@freezed
class PendidikanParams with _$PendidikanParams {
  factory PendidikanParams({String? search, String? category, String? page}) =
      _PendidikanParams;

  factory PendidikanParams.fromJson(Map<String, dynamic> json) =>
      _$PendidikanParamsFromJson(json);
}
