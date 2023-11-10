import 'package:freezed_annotation/freezed_annotation.dart';

part 'bebeli_slider_img.freezed.dart';
part 'bebeli_slider_img.g.dart';

@freezed
class BebeliSliderImg with _$BebeliSliderImg {
  factory BebeliSliderImg({String? img}) = _BebeliSliderImg;

  factory BebeliSliderImg.fromJson(Map<String, dynamic> json) =>
      _$BebeliSliderImgFromJson(json);
}
