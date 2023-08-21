import 'dart:async';

import 'package:example_app/data/repository/auth_repository.dart';
import 'package:example_app/data/repository/startup_repository.dart';
import 'package:example_app/keys.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'app_router.dart';
import 'guards/auth_guard.dart';
import 'guards/init_guard.dart';

/// Модуль, формирующий сущности для роутинга
@module
abstract class RouterModule {
  @singleton
  AppRouter appRouter(
    AuthGuard authGuard,
    InitGuard initGuard,
  ) {
    return AppRouter(
      navigatorKey: Keys.navigatorKey,
      authGuard: authGuard,
      initGuard: initGuard,
    );
  }

  @singleton
  AuthGuard authGuard(AuthRepository authRepository) =>
      AuthGuard(isAuthorized: authRepository.isAuthorized);

  @singleton
  InitGuard initGuard(StartupRepository startupRepository) =>
      InitGuard(isInited: startupRepository.isInited);
}
