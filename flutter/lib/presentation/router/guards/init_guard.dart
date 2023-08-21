import 'package:auto_route/auto_route.dart';
import 'package:example_app/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';

typedef IsInited = bool Function();

/// Интерцептор роутинга ограничивающий доступ к страницам до их инициализации
///
/// Добавляет в стэк Splash-Screen при попытке перехода на страницу, защищенную этим гвардом, до инициализации приложения
class InitGuard extends AutoRouteGuard {
  @protected
  final IsInited isInited;

  InitGuard({
    required this.isInited,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate(resolver.route)) {
      resolver.next();
    } else {
      resolver.redirect(
        SplashRoute(onLoad: () => resolver.next()),
      );
    }
  }

  Future<bool> canNavigate(RouteMatch route) async => isInited();
}
