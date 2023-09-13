import 'package:injectable/injectable.dart';
import 'package:main_app/modules/user/data/datasources/user_datasource.dart';
import 'package:suga_core/suga_core.dart';

@lazySingleton
class UserRepository extends Repository {
  final UserDatasource _userDatasource;

  const UserRepository(this._userDatasource);
}
