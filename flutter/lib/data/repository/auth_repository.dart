import 'dart:async';

import 'package:example_app/data/models/user/user.dart';
import 'package:example_app/data/services/api_service.dart';
import 'package:example_app/data/services/auth_storage_service.dart';
import 'package:example_app/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:example_app/utils/functional_models/api_response.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

abstract class AuthRepository {
  Stream<User?> get userStream;

  User? get user;

  bool isAuthorized();

  Future<DefaultResponse<User>> auth(String login);

  Future<void> checkToken();

  Future<void> logout();

  Future<void> dispose();
}

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({
    required this.apiService,
    required this.storageService,
  }) : _userSubject = BehaviorSubject<User?>();

  @protected
  final ApiService apiService;
  @protected
  final AuthStorageService storageService;

  final BehaviorSubject<User?> _userSubject;

  @override
  Stream<User?> get userStream => _userSubject.stream;

  @override
  User? get user => _userSubject.value;

  @override
  bool isAuthorized() => _userSubject.valueOrNull != null;

  @override
  Future<DefaultResponse<User>> auth(String login) async {
    try {
      final response = await apiService.auth(login);
      if (response.hasError) {
        _userSubject.sink.add(null);
      } else {
        final result = await storageService.saveUser(response.result);
        if (result) _userSubject.sink.add(response.result);
      }
      return response;
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<void> checkToken() async {
    try {
      final user = await storageService.getUser();
      if (user == null) {
        _userSubject.sink.add(null);
        return;
      }
      final response = await apiService.checkUser(user);
      if (response.hasError) {
        if (response.error.isUnAuthorized) {
          storageService.deleteUser();
        }
        _userSubject.sink.add(null);
        return;
      }
      _userSubject.sink.add(user);
    } catch (e) {
      _userSubject.sink.add(null);
      return;
    }
  }

  @override
  Future<void> logout() async {
    bool isDelete = await storageService.deleteUser();
    if (isDelete) {
      _userSubject.sink.add(null);
    }
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    await _userSubject.close();
  }
}
