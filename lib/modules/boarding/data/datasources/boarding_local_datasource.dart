import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:suga_core/suga_core.dart';

@lazySingleton
class BoardingLocalDatasource {
  final SharedPreferences _sharedPreferences;

  BoardingLocalDatasource(this._sharedPreferences);

  Future<bool> checkAppFirstRun() async {
    return _sharedPreferences.getBool('app_first_run') ?? true;
  }

  Future<Unit> markAppAlreadyRun() async {
    await _sharedPreferences.setBool('app_first_run', false);
    return unit;
  }
}
