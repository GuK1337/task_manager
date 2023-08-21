import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:example_app/data/repository/auth_repository.dart';
import 'package:example_app/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

typedef IsAuthorized = bool Function();

class AuthGuard extends AutoRouteGuard {
  @protected
  final IsAuthorized isAuthorized;

  AuthGuard({
    required this.isAuthorized,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate(resolver.route)) {
      resolver.next();
    } else {
      resolver.redirect(AuthRoute(onComplete: () => resolver.next()));
    }
  }

  Future<bool> canNavigate(RouteMatch route) async => isAuthorized();
}

@singleton
class AuthReevaluate extends ChangeNotifier {
  AuthReevaluate({
    required this.authRepository,
  }) {
    _streamSubscription = authRepository.userStream.listen((event) {
      notifyListeners();
    });
  }

  @protected
  final AuthRepository authRepository;

  late final StreamSubscription _streamSubscription;

  @disposeMethod
  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }
}
