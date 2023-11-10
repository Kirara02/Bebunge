import 'package:freezed_annotation/freezed_annotation.dart';

part 'desired_wages_mod.g.dart';
part 'desired_wages_mod.freezed.dart';

@freezed
class DesiredWagesMod with _$DesiredWagesMod {
  const factory DesiredWagesMod({required String name}) = _DesiredWagesMod;

  factory DesiredWagesMod.fromJson(Map<String, dynamic> json) =>
      _$DesiredWagesModFromJson(json);
}
