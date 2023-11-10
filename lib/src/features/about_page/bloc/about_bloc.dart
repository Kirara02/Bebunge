import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/api_result.dart';
import '../../../core/network_exceptions.dart';
import '../../../network/model/about/about_mod.dart';
import '../../../network/repositories/about_repository_impl.dart';

part 'about_bloc.freezed.dart';
part 'about_event.dart';
part 'about_state.dart';

class AboutBloc extends Bloc<AboutEvent, AboutState> {
  AboutBloc() : super(AboutState.initial()) {
    on<AboutEvent>((event, emit) async {
      await event.when(
        //ANCHOR - Get Tentang Sejarah
        startedSejarah: () async {
          emit(AboutState.loading());
          await Future.delayed(Duration(seconds: 2));
          final ApiResult<AboutMod> apiResult =
              await AboutRepositoryImpl().getAboutSejarah();

          apiResult.when(
            success: (data) => emit(AboutState.loaded(data)),
            failure: (error) => emit(AboutState.error(error)),
          );
        },
        //ANCHOR - Get Tentang Kependudukan
        startedKependudukan: () async {
          emit(AboutState.loading());
          await Future.delayed(Duration(seconds: 2));
          final ApiResult<AboutMod> apiResult =
              await AboutRepositoryImpl().getAboutKependudukan();
          apiResult.when(
            success: (data) => emit(AboutState.loaded(data)),
            failure: (error) => emit(AboutState.error(error)),
          );
        },
        //ANCHOR - Get Tentang Geografis
        startedGeografis: () async {
          emit(AboutState.loading());
          await Future.delayed(Duration(seconds: 2));
          final ApiResult<AboutMod> apiResult =
              await AboutRepositoryImpl().getAboutGeografis();
          apiResult.when(
            success: (data) => emit(AboutState.loaded(data)),
            failure: (error) => emit(AboutState.error(error)),
          );
        },
      );
    });
  }
}
