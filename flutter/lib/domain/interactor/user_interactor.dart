import 'package:example_app/data/models/short_user_info/short_user_info.dart';
import 'package:example_app/data/repository/auth_repository.dart';
import 'package:example_app/data/repository/user_repository.dart';
import 'package:example_app/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:example_app/utils/functional_models/api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

abstract class UserInterator {
  Future<DefaultResponse<List<ShortUserInfo>>> userList([String? query]);
}

@Singleton(as: UserInterator)
class UserInteractorImpl extends UserInterator {
  UserInteractorImpl({
    required this.userRepository,
    required this.authRepository,
  });

  @protected
  final UserRepository userRepository;
  @protected
  final AuthRepository authRepository;

  @override
  Future<DefaultResponse<List<ShortUserInfo>>> userList([String? query]) {
    try {
      final user = authRepository.user;
      if (user == null) {
        return Future.value(
          const ApiResponse.error(CommonResponseError.unAuthorized()),
        );
      }
      return userRepository.userList(user.token, query);
    } catch (e) {
      return Future.value(
        ApiResponse.error(CommonResponseError.undefinedError(e)),
      );
    }
  }
}
