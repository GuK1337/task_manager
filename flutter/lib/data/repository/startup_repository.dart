import 'package:injectable/injectable.dart';

abstract class StartupRepository {
  void initialized();

  bool isInited();
}

@Singleton(as: StartupRepository)
class StartupRepositoryImpl implements StartupRepository {
  bool _isInited = false;

  @override
  void initialized() {
    _isInited = true;
  }

  @override
  bool isInited() => _isInited;
}
