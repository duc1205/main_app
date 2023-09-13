import 'dart:async';

import 'package:main_app/core/helpers/loading_helper.dart';
import 'package:main_app/injector.dart';
import 'package:suga_core/suga_core.dart';

abstract class AppViewModel extends BaseViewModel {
  Future<Unit> showLoading() async {
    await injector<LoadingHelper>().showLoading();
    return unit;
  }

  Future<Unit> hideLoading() async {
    await injector<LoadingHelper>().hideLoading();
    return unit;
  }

  @override
  Future<Unit> handleError(dynamic error) async {
    return unit;
  }
}
