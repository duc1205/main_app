import 'package:injectable/injectable.dart';
import 'package:main_app/modules/auth/data/repositories/auth_repositories.dart';
import 'package:suga_core/suga_core.dart';

@lazySingleton
class CheckLoggedInUsecase extends Usecase {
  final AuthRepository _authRepository;

  const CheckLoggedInUsecase(this._authRepository);

  Future<bool> run() => _authRepository.isLoggedIn();
}
