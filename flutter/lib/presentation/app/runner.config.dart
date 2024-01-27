// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i5;

import 'package:dio/dio.dart' as _i15;
import 'package:flutter/cupertino.dart' as _i3;
import 'package:flutter/material.dart' as _i13;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../../data/http/dio_client_creator.dart' as _i6;
import '../../data/http/dio_client_module.dart' as _i32;
import '../../data/models/task/task.dart' as _i30;
import '../../data/repository/auth_repository.dart' as _i18;
import '../../data/repository/startup_repository.dart' as _i12;
import '../../data/repository/task_repository.dart' as _i21;
import '../../data/services/api_service.dart' as _i17;
import '../../data/services/auth_storage_service.dart' as _i14;
import '../../domain/bloc/auth_cubit/auth_cubit.dart' as _i22;
import '../../domain/bloc/create_new_task_cubit/create_new_task_cubit.dart'
    as _i28;
import '../../domain/bloc/register_cubit/register_cubit.dart' as _i19;
import '../../domain/bloc/splash_bloc/splash_bloc.dart' as _i24;
import '../../domain/bloc/task_cubit/task_cubit.dart' as _i27;
import '../../domain/bloc/task_info_cubit/task_info_cubit.dart' as _i29;
import '../../domain/interactor/startup_interactor.dart' as _i20;
import '../../domain/interactor/task_interactor.dart' as _i25;
import '../../utils/dio_error_handler/dio_error_handler.dart' as _i8;
import '../../utils/dio_error_handler/models/dio_error_models.dart' as _i9;
import '../app_environment.dart' as _i7;
import '../router/app_router.dart' as _i26;
import '../router/guards/auth_guard.dart' as _i23;
import '../router/guards/init_guard.dart' as _i16;
import '../router/router_module.dart' as _i34;
import '../theme/models/colors/app_colors.dart' as _i4;
import '../theme/theme.dart' as _i31;
import 'app_module.dart' as _i33;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final mainTheme = _$MainTheme();
  final dioClientModule = _$DioClientModule();
  final appModule = _$AppModule();
  final routerModule = _$RouterModule();
  gh.factoryParam<_i3.CupertinoThemeData, _i4.AppColors?, _i5.Brightness?>((
    appColors,
    brightness,
  ) =>
      mainTheme.cupertinoThemeData(
        appColors: appColors,
        brightness: brightness,
      ));
  gh.singleton<_i6.DioClientCreator>(
      dioClientModule.dioClientCreator(gh<_i7.AppEnvironment>()));
  gh.lazySingleton<_i8.DioErrorHandler<_i9.DefaultApiError>>(
    () => dioClientModule.makeDioOrderErrorHandler(),
    instanceName: 'apiClient',
  );
  gh.singleton<_i10.FlutterSecureStorage>(appModule.secureStorage);
  await gh.singletonAsync<_i11.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i12.StartupRepository>(_i12.StartupRepositoryImpl());
  gh.factoryParam<_i13.ThemeData, _i4.AppColors?, _i5.Brightness?>((
    colors,
    brightness,
  ) =>
      mainTheme.themeData(
        colors: colors,
        brightness: brightness,
      ));
  gh.factory<_i14.AuthStorageService>(() => _i14.AuthStorageServiceImpl(
      secureStorage: gh<_i10.FlutterSecureStorage>()));
  gh.singleton<_i15.Dio>(
    dioClientModule.makeDioProductsClient(gh<_i6.DioClientCreator>()),
    instanceName: 'apiClient',
  );
  gh.singleton<_i16.InitGuard>(
      routerModule.initGuard(gh<_i12.StartupRepository>()));
  gh.singleton<_i17.ApiService>(_i17.ApiServiceImpl(
    dio: gh<_i15.Dio>(instanceName: 'apiClient'),
    errorHandler:
        gh<_i8.DioErrorHandler<_i9.DefaultApiError>>(instanceName: 'apiClient'),
  ));
  gh.singleton<_i18.AuthRepository>(
    _i18.AuthRepositoryImpl(
      apiService: gh<_i17.ApiService>(),
      storageService: gh<_i14.AuthStorageService>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i19.RegisterCubit>(
      () => _i19.RegisterCubit(authRepository: gh<_i18.AuthRepository>()));
  gh.singleton<_i20.StartupInteractor>(
    _i20.StartupInteractorImpl(
      authRepository: gh<_i18.AuthRepository>(),
      startupRepository: gh<_i12.StartupRepository>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i21.TaskRepository>(
      _i21.TaskRepositoryImpl(apiService: gh<_i17.ApiService>()));
  gh.factory<_i22.AuthCubit>(
      () => _i22.AuthCubit(authRepository: gh<_i18.AuthRepository>()));
  gh.singleton<_i23.AuthGuard>(
      routerModule.authGuard(gh<_i18.AuthRepository>()));
  gh.singleton<_i23.AuthReevaluate>(
    _i23.AuthReevaluate(authRepository: gh<_i18.AuthRepository>()),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i24.SplashBloc>(
      () => _i24.SplashBloc(startupInteractor: gh<_i20.StartupInteractor>()));
  gh.singleton<_i25.TaskInteractor>(_i25.TaskInteractorImpl(
    taskRepository: gh<_i21.TaskRepository>(),
    authRepository: gh<_i18.AuthRepository>(),
  ));
  gh.singleton<_i26.AppRouter>(routerModule.appRouter(
    gh<_i23.AuthGuard>(),
    gh<_i16.InitGuard>(),
  ));
  gh.factory<_i27.ArchiveTasksCubit>(
      () => _i27.ArchiveTasksCubit(taskInteractor: gh<_i25.TaskInteractor>()));
  gh.factory<_i28.CreateNewTaskCubit>(
      () => _i28.CreateNewTaskCubit(taskInteractor: gh<_i25.TaskInteractor>()));
  gh.factory<_i27.InProgressTasksCubit>(() =>
      _i27.InProgressTasksCubit(taskInteractor: gh<_i25.TaskInteractor>()));
  gh.factory<_i27.InstructedTasksCubit>(() =>
      _i27.InstructedTasksCubit(taskInteractor: gh<_i25.TaskInteractor>()));
  gh.factory<_i27.NewTasksCubit>(
      () => _i27.NewTasksCubit(taskInteractor: gh<_i25.TaskInteractor>()));
  gh.factoryParam<_i29.TaskInfoCubit, _i30.Task, dynamic>((
    task,
    _,
  ) =>
      _i29.TaskInfoCubit(
        task: task,
        taskInteractor: gh<_i25.TaskInteractor>(),
      ));
  return getIt;
}

class _$MainTheme extends _i31.MainTheme {}

class _$DioClientModule extends _i32.DioClientModule {}

class _$AppModule extends _i33.AppModule {}

class _$RouterModule extends _i34.RouterModule {}
