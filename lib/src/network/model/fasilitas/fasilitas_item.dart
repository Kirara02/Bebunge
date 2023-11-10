import 'package:freezed_annotation/freezed_annotation.dart';

part 'fasilitas_item.freezed.dart';
part 'fasilitas_item.g.dart';

@freezed
class FasilitasItem with _$FasilitasItem {
  factory FasilitasItem({
    final int? id,
    final String? slug,
    final String? nama,
    final String? deskripsi,
    final String? gambar,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'update_at') final String? updateAt,
  }) = _FasilitasItem;

  factory FasilitasItem.fromJson(Map<String, dynamic> json) =>
      _$FasilitasItemFromJson(json);
}
