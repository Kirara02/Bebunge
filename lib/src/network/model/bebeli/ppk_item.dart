import 'package:freezed_annotation/freezed_annotation.dart';

part 'ppk_item.freezed.dart';
part 'ppk_item.g.dart';

@freezed
class PpkItem with _$PpkItem {
  factory PpkItem(
      {@Default('') final String id,
      @Default('') final String text,
      @Default('')
      @JsonKey(name: 'alamat_dinas')
      final String alamatDinas}) = _PpkItem;

  factory PpkItem.fromJson(Map<String, dynamic> json) =>
      _$PpkItemFromJson(json);
}
