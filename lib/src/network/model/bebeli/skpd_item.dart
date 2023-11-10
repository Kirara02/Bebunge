import 'package:freezed_annotation/freezed_annotation.dart';

part 'skpd_item.freezed.dart';
part 'skpd_item.g.dart';

@freezed
class SkpdItem with _$SkpdItem {
  factory SkpdItem(
      {@Default('') final String id,
      @Default('') final String text}) = _SkpdItem;

  factory SkpdItem.fromJson(Map<String, dynamic> json) =>
      _$SkpdItemFromJson(json);
}
