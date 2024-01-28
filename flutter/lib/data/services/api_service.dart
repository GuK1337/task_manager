import 'package:dio/dio.dart';
import 'package:example_app/data/const/injectable_names.dart';
import 'package:example_app/data/models/auth_response/auth_response.dart';
import 'package:example_app/data/models/new_task/new_task.dart';
import 'package:example_app/data/models/register_response/register_response.dart';
import 'package:example_app/data/models/task/task.dart';
import 'package:example_app/data/models/user/user.dart';
import 'package:example_app/utils/dio_error_handler/dio_error_handler.dart';
import 'package:example_app/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:example_app/utils/functional_models/api_response.dart';
import 'package:example_app/utils/request_methods.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:mime_type/mime_type.dart';
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart';

abstract class ApiService {
  Future<DefaultResponse<User>> auth(AuthResponse data);
  Future<DefaultResponse<User>> register(RegisterResponse data);
  Future<DefaultResponse<User>> checkUser(User user);

  Future<DefaultResponse<int>> createTask({
    required String token,
    required NewTask newTask,
  });

  Future<DefaultResponse<List<Task>>> getNewTasks(String token);
  Future<DefaultResponse<List<Task>>> getInProgressTasks(String token);
  Future<DefaultResponse<List<Task>>> getInstructedTasks(String token);
  Future<DefaultResponse<List<Task>>> getArchiveTasks(String token);

  Future<DefaultResponse<bool>> deleteTask(
      {required String token, required int taskId});
  Future<DefaultResponse<Task>> setTaskInProgress(
      {required String token, required int taskId});
  Future<DefaultResponse<Task>> setTaskCompleted(
      {required String token, required int taskId});
  Future<DefaultResponse<Task>> cancelTask(
      {required String token, required int taskId});
}

@Singleton(as: ApiService)
class ApiServiceImpl extends ApiService {
  ApiServiceImpl({
    @Named(InjectableNames.apiClient) required this.dio,
    @Named(InjectableNames.apiClient) required this.errorHandler,
  });

  @protected
  final Dio dio;
  @protected
  final DioErrorHandler<DefaultApiError> errorHandler;

  @override
  Future<DefaultResponse<User>> auth(AuthResponse data) async {
    try {
      final response = await _request(
        route: 'api/users/auth',
        requestType: RequestType.post,
        data: data.toJson(),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(User.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<User>> checkUser(User user) async {
    try {
      final response = await _request(
        route: 'api/users/info',
        requestType: RequestType.get,
        token: user.token,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        user.copyWith(
          login: response.result['login'],
          id: response.result['id'],
        ),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<Task>> cancelTask(
      {required String token, required int taskId}) async {
    try {
      final response = await _request(
        route: 'api/tasks/cancel/$taskId',
        requestType: RequestType.patch,
        token: token,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(Task.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<int>> createTask(
      {required String token, required NewTask newTask}) async {
    try {
      final images = [];
      for (final imagePath in newTask.imagePaths) {
        final name = basename(imagePath);
        String mimeType = mime(name)!;
        String mimee = mimeType.split('/')[0];
        String type = mimeType.split('/')[1];
        images.add(
          await MultipartFile.fromFile(
            imagePath,
            filename: name,
            contentType: MediaType(mimee, type),
          ),
        );
      }

      FormData formData = FormData.fromMap({
        'images': images,
        'description': newTask.description ?? '',
        'title': newTask.title,
      });
      final response = await _request(
          route: 'api/tasks/create',
          requestType: RequestType.post,
          data: formData,
          token: token,
          headers: {"Content-Type": "multipart/form-data"});
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<bool>> deleteTask(
      {required String token, required int taskId}) async {
    try {
      final response = await _request(
        route: 'api/tasks/delete/$taskId',
        requestType: RequestType.delete,
        token: token,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<Task>>> getArchiveTasks(String token) async {
    try {
      final response = await _request(
        route: 'api/tasks/list/archive',
        requestType: RequestType.get,
        token: token,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
          (response.result as Iterable).map((e) => Task.fromJson(e)).toList());
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<Task>>> getInProgressTasks(String token) async {
    try {
      final response = await _request(
        route: 'api/tasks/list/in-progress',
        requestType: RequestType.get,
        token: token,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
          (response.result as Iterable).map((e) => Task.fromJson(e)).toList());
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<Task>>> getInstructedTasks(String token) async {
    try {
      final response = await _request(
        route: 'api/tasks/list/instructed',
        requestType: RequestType.get,
        token: token,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
          (response.result as Iterable).map((e) => Task.fromJson(e)).toList());
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<Task>>> getNewTasks(String token) async {
    try {
      final response = await _request(
        route: 'api/tasks/list/new',
        requestType: RequestType.get,
        token: token,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
          (response.result as Iterable).map((e) => Task.fromJson(e)).toList());
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<Task>> setTaskCompleted(
      {required String token, required int taskId}) async {
    try {
      final response = await _request(
        route: 'api/tasks/confirm/$taskId',
        requestType: RequestType.patch,
        token: token,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(Task.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<Task>> setTaskInProgress(
      {required String token, required int taskId}) async {
    try {
      final response = await _request(
        route: 'api/tasks/accept/$taskId',
        requestType: RequestType.patch,
        token: token,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(Task.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  Future<ApiResponse<CommonResponseError<DefaultApiError>, dynamic>> _request({
    required String route,
    RequestType requestType = RequestType.get,
    dynamic data,
    Map<String, String>? headers,
    String? token,
  }) async {
    try {
      final response = await errorHandler.processRequest<Response>(
        () => dio.request(
          route,
          data: data,
          options: Options(
            headers: {
              ...?headers,
              if (token != null) 'x-access-token': token,
            },
            method: requestType.method,
          ),
        ),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result.data['result']);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<User>> register(RegisterResponse data) async {
    try {
      final response = await _request(
        route: 'api/users/register',
        requestType: RequestType.post,
        data: data.toJson(),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(User.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
