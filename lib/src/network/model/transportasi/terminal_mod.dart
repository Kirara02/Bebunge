import 'package:freezed_annotation/freezed_annotation.dart';

part 'terminal_mod.freezed.dart';
part 'terminal_mod.g.dart';

@freezed
class TerminalMod with _$TerminalMod {
  factory TerminalMod({
    final int? id,
    final String? kode,
    final String? nama,
    final String? tipe,
    @JsonKey(name: "created_at") final String? createdAt,
    @JsonKey(name: "updated_at") final String? updatedAt,
  }) = _TerminalMod;

  factory TerminalMod.fromJson(Map<String, dynamic> json) =>
      _$TerminalModFromJson(json);
}
