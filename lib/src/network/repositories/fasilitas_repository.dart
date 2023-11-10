import 'package:bebunge/src/network/model/fasilitas/fasilitas_content.dart';
import 'package:bebunge/src/network/model/fasilitas/fasilitas_item.dart';
import 'package:bebunge/src/network/model/fasilitas/fasilitas_sub_item.dart';

import '../../core/api_result.dart';

abstract class FasilitasRepository {
  Future<ApiResult<List<FasilitasItem>>> getFasilitas();

  Future<ApiResult<List<FasilitasSubItem>>> getFasilitasSub({String? id});

  Future<ApiResult<List<FasilitasContent>>> getFasilitasContent({String? id});
}
