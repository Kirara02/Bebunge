import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

import '../../../network/model/berita/filter_params.dart';

class BeritaParamsCubit extends Cubit<FilterParams> {
  BeritaParamsCubit() : super(FilterParams());

  void addParams({String? kategori, String? search, String? page}) {
    emit(state.copyWith(
        kategori: kategori ?? state.kategori,
        search: search ?? state.search,
        limit: '10',
        page: page ?? state.page));
  }

  @override
  void onChange(Change<FilterParams> change) {
    Logger().e(change);
    super.onChange(change);
  }
}
