import '../../core/api_result.dart';
import '../model/beranda/beranda_slider_mod.dart';

abstract class BerandaRepository {
  Future<ApiResult<List<BerandaSliderMod>>> getSlider();
}
