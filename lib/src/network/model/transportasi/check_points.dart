import 'package:bebunge/src/network/model/transportasi/terminal_mod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_points.freezed.dart';
part 'check_points.g.dart';

@freezed
class CheckPointMod with _$CheckPointMod {
  factory CheckPointMod({int? id, TerminalMod? terminal}) = _CheckPointMod;

  factory CheckPointMod.fromJson(Map<String, dynamic> json) =>
      _$CheckPointModFromJson(json);
}
