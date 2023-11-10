import 'package:freezed_annotation/freezed_annotation.dart';

part 'bebeli_filter_kec.freezed.dart';
part 'bebeli_filter_kec.g.dart';

@freezed
class BebeliFilterKec with _$BebeliFilterKec {
  factory BebeliFilterKec({String? id, String? text}) = _BebeliFilterKec;

  factory BebeliFilterKec.fromJson(Map<String, dynamic> json) =>
      _$BebeliFilterKecFromJson(json);
}
