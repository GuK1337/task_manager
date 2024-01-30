import 'dart:async';

import 'package:example_app/data/models/short_user_info/short_user_info.dart';
import 'package:example_app/data/services/api_service.dart';
import 'package:example_app/utils/functional_models/api_response.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class UserRepository {
  Future<DefaultResponse<List<ShortUserInfo>>> userList(String token,
      [String? query]);
}

@Singleton(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl({
    required this.apiService,
  });

  @protected
  final ApiService apiService;

  @override
  Future<DefaultResponse<List<ShortUserInfo>>> userList(String token,
      [String? query]) {
    return apiService.userList(token, query);
  }
}
