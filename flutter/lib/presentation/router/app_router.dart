import 'package:auto_route/auto_route.dart';
import 'package:example_app/presentation/router/guards/auth_guard.dart';
import 'package:example_app/presentation/router/guards/init_guard.dart';
import 'package:example_app/presentation/router/route_builders/modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'app_router.gr.dart';

/// Роутер приложения
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  AppRouter({
    super.navigatorKey,
    required this.initGuard,
    required this.authGuard,
  });

  @protected
  final AuthGuard authGuard;
  final InitGuard initGuard;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page),
        AutoRoute(
          page: RegisterRoute.page,
          guards: [
            initGuard,
          ],
        ),
        AutoRoute(page: AuthRoute.page, guards: [
          initGuard,
        ]),
        AutoRoute(page: TaskFormRoute.page, guards: [
          initGuard,
          authGuard,
        ]),
        AutoRoute(page: TaskInfoRoute.page, guards: [
          initGuard,
          authGuard,
        ]),
        AutoRoute(page: ImagePreviewRoute.page, guards: [
          initGuard,
          authGuard,
        ]),
        CustomRoute(
          page: AddTaskResultRoute.page,
          guards: [
            initGuard,
            authGuard,
          ],
          customRouteBuilder: cupertinoModalSheetBuilder,
        ),
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          guards: [
            initGuard,
            authGuard,
          ],
          children: [
            AutoRoute(page: NewTasksRoute.page),
            AutoRoute(page: InProgressTasksRoute.page),
            AutoRoute(page: InstructedTasksRoute.page),
            AutoRoute(page: ArchiveTasksRoute.page),
          ],
        ),
      ];
}
