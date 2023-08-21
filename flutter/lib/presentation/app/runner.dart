import 'dart:async';
import 'dart:developer';

import 'package:example_app/presentation/app/app.dart';
import 'package:example_app/presentation/app/runner.config.dart';
import 'package:example_app/presentation/app_environment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'bloc_observer.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
  ignoreUnregisteredTypes: [
    AppEnvironment,
  ],
)
class Runner {
  static Future<void> run(AppEnvironment appEnvironment) async {
    await initializeFlutterPluginsAndDependencies(appEnvironment);
    Bloc.observer = CustomBlocObserver();
    runApp(const MyApp());
  }

  static Future<void> initializeFlutterPluginsAndDependencies(
      AppEnvironment appEnvironment) async {
    WidgetsFlutterBinding.ensureInitialized();
    configureSystemChrome();
    await configureDependencies(appEnvironment);
  }

  static Future<void> configureDependencies(
      AppEnvironment appEnvironment) async {
    GetIt.I.registerSingleton<AppEnvironment>(appEnvironment);
    await $initGetIt(GetIt.I);
  }

  static void configureSystemChrome() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}
