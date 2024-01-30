// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:example_app/data/models/short_user_info/short_user_info.dart'
    as _i18;
import 'package:example_app/data/models/task/task.dart' as _i17;
import 'package:example_app/presentation/screens/add_task_result_screen/add_task_result_screen.dart'
    as _i1;
import 'package:example_app/presentation/screens/auth_screen.dart' as _i3;
import 'package:example_app/presentation/screens/image_viewer_screen/image_viewer_screen.dart'
    as _i4;
import 'package:example_app/presentation/screens/main_screen/main_screen.dart'
    as _i7;
import 'package:example_app/presentation/screens/main_screen/screens/archive_tasks_screen.dart'
    as _i2;
import 'package:example_app/presentation/screens/main_screen/screens/in_progress_tasks_screen.dart'
    as _i5;
import 'package:example_app/presentation/screens/main_screen/screens/instructed_tasks_screen.dart'
    as _i6;
import 'package:example_app/presentation/screens/main_screen/screens/new_tasks_screen.dart'
    as _i8;
import 'package:example_app/presentation/screens/register_screen/register_screen.dart'
    as _i9;
import 'package:example_app/presentation/screens/splash_screen.dart' as _i10;
import 'package:example_app/presentation/screens/task_form_screen.dart' as _i11;
import 'package:example_app/presentation/screens/task_info_screen.dart' as _i12;
import 'package:example_app/presentation/screens/user_list_screen/user_list_screen.dart'
    as _i13;
import 'package:flutter/cupertino.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    AddTaskResultRoute.name: (routeData) {
      final args = routeData.argsAs<AddTaskResultRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddTaskResultScreen(
          key: args.key,
          onConfirm: args.onConfirm,
        ),
      );
    },
    ArchiveTasksRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(child: const _i2.ArchiveTasksScreen()),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(
            child: _i3.AuthScreen(
          key: args.key,
          onComplete: args.onComplete,
        )),
      );
    },
    ImagePreviewRoute.name: (routeData) {
      final args = routeData.argsAs<ImagePreviewRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ImagePreviewScreen(
          key: args.key,
          loadingBuilder: args.loadingBuilder,
          backgroundDecoration: args.backgroundDecoration,
          minScale: args.minScale,
          maxScale: args.maxScale,
          initialIndex: args.initialIndex,
          galleryItems: args.galleryItems,
          scrollDirection: args.scrollDirection,
        ),
      );
    },
    InProgressTasksRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(child: const _i5.InProgressTasksScreen()),
      );
    },
    InstructedTasksRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(child: const _i6.InstructedTasksScreen()),
      );
    },
    MainRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MainScreen(),
      );
    },
    NewTasksRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(child: const _i8.NewTasksScreen()),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(
            child: _i9.RegisterScreen(
          key: args.key,
          onComplete: args.onComplete,
        )),
      );
    },
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(
            child: _i10.SplashScreen(
          key: args.key,
          onLoad: args.onLoad,
        )),
      );
    },
    TaskFormRoute.name: (routeData) {
      final args = routeData.argsAs<TaskFormRouteArgs>(
          orElse: () => const TaskFormRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(child: _i11.TaskFormScreen(key: args.key)),
      );
    },
    TaskInfoRoute.name: (routeData) {
      final args = routeData.argsAs<TaskInfoRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(
            child: _i12.TaskInfoScreen(
          key: args.key,
          task: args.task,
        )),
      );
    },
    UserListRoute.name: (routeData) {
      final args = routeData.argsAs<UserListRouteArgs>(
          orElse: () => const UserListRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WrappedRoute(
            child: _i13.UserListScreen(
          key: args.key,
          selectedUser: args.selectedUser,
        )),
      );
    },
  };
}

