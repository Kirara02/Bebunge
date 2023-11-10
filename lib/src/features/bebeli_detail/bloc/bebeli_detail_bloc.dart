import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/bebeli_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/bebeli/bebeli_product_detail.dart';

part 'bebeli_detail_event.dart';
part 'bebeli_detail_state.dart';
part 'bebeli_detail_bloc.freezed.dart';

class BebeliDetailBloc extends Bloc<BebeliDetailEvent, BebeliDetailState> {
  BebeliDetailBloc() : super(_Initial()) {
    on<BebeliDetailEvent>((event, emit) async {
      await event.when(
        started: (id) async {
          emit(BebeliDetailState.loading());
          final ApiResult<BebeliProductDetail> apiResult =
              await BebeliRepositoryImpl().getProductDetail(Id: id);
          apiResult.when(
            success: (data) => emit(BebeliDetailState.loaded(data)),
            failure: (error) => emit(BebeliDetailState.error(error)),
          );
        },
      );
    });
  }
  @override
  void onEvent(BebeliDetailEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<BebeliDetailState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
