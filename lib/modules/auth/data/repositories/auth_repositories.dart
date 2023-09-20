import 'package:injectable/injectable.dart';
import 'package:main_app/modules/auth/data/datasources/auth_datasource.dart';
import 'package:oauth2/oauth2.dart';
import 'package:suga_core/suga_core.dart';

@lazySingleton
class AuthRepository extends Repository {
  final AuthDatasource _authDatasource;

  const AuthRepository(this._authDatasource);

  Future<Credentials> login(String username, String password) => _authDatasource.login(username, password);

  Future<bool> isLoggedIn() => _authDatasource.isLoggedIn();

  Future<Unit> logout() => _authDatasource.logOut();

  Future<Unit> register(String sdt, String name, String password) => _authDatasource.registerAccount(sdt, name, password);
}
