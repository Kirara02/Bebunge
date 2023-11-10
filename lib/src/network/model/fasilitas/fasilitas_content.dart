import 'package:freezed_annotation/freezed_annotation.dart';

part 'fasilitas_content.freezed.dart';
part 'fasilitas_content.g.dart';

@freezed
class FasilitasContent with _$FasilitasContent {
  factory FasilitasContent(
      {final String? title,
      final String? slug,
      final String? fasilitas,
      @JsonKey(name: 'fasilitas_sub') final String? fasilitasSub,
      final String? content,
      final String? alamat,
      final String? latitude,
      final String? longitude,
      final String? gambar,
      final int? status,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'update_at') final String? updateAt}) = _FasilitasContent;

  factory FasilitasContent.fromJson(Map<String, dynamic> json) =>
      _$FasilitasContentFromJson(json);
}
