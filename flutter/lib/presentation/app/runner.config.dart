// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i11;

import 'package:dio/dio.dart' as _i13;
import 'package:flutter/material.dart' as _i10;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../../data/http/dio_client_creator.dart' as _i3;
import '../../data/http/dio_client_module.dart' as _i28;
import '../../data/models/task/task.dart' as _i27;
import '../../data/repository/auth_repository.dart' as _i16;
import '../../data/repository/startup_repository.dart' as _i9;
import '../../data/repository/task_repository.dart' as _i18;
import '../../data/services/api_service.dart' as _i15;
import '../../data/services/auth_storage_service.dart' as _i12;
import '../../domain/bloc/auth_cubit/auth_cubit.dart' as _i19;
import '../../domain/bloc/create_new_task_cubit/create_new_task_cubit.dart'
    as _i25;
import '../../domain/bloc/splash_bloc/splash_bloc.dart' as _i21;
import '../../domain/bloc/task_cubit/task_cubit.dart' as _i24;
import '../../domain/bloc/task_info_cubit/task_info_cubit.dart' as _i26;
import '../../domain/interactor/startup_interactor.dart' as _i17;
import '../../domain/interactor/task_interactor.dart' as _i22;
import '../../utils/dio_error_handler/dio_error_handler.dart' as _i5;
import '../../utils/dio_error_handler/models/dio_error_models.dart' as _i6;
import '../app_environment.dart' as _i4;
import '../router/app_router.dart' as _i23;
import '../router/guards/auth_guard.dart' as _i20;
import '../router/guards/init_guard.dart' as _i14;
import '../router/router_module.dart' as _i31;
import 'app_module.dart' as _i29;
import 'theme/theme.dart' as _i30;

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
  final dioClientModule = _$DioClientModule();
  final appModule = _$AppModule();
  final mainTheme = _$MainTheme();
  final routerModule = _$RouterModule();
  gh.singleton<_i3.DioClientCreator>(
      dioClientModule.dioClientCreator(gh<_i4.AppEnvironment>()));
  gh.lazySingleton<_i5.DioErrorHandler<_i6.DefaultApiError>>(
    () => dioClientModule.makeDioOrderErrorHandler(),
    instanceName: 'apiClient',
  );
  gh.singleton<_i7.FlutterSecureStorage>(appModule.secureStorage);
  await gh.singletonAsync<_i8.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i9.StartupRepository>(_i9.StartupRepositoryImpl());
  gh.factoryParam<_i10.ThemeData, _i11.Brightness?, dynamic>((
    brightness,
    _,
  ) =>
      mainTheme.themeData(brightness: brightness));
  gh.factory<_i12.AuthStorageService>(() => _i12.AuthStorageServiceImpl(
      secureStorage: gh<_i7.FlutterSecureStorage>()));
  gh.singleton<_i13.Dio>(
    dioClientModule.makeDioProductsClient(gh<_i3.DioClientCreator>()),
    instanceName: 'apiClient',
  );
  gh.singleton<_i14.InitGuard>(
      routerModule.initGuard(gh<_i9.StartupRepository>()));
  gh.singleton<_i15.ApiService>(_i15.ApiServiceImpl(
    dio: gh<_i13.Dio>(instanceName: 'apiClient'),
    errorHandler:
        gh<_i5.DioErrorHandler<_i6.DefaultApiError>>(instanceName: 'apiClient'),
  ));
  gh.singleton<_i16.AuthRepository>(
    _i16.AuthRepositoryImpl(
      apiService: gh<_i15.ApiService>(),
      storageService: gh<_i12.AuthStorageService>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i17.StartupInteractor>(
    _i17.StartupInteractorImpl(
      authRepository: gh<_i16.AuthRepository>(),
      startupRepository: gh<_i9.StartupRepository>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i18.TaskRepository>(
      _i18.TaskRepositoryImpl(apiService: gh<_i15.ApiService>()));
  gh.factory<_i19.AuthCubit>(
      () => _i19.AuthCubit(authRepository: gh<_i16.AuthRepository>()));
  gh.singleton<_i20.AuthGuard>(
      routerModule.authGuard(gh<_i16.AuthRepository>()));
  gh.singleton<_i20.AuthReevaluate>(
    _i20.AuthReevaluate(authRepository: gh<_i16.AuthRepository>()),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i21.SplashBloc>(
      () => _i21.SplashBloc(startupInteractor: gh<_i17.StartupInteractor>()));
  gh.singleton<_i22.TaskInteractor>(_i22.TaskInteractorImpl(
    taskRepository: gh<_i18.TaskRepository>(),
    authRepository: gh<_i16.AuthRepository>(),
  ));
  gh.singleton<_i23.AppRouter>(routerModule.appRouter(
    gh<_i20.AuthGuard>(),
    gh<_i14.InitGuard>(),
  ));
  gh.factory<_i24.ArchiveTasksCubit>(
      () => _i24.ArchiveTasksCubit(taskInteractor: gh<_i22.TaskInteractor>()));
  gh.factory<_i25.CreateNewTaskCubit>(
      () => _i25.CreateNewTaskCubit(taskInteractor: gh<_i22.TaskInteractor>()));
  gh.factory<_i24.InProgressTasksCubit>(() =>
      _i24.InProgressTasksCubit(taskInteractor: gh<_i22.TaskInteractor>()));
  gh.factory<_i24.InstructedTasksCubit>(() =>
      _i24.InstructedTasksCubit(taskInteractor: gh<_i22.TaskInteractor>()));
  gh.factory<_i24.NewTasksCubit>(
      () => _i24.NewTasksCubit(taskInteractor: gh<_i22.TaskInteractor>()));
  gh.factoryParam<_i26.TaskInfoCubit, _i27.Task, dynamic>((
    task,
    _,
  ) =>
      _i26.TaskInfoCubit(
        task: task,
        taskInteractor: gh<_i22.TaskInteractor>(),
      ));
  return getIt;
}

class _$DioClientModule extends _i28.DioClientModule {}

class _$AppModule extends _i29.AppModule {}

class _$MainTheme extends _i30.MainTheme {}

class _$RouterModule extends _i31.RouterModule {}
