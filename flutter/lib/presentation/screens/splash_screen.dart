import 'package:auto_route/auto_route.dart';
import 'package:example_app/domain/bloc/splash_bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class SplashScreen extends StatelessWidget implements AutoRouteWrapper {
  const SplashScreen({
    Key? key,
    this.onLoad,
  }) : super(key: key);

  final void Function()? onLoad;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: _onLoad,
      child: const Scaffold(
        body: SafeArea(
          child: Center(
            child: SizedBox(
              child: FlutterLogo(),
              width: 150,
              height: 150,
            ),
          ),
        ),
      ),
    );
  }

  void _onLoad(BuildContext context, SplashState state) {
    state.mapOrNull(
      ready: (state) {
        onLoad?.call();
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => GetIt.I.get()..init(),
      child: this,
    );
  }
}
