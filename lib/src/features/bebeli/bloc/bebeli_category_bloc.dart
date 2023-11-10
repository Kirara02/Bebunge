import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/bebeli_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/bebeli/bebeli_category_slide.dart';

part 'bebeli_category_event.dart';
part 'bebeli_category_state.dart';
part 'bebeli_category_bloc.freezed.dart';

class BebeliCategoryBloc
    extends Bloc<BebeliCategoryEvent, BebeliCategoryState> {
  BebeliCategoryBloc() : super(_Initial()) {
    on<BebeliCategoryEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(BebeliCategoryState.loading());
          final ApiResult<List<BebeliCategorySlide>> apiResult =
              await BebeliRepositoryImpl().getCategorySlide();
          apiResult.when(
            success: (data) => emit(BebeliCategoryState.loaded(data)),
            failure: (error) => emit(BebeliCategoryState.error(error)),
          );
        },
      );
    });
  }
}
