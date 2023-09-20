import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:main_app/modules/auth/data/repositories/auth_repositories.dart';
import 'package:suga_core/suga_core.dart';

@lazySingleton
class LogoutUsecase extends Usecase {
  final AuthRepository _authRepository;
  final FlutterSecureStorage _secureStorage;

  const LogoutUsecase(
    this._authRepository,
    this._secureStorage,
  );

  Future<Unit> run() async {
    try {
      await _authRepository.logout();
    } catch (_) {}
    await _secureStorage.deleteAll();
    return unit;
  }
}