/// generated route for
/// [_i1.AddTaskResultScreen]
class AddTaskResultRoute extends _i14.PageRouteInfo<AddTaskResultRouteArgs> {
  AddTaskResultRoute({
    _i15.Key? key,
    required void Function(
      String?,
      List<String>?,
    ) onConfirm,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          AddTaskResultRoute.name,
          args: AddTaskResultRouteArgs(
            key: key,
            onConfirm: onConfirm,
          ),
          initialChildren: children,
        );

  static const String name = 'AddTaskResultRoute';

  static const _i14.PageInfo<AddTaskResultRouteArgs> page =
      _i14.PageInfo<AddTaskResultRouteArgs>(name);
}

class AddTaskResultRouteArgs {
  const AddTaskResultRouteArgs({
    this.key,
    required this.onConfirm,
  });

  final _i15.Key? key;

  final void Function(
    String?,
    List<String>?,
  ) onConfirm;

  @override
  String toString() {
    return 'AddTaskResultRouteArgs{key: $key, onConfirm: $onConfirm}';
  }
}

/// generated route for
/// [_i2.ArchiveTasksScreen]
class ArchiveTasksRoute extends _i14.PageRouteInfo<void> {
  const ArchiveTasksRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ArchiveTasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArchiveTasksRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthScreen]
class AuthRoute extends _i14.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i16.Key? key,
    void Function()? onComplete,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            onComplete: onComplete,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i14.PageInfo<AuthRouteArgs> page =
      _i14.PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.onComplete,
  });

  final _i16.Key? key;

  final void Function()? onComplete;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onComplete: $onComplete}';
  }
}

/// generated route for
/// [_i4.ImagePreviewScreen]
class ImagePreviewRoute extends _i14.PageRouteInfo<ImagePreviewRouteArgs> {
  ImagePreviewRoute({
    _i15.Key? key,
    _i15.Widget Function(
      _i15.BuildContext,
      _i15.ImageChunkEvent?,
    )? loadingBuilder,
    _i15.BoxDecoration? backgroundDecoration,
    dynamic minScale,
    dynamic maxScale,
    int initialIndex = 0,
    required List<String> galleryItems,
    _i15.Axis scrollDirection = _i15.Axis.horizontal,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ImagePreviewRoute.name,
          args: ImagePreviewRouteArgs(
            key: key,
            loadingBuilder: loadingBuilder,
            backgroundDecoration: backgroundDecoration,
            minScale: minScale,
            maxScale: maxScale,
            initialIndex: initialIndex,
            galleryItems: galleryItems,
            scrollDirection: scrollDirection,
          ),
          initialChildren: children,
        );

  static const String name = 'ImagePreviewRoute';

  static const _i14.PageInfo<ImagePreviewRouteArgs> page =
      _i14.PageInfo<ImagePreviewRouteArgs>(name);
}

class ImagePreviewRouteArgs {
  const ImagePreviewRouteArgs({
    this.key,
    this.loadingBuilder,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
    this.initialIndex = 0,
    required this.galleryItems,
    this.scrollDirection = _i15.Axis.horizontal,
  });

  final _i15.Key? key;

  final _i15.Widget Function(
    _i15.BuildContext,
    _i15.ImageChunkEvent?,
  )? loadingBuilder;

  final _i15.BoxDecoration? backgroundDecoration;

  final dynamic minScale;

  final dynamic maxScale;

  final int initialIndex;

  final List<String> galleryItems;

  final _i15.Axis scrollDirection;

