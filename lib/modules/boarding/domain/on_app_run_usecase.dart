import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:main_app/modules/boarding/domain/repositories/boarding_repository.dart';
import 'package:suga_core/suga_core.dart';

@lazySingleton
class OnAppRunUsecase extends Usecase {
  final BoardingRepository _boardingRepository;
  final FlutterSecureStorage _secureStorage;

  const OnAppRunUsecase(
    this._boardingRepository,
    this._secureStorage,
  );

  Future<Unit> run() async {
    final firstRun = await _boardingRepository.checkAppFirstRun();
    if (firstRun) {
      await _secureStorage.deleteAll();
      await _boardingRepository.markAppAlreadyRun();
    }
    return unit;
  }
}
