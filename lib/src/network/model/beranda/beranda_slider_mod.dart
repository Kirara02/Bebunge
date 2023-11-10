import 'package:freezed_annotation/freezed_annotation.dart';

part 'beranda_slider_mod.freezed.dart';
part 'beranda_slider_mod.g.dart';

@freezed
class BerandaSliderMod with _$BerandaSliderMod {
  factory BerandaSliderMod(
      {@Default(0) final int? id,
      @Default('') final String? nama,
      @Default('') final String? deskripsi,
      @Default('') final String? gambar}) = _BerandaSliderMod;

  factory BerandaSliderMod.fromJson(Map<String, dynamic> json) =>
      _$BerandaSliderModFromJson(json);
}
