import 'dart:convert';

import 'package:example_app/data/models/user/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

abstract class AuthStorageService {
  Future<bool> saveUser(User user);
  Future<bool> deleteUser();
  Future<User?> getUser();
}

@Injectable(as: AuthStorageService)
class AuthStorageServiceImpl extends AuthStorageService {
  AuthStorageServiceImpl({
    required this.secureStorage,
  });

  @protected
  final FlutterSecureStorage secureStorage;

  final _userKey = 'user';
  @override
  Future<bool> deleteUser() async {
    try {
      await secureStorage.delete(key: _userKey);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<User?> getUser() async {
    try {
      final jsonString = await secureStorage.read(key: _userKey);
      if (jsonString == null) {
        return null;
      }
      final json = await compute(jsonDecode, jsonString);
      return User.fromJson(json);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> saveUser(User user) async {
    try {
      await secureStorage.write(
        key: _userKey,
        value: await compute(jsonEncode, user.toJson()),
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
