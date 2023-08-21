import 'package:auto_route/auto_route.dart';
import 'package:example_app/presentation/router/app_router.dart';
import 'package:example_app/presentation/router/guards/auth_guard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I.get<AppRouter>();
    return MaterialApp.router(
      title: 'Постановка задач',
      restorationScopeId: 'restoration_scope_id',
      theme: GetIt.I.get(),
      localizationsDelegates: const [
        ...GlobalMaterialLocalizations.delegates,
        FormBuilderLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('ru', ''),
      ],
      routerConfig: appRouter.config(
        placeholder: (context) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            body: const Center(
              child: FlutterLogo(),
            ),
          );
        },
        reevaluateListenable: GetIt.I.get<AuthReevaluate>(),
        navRestorationScopeId: 'nav_restoration_scope_id',
      ),
    );
  }
}
