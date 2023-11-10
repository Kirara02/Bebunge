import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class JadwalShalatCubit extends Cubit<bool> {
  JadwalShalatCubit() : super(true);

  changeValue(newState) async {
    var pref = await SharedPreferences.getInstance();
    pref.setBool('jadwal', newState);
    emit(newState);
  }

  initValue() async {
    var pref = await SharedPreferences.getInstance();
    bool? showJadwal = pref.getBool('jadwal');
    emit(showJadwal ?? true);
  }

  @override
  void onChange(Change<bool> change) {
    Logger().e(change);
    super.onChange(change);
  }
}
