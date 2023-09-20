import 'package:suga_core/suga_core.dart';

abstract class BoardingRepository extends Repository {
  Future<bool> checkAppFirstRun();

  Future<Unit> markAppAlreadyRun();
}
