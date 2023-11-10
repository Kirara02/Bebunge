import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../core/api_result.dart';
import '../../../core/network_exceptions.dart';
import '../../../network/model/bebeli/bebeli_paging.dart';
import '../../../network/model/bebeli/bebeli_params.dart';
import '../../../network/model/bebeli/bebeli_product.dart';
import '../../../network/repositories/bebeli_repository_impl.dart';

part 'bebeli_filter_bloc.freezed.dart';
part 'bebeli_filter_event.dart';
part 'bebeli_filter_state.dart';

class BebeliFilterBloc extends Bloc<BebeliFilterEvent, BebeliFilterState> {
  BebeliFilterBloc() : super(_Initial()) {
    on<BebeliFilterEvent>((event, emit) async {
      await event.when(
        started: (filter) async {
          emit(BebeliFilterState.loading());
          final ApiResult<BebeliPaging> apiResult =
              await BebeliRepositoryImpl().getProductFiltered(filter: filter);
          apiResult.when(
            success: (data) {
              int nextPage = data.page!.count! - (data.page!.count! % 10);
              return emit(BebeliFilterState.loaded(
                data.page!.currentPage!,
                nextPage != data.page!.currentPage ? true : false,
                data.data!,
              ));
            },
            failure: (error) => emit(BebeliFilterState.error(error)),
          );
        },
      );
    });
  }
  @override
  void onEvent(BebeliFilterEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<BebeliFilterState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
