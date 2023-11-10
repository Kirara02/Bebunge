part of 'filter_category_bloc.dart';

@freezed
class FilterCategoryEvent with _$FilterCategoryEvent {
  const factory FilterCategoryEvent.started({String? id, String? text}) =
      _Started;
}
