import 'package:injectable/injectable.dart';
import 'package:suga_core/suga_core.dart';
import 'package:main_app/modules/boarding/data/datasources/boarding_local_datasource.dart';
import 'package:main_app/modules/boarding/domain/repositories/boarding_repository.dart';

@LazySingleton(as: BoardingRepository)
class BoardingRepositoryImpl extends BoardingRepository {
  final BoardingLocalDatasource _boardingLocalDatasource;

  BoardingRepositoryImpl(this._boardingLocalDatasource);

  @override
  Future<bool> checkAppFirstRun() => _boardingLocalDatasource.checkAppFirstRun();

  @override
  Future<Unit> markAppAlreadyRun() => _boardingLocalDatasource.markAppAlreadyRun();
}
