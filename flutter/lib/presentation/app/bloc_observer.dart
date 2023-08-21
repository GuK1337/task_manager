import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('$error on $bloc bloc\n$stackTrace');
    super.onError(bloc, error, stackTrace);
  }
}
