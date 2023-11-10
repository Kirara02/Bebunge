import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/api_result.dart';
import '../../../core/network_exceptions.dart';
import '../../../network/model/berita/berita_category.dart';
import '../../../network/repositories/berita_repository_impl.dart';

part 'berita_category_bloc.freezed.dart';
part 'berita_category_event.dart';
part 'berita_category_state.dart';

class BeritaCategoryBloc
    extends Bloc<BeritaCategoryEvent, BeritaCategoryState> {
  BeritaCategoryBloc() : super(BeritaCategoryState.initial()) {
    on<BeritaCategoryEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(BeritaCategoryState.loading());
          final ApiResult<List<BeritaCategory>> apiResult =
              await BeritaRepositoryImpl().beritaCategoryList();
          Future.delayed(Duration(milliseconds: 500));
          apiResult.when(
            success: (data) => emit(BeritaCategoryState.loaded(data)),
            failure: (error) => emit(BeritaCategoryState.error(error)),
          );
        },
      );
    });
  }
  // @override
  // void onEvent(BeritaCategoryEvent event) {
  //   Logger().d(event);
  //   super.onEvent(event);
  // }

  // @override
  // void onChange(Change<BeritaCategoryState> change) {
  //   Logger().d(change);
  //   super.onChange(change);
  // }
}
