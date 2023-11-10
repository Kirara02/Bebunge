import 'package:freezed_annotation/freezed_annotation.dart';

part 'berita_detail.freezed.dart';
part 'berita_detail.g.dart';

@freezed
class BeritaDetailDto with _$BeritaDetailDto {
  factory BeritaDetailDto({
    String? author,
    int? id,
    String? img,
    String? isi,
    String? kategori,
    String? judul,
    String? tgl,
    String? url,
  }) = _BeritaDetailDto;

  factory BeritaDetailDto.fromJson(Map<String, dynamic> json) =>
      _$BeritaDetailDtoFromJson(json);
}
