import 'package:example_app/data/repository/auth_repository.dart';
import 'package:example_app/data/repository/startup_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:synchronized/synchronized.dart';

abstract class StartupInteractor {
  Future<bool> initialize();

  Future<void> dispose();
}

@Singleton(as: StartupInteractor)
class StartupInteractorImpl implements StartupInteractor {
  StartupInteractorImpl({
    required this.authRepository,
    required this.startupRepository,
  });

  @protected
  final AuthRepository authRepository;
  @protected
  final StartupRepository startupRepository;

  final Lock _initializeLock = Lock();
  final CompositeSubscription _compositeSubscription = CompositeSubscription();

  @override
  Future<bool> initialize() => _initializeLock.synchronized(
        () async {
          try {
            await authRepository.checkToken();
            startupRepository.initialized();
          } catch (_) {}
          return startupRepository.isInited();
        },
      );

  @disposeMethod
  @override
  Future<void> dispose() async {
    await _compositeSubscription.cancel();
  }
}
