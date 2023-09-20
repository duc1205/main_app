import 'package:injectable/injectable.dart';
import 'package:main_app/modules/auth/data/repositories/auth_repositories.dart';
import 'package:suga_core/suga_core.dart';

@lazySingleton
class LoginUsecase extends Usecase {
  final AuthRepository _authRepository;

  const LoginUsecase(
    this._authRepository,
  );

  Future<Unit> run(String username, String password) async {
    await _authRepository.login(username, password);
    return unit;
  }
}
