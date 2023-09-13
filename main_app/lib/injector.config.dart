// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i8;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:main_app/core/helpers/loading_helper.dart' as _i4;
import 'package:main_app/injector.dart' as _i24;
import 'package:main_app/modules/auth/data/datasources/auth_datasource.dart'
    as _i13;
import 'package:main_app/modules/auth/data/repositories/auth_repositories.dart'
    as _i15;
import 'package:main_app/modules/auth/domain/usecases/check_logged_in_usecase.dart'
    as _i19;
import 'package:main_app/modules/auth/domain/usecases/login_usecase.dart'
    as _i20;
import 'package:main_app/modules/auth/domain/usecases/logout_usecase.dart'
    as _i21;
import 'package:main_app/modules/auth/domain/usecases/register_account_usecase.dart'
    as _i23;
import 'package:main_app/modules/boarding/app/ui/splash/splash_page_view_model.dart'
    as _i10;
import 'package:main_app/modules/boarding/data/datasources/boarding_local_datasource.dart'
    as _i16;
import 'package:main_app/modules/boarding/data/repositories/boarding_repository_impl.dart'
    as _i18;
import 'package:main_app/modules/boarding/domain/on_app_run_usecase.dart'
    as _i22;
import 'package:main_app/modules/boarding/domain/repositories/boarding_repository.dart'
    as _i17;
import 'package:main_app/modules/main/main_page_view_model.dart' as _i6;
import 'package:main_app/modules/user/data/datasources/services/me_service.dart'
    as _i7;
import 'package:main_app/modules/user/data/datasources/user_datasource.dart'
    as _i12;
import 'package:main_app/modules/user/data/repositories/user_repository.dart'
    as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i9;
import 'package:suga_core/suga_core.dart' as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final mainModule = _$MainModule();
    gh.lazySingleton<_i3.FlutterSecureStorage>(
        () => mainModule.secureStorage());
    gh.lazySingleton<_i4.LoadingHelper>(() => _i4.LoadingHelper());
    gh.lazySingleton<_i5.Logger>(() => mainModule.getLogger());
    gh.factory<_i6.MainPageViewModel>(() => _i6.MainPageViewModel());
    gh.lazySingleton<_i7.MeService>(() => _i7.MeService());
    gh.lazySingleton<_i8.RouteObserver<_i8.Route<dynamic>>>(
        () => mainModule.getRouteObserver());
    await gh.lazySingletonAsync<_i9.SharedPreferences>(
      () => mainModule.getSharePreferences(),
      preResolve: true,
    );
    gh.factory<_i10.SplashPageViewModel>(() => _i10.SplashPageViewModel());
    gh.lazySingleton<_i11.UserRepository>(
        () => _i11.UserRepository(gh<_i12.UserDatasource>()));
    gh.lazySingleton<_i13.AuthDatasource>(() => _i13.AuthDatasourceImpl(
          gh<_i14.Oauth2Manager>(),
          gh<_i7.MeService>(),
        ));
    gh.lazySingleton<_i15.AuthRepository>(
        () => _i15.AuthRepository(gh<_i13.AuthDatasource>()));
    gh.lazySingleton<_i16.BoardingLocalDatasource>(
        () => _i16.BoardingLocalDatasource(gh<_i9.SharedPreferences>()));
    gh.lazySingleton<_i17.BoardingRepository>(
        () => _i18.BoardingRepositoryImpl(gh<_i16.BoardingLocalDatasource>()));
    gh.lazySingleton<_i19.CheckLoggedInUsecase>(
        () => _i19.CheckLoggedInUsecase(gh<_i15.AuthRepository>()));
    gh.lazySingleton<_i20.LoginUsecase>(
        () => _i20.LoginUsecase(gh<_i15.AuthRepository>()));
    gh.lazySingleton<_i21.LogoutUsecase>(() => _i21.LogoutUsecase(
          gh<_i15.AuthRepository>(),
          gh<_i3.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i22.OnAppRunUsecase>(() => _i22.OnAppRunUsecase(
          gh<_i17.BoardingRepository>(),
          gh<_i3.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i23.RegisterAccountUsecase>(
        () => _i23.RegisterAccountUsecase(gh<_i15.AuthRepository>()));
    return this;
  }
}

class _$MainModule extends _i24.MainModule {}