  @override
  String toString() {
    return 'ImagePreviewRouteArgs{key: $key, loadingBuilder: $loadingBuilder, backgroundDecoration: $backgroundDecoration, minScale: $minScale, maxScale: $maxScale, initialIndex: $initialIndex, galleryItems: $galleryItems, scrollDirection: $scrollDirection}';
  }
}

/// generated route for
/// [_i5.InProgressTasksScreen]
class InProgressTasksRoute extends _i14.PageRouteInfo<void> {
  const InProgressTasksRoute({List<_i14.PageRouteInfo>? children})
      : super(
          InProgressTasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'InProgressTasksRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.InstructedTasksScreen]
class InstructedTasksRoute extends _i14.PageRouteInfo<void> {
  const InstructedTasksRoute({List<_i14.PageRouteInfo>? children})
      : super(
          InstructedTasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'InstructedTasksRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MainScreen]
class MainRoute extends _i14.PageRouteInfo<void> {
  const MainRoute({List<_i14.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NewTasksScreen]
class NewTasksRoute extends _i14.PageRouteInfo<void> {
  const NewTasksRoute({List<_i14.PageRouteInfo>? children})
      : super(
          NewTasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewTasksRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.RegisterScreen]
class RegisterRoute extends _i14.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    _i16.Key? key,
    void Function()? onComplete,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(
            key: key,
            onComplete: onComplete,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i14.PageInfo<RegisterRouteArgs> page =
      _i14.PageInfo<RegisterRouteArgs>(name);
}

class RegisterRouteArgs {
  const RegisterRouteArgs({
    this.key,
    this.onComplete,
  });

  final _i16.Key? key;

  final void Function()? onComplete;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key, onComplete: $onComplete}';
  }
}

/// generated route for
/// [_i10.SplashScreen]
class SplashRoute extends _i14.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    _i16.Key? key,
    void Function()? onLoad,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SplashRoute.name,
          args: SplashRouteArgs(
            key: key,
            onLoad: onLoad,
          ),
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i14.PageInfo<SplashRouteArgs> page =
      _i14.PageInfo<SplashRouteArgs>(name);
}

class SplashRouteArgs {
  const SplashRouteArgs({
    this.key,
    this.onLoad,
  });

  final _i16.Key? key;

  final void Function()? onLoad;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, onLoad: $onLoad}';
  }
}

/// generated route for
/// [_i11.TaskFormScreen]
class TaskFormRoute extends _i14.PageRouteInfo<TaskFormRouteArgs> {
  TaskFormRoute({
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          TaskFormRoute.name,
          args: TaskFormRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TaskFormRoute';

  static const _i14.PageInfo<TaskFormRouteArgs> page =
      _i14.PageInfo<TaskFormRouteArgs>(name);
}

class TaskFormRouteArgs {
  const TaskFormRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'TaskFormRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.TaskInfoScreen]
class TaskInfoRoute extends _i14.PageRouteInfo<TaskInfoRouteArgs> {
  TaskInfoRoute({
    _i16.Key? key,
    required _i17.Task task,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          TaskInfoRoute.name,
          args: TaskInfoRouteArgs(
            key: key,
            task: task,
          ),
          initialChildren: children,
        );

  static const String name = 'TaskInfoRoute';

  static const _i14.PageInfo<TaskInfoRouteArgs> page =
      _i14.PageInfo<TaskInfoRouteArgs>(name);
}

class TaskInfoRouteArgs {
  const TaskInfoRouteArgs({
    this.key,
    required this.task,
  });

  final _i16.Key? key;

  final _i17.Task task;

  @override
  String toString() {
    return 'TaskInfoRouteArgs{key: $key, task: $task}';
  }
}

/// generated route for
/// [_i13.UserListScreen]
class UserListRoute extends _i14.PageRouteInfo<UserListRouteArgs> {
  UserListRoute({
    _i16.Key? key,
    _i18.ShortUserInfo? selectedUser,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          UserListRoute.name,
          args: UserListRouteArgs(
            key: key,
            selectedUser: selectedUser,
          ),
          initialChildren: children,
        );

  static const String name = 'UserListRoute';

  static const _i14.PageInfo<UserListRouteArgs> page =
      _i14.PageInfo<UserListRouteArgs>(name);
}

class UserListRouteArgs {
  const UserListRouteArgs({
    this.key,
    this.selectedUser,
  });

  final _i16.Key? key;

  final _i18.ShortUserInfo? selectedUser;

  @override
  String toString() {
    return 'UserListRouteArgs{key: $key, selectedUser: $selectedUser}';
  }
}
