import 'package:freezed_annotation/freezed_annotation.dart';

part 'formulir_kk.freezed.dart';
part 'formulir_kk.g.dart';

@Freezed()
class FormulirKk with _$FormulirKk {
  const factory FormulirKk({
    bool? success,
    String? message,
  }) = _FormulirKk;

  factory FormulirKk.fromJson(Map<String, dynamic> json) =>
      _$FormulirKkFromJson(json);
}
