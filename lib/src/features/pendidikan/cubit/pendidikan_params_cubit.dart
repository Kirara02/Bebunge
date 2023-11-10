import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

import '../../../network/model/pendidikan/pendidikan_params.dart';

class PendidikanParamsCubit extends Cubit<PendidikanParams> {
  PendidikanParamsCubit() : super(PendidikanParams());

  addParams({String? search, String? category, String? page}) {
    emit(state.copyWith(
        search: search ?? state.search,
        category: category ?? state.category,
        page: page ?? state.page));
  }

  @override
  void onChange(Change<PendidikanParams> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
