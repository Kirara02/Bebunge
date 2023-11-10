import 'package:freezed_annotation/freezed_annotation.dart';

part 'fasilitas_sub_item.freezed.dart';
part 'fasilitas_sub_item.g.dart';

@freezed
class FasilitasSubItem with _$FasilitasSubItem {
  factory FasilitasSubItem({
    final int? id,
    final String? slug,
    final String? nama,
    final String? deskripsi,
    final String? gambar,
    final int? fasilitas,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'update_at') final String? updateAt,
  }) = _FasilitasSubItem;

  factory FasilitasSubItem.fromJson(Map<String, dynamic> json) =>
      _$FasilitasSubItemFromJson(json);
}
