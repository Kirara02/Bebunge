import '../../core/api_result.dart';
import '../model/about/about_mod.dart';

abstract class AboutRepository {
  Future<ApiResult<AboutMod>> getAboutSejarah();
  Future<ApiResult<AboutMod>> getAboutKependudukan();
  Future<ApiResult<AboutMod>> getAboutGeografis();
}
