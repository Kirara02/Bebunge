import 'package:freezed_annotation/freezed_annotation.dart';

part 'bebeli_params.freezed.dart';
part 'bebeli_params.g.dart';

@freezed
class BebeliParams with _$BebeliParams {
  factory BebeliParams(
      {String? cari,
      String? kat,
      String? sub,
      String? kec,
      String? kel,
      String? toko,
      String? limit,
      String? next,
      String? start}) = _BebeliParams;

  factory BebeliParams.fromJson(Map<String, dynamic> json) =>
      _$BebeliParamsFromJson(json);
}
