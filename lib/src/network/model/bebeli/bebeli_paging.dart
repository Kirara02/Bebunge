import 'package:freezed_annotation/freezed_annotation.dart';

import 'bebeli_page.dart';
import 'bebeli_product.dart';

part 'bebeli_paging.freezed.dart';
part 'bebeli_paging.g.dart';

@freezed
class BebeliPaging with _$BebeliPaging {
  factory BebeliPaging({BebeliPage? page, List<BebeliProduct>? data}) =
      _BebeliPaging;

  factory BebeliPaging.fromJson(Map<String, dynamic> json) =>
      _$BebeliPagingFromJson(json);
}
