import 'package:example_app/domain/interactor/startup_interactor.dart';
import 'package:example_app/utils/dio_error_handler/messages/messages.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_bloc.freezed.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Cubit<SplashState> {
  SplashBloc({
    required this.startupInteractor,
  }) : super(const SplashState.init());

  @protected
  final StartupInteractor startupInteractor;

  Future<void> init() async {
    try {
      emit(const SplashState.loading());
      final initialized = await startupInteractor.initialize();
      if (!initialized) {
        emit(
          SplashState.error(ErrorMessages.noNetwork),
        );
        return;
      }
      emit(const SplashState.ready());
    } catch (e) {
      emit(SplashState.error(ErrorMessages.undefinedError));
      addError(e);
    }
  }
}
