import 'package:freezed_annotation/freezed_annotation.dart';

part 'tagihan_mod.freezed.dart';
part 'tagihan_mod.g.dart';

@freezed
class TagihanMod with _$TagihanMod {
  const factory TagihanMod(
      {@Default('') final String? tahun,
      @Default(0) final int? pokok,
      @Default(0) final int? denda,
      @Default(0) int? bayar,
      @Default(0) final int? sisa,
      @Default('') @JsonKey(name: 'tgl_bayar') final String? tglBayar,
      @Default('') final String? lunas}) = _TagihanMod;

  factory TagihanMod.fromJson(Map<String, dynamic> json) =>
      _$TagihanModFromJson(json);
}
