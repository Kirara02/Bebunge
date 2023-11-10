import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/ipbb_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/ipbb/ipbb_mod.dart';

part 'ipbb_event.dart';
part 'ipbb_state.dart';
part 'ipbb_bloc.freezed.dart';

class IpbbBloc extends Bloc<IpbbEvent, IpbbState> {
  IpbbBloc() : super(_Initial()) {
    on<IpbbEvent>((event, emit) async {
      await event.when(
        started: (nopNumber) async {
          emit(IpbbState.loading());
          final ApiResult<IPBBMod> apiResult =
              await IpbbRepositoryImpl().getIpbb(nopNumber: nopNumber);
          apiResult.when(
            success: (data) => emit(IpbbState.loaded(data)),
            failure: (error) => emit(IpbbState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(IpbbEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<IpbbState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
