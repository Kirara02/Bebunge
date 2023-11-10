part of 'filter_sub_category_bloc.dart';

@freezed
class FilterSubCategoryEvent with _$FilterSubCategoryEvent {
  const factory FilterSubCategoryEvent.started(
      {String? id, String? text, String? kategori}) = _Started;
}
