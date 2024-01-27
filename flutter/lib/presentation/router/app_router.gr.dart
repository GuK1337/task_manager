// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:example_app/data/models/task/task.dart' as _i13;
import 'package:example_app/presentation/screens/auth_screen.dart' as _i2;
import 'package:example_app/presentation/screens/main_screen/main_screen.dart'
    as _i5;
import 'package:example_app/presentation/screens/main_screen/screens/archive_tasks_screen.dart'
    as _i1;
import 'package:example_app/presentation/screens/main_screen/screens/in_progress_tasks_screen.dart'
    as _i3;
import 'package:example_app/presentation/screens/main_screen/screens/instructed_tasks_screen.dart'
    as _i4;
import 'package:example_app/presentation/screens/main_screen/screens/new_tasks_screen.dart'
    as _i6;
import 'package:example_app/presentation/screens/register_screen/register_screen.dart'
    as _i7;
import 'package:example_app/presentation/screens/splash_screen.dart' as _i8;
import 'package:example_app/presentation/screens/task_form_screen.dart' as _i9;
import 'package:example_app/presentation/screens/task_info_screen.dart' as _i10;
import 'package:flutter/material.dart' as _i12;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    ArchiveTasksRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: const _i1.ArchiveTasksScreen()),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(
            child: _i2.AuthScreen(
          key: args.key,
          onComplete: args.onComplete,
        )),
      );
    },
    InProgressTasksRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: const _i3.InProgressTasksScreen()),
      );
    },
    InstructedTasksRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: const _i4.InstructedTasksScreen()),
      );
    },
    MainRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
    NewTasksRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: const _i6.NewTasksScreen()),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(
            child: _i7.RegisterScreen(
          key: args.key,
          onComplete: args.onComplete,
        )),
      );
    },
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(
            child: _i8.SplashScreen(
          key: args.key,
          onLoad: args.onLoad,
        )),
      );
    },
    TaskFormRoute.name: (routeData) {
      final args = routeData.argsAs<TaskFormRouteArgs>(
          orElse: () => const TaskFormRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: _i9.TaskFormScreen(key: args.key)),
      );
    },
    TaskInfoRoute.name: (routeData) {
      final args = routeData.argsAs<TaskInfoRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(
            child: _i10.TaskInfoScreen(
          key: args.key,
          task: args.task,
        )),
      );
    },
  };
}

/// generated route for
/// [_i1.ArchiveTasksScreen]
class ArchiveTasksRoute extends _i11.PageRouteInfo<void> {
  const ArchiveTasksRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ArchiveTasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArchiveTasksRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthScreen]
class AuthRoute extends _i11.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i12.Key? key,
    void Function()? onComplete,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            onComplete: onComplete,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i11.PageInfo<AuthRouteArgs> page =
      _i11.PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.onComplete,
  });

  final _i12.Key? key;

  final void Function()? onComplete;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onComplete: $onComplete}';
  }
}

/// generated route for
/// [_i3.InProgressTasksScreen]
class InProgressTasksRoute extends _i11.PageRouteInfo<void> {
  const InProgressTasksRoute({List<_i11.PageRouteInfo>? children})
      : super(
          InProgressTasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'InProgressTasksRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.InstructedTasksScreen]
class InstructedTasksRoute extends _i11.PageRouteInfo<void> {
  const InstructedTasksRoute({List<_i11.PageRouteInfo>? children})
      : super(
          InstructedTasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'InstructedTasksRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainScreen]
class MainRoute extends _i11.PageRouteInfo<void> {
  const MainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NewTasksScreen]
class NewTasksRoute extends _i11.PageRouteInfo<void> {
  const NewTasksRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NewTasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewTasksRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RegisterScreen]
class RegisterRoute extends _i11.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    _i12.Key? key,
    void Function()? onComplete,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(
            key: key,
            onComplete: onComplete,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i11.PageInfo<RegisterRouteArgs> page =
      _i11.PageInfo<RegisterRouteArgs>(name);
}

class RegisterRouteArgs {
  const RegisterRouteArgs({
    this.key,
    this.onComplete,
  });

  final _i12.Key? key;

  final void Function()? onComplete;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key, onComplete: $onComplete}';
  }
}

/// generated route for
/// [_i8.SplashScreen]
class SplashRoute extends _i11.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    _i12.Key? key,
    void Function()? onLoad,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          SplashRoute.name,
          args: SplashRouteArgs(
            key: key,
            onLoad: onLoad,
          ),
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i11.PageInfo<SplashRouteArgs> page =
      _i11.PageInfo<SplashRouteArgs>(name);
}

class SplashRouteArgs {
  const SplashRouteArgs({
    this.key,
    this.onLoad,
  });

  final _i12.Key? key;

  final void Function()? onLoad;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, onLoad: $onLoad}';
  }
}

/// generated route for
/// [_i9.TaskFormScreen]
class TaskFormRoute extends _i11.PageRouteInfo<TaskFormRouteArgs> {
  TaskFormRoute({
    _i12.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          TaskFormRoute.name,
          args: TaskFormRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TaskFormRoute';

  static const _i11.PageInfo<TaskFormRouteArgs> page =
      _i11.PageInfo<TaskFormRouteArgs>(name);
}

class TaskFormRouteArgs {
  const TaskFormRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'TaskFormRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.TaskInfoScreen]
class TaskInfoRoute extends _i11.PageRouteInfo<TaskInfoRouteArgs> {
  TaskInfoRoute({
    _i12.Key? key,
    required _i13.Task task,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          TaskInfoRoute.name,
          args: TaskInfoRouteArgs(
            key: key,
            task: task,
          ),
          initialChildren: children,
        );

  static const String name = 'TaskInfoRoute';

  static const _i11.PageInfo<TaskInfoRouteArgs> page =
      _i11.PageInfo<TaskInfoRouteArgs>(name);
}

class TaskInfoRouteArgs {
  const TaskInfoRouteArgs({
    this.key,
    required this.task,
  });

  final _i12.Key? key;

  final _i13.Task task;

  @override
  String toString() {
    return 'TaskInfoRouteArgs{key: $key, task: $task}';
  }
}
