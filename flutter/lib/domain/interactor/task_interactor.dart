import 'package:example_app/data/models/new_task/new_task.dart';
import 'package:example_app/data/models/task/task.dart';
import 'package:example_app/data/repository/auth_repository.dart';
import 'package:example_app/data/repository/task_repository.dart';
import 'package:example_app/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:example_app/utils/functional_models/api_response.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class TaskInteractor {
  TaskChangeNotifier get taskChangeNotifier;

  Future<DefaultResponse<int>> createTask(NewTask newTask);

  Future<DefaultResponse<List<Task>>> getNewTasks();
  Future<DefaultResponse<List<Task>>> getInProgressTasks();
  Future<DefaultResponse<List<Task>>> getInstructedTasks();
  Future<DefaultResponse<List<Task>>> getArchiveTasks();

  Future<DefaultResponse<bool>> deleteTask(int taskId);
  Future<DefaultResponse<Task>> setTaskInProgress(int taskId);
  Future<DefaultResponse<Task>> setTaskCompleted({
    required int taskId,
    String? resultDescription,
    List<String>? imagePaths,
  });
  Future<DefaultResponse<Task>> cancelTask(int taskId);
}

@Singleton(as: TaskInteractor)
class TaskInteractorImpl implements TaskInteractor {
  TaskInteractorImpl({
    required this.taskRepository,
    required this.authRepository,
  });

  @protected
  final AuthRepository authRepository;
  @protected
  final TaskRepository taskRepository;

  @override
  final taskChangeNotifier = TaskChangeNotifier();

  @override
  Future<DefaultResponse<Task>> cancelTask(int taskId) async {
    final user = authRepository.user;
    if (user == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    final response =
        await taskRepository.cancelTask(token: user.token, taskId: taskId);
    if (response.isSuccess) {
      taskChangeNotifier.taskChanged();
    }
    return response;
  }

  @override
  Future<DefaultResponse<int>> createTask(NewTask newTask) async {
    final user = authRepository.user;
    if (user == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    final response =
        await taskRepository.createTask(token: user.token, newTask: newTask);
    if (response.isSuccess) {
      taskChangeNotifier.taskChanged();
    }
    return response;
  }

  @override
  Future<DefaultResponse<bool>> deleteTask(int taskId) async {
    final user = authRepository.user;
    if (user == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    final response =
        await taskRepository.deleteTask(token: user.token, taskId: taskId);
    if (response.isSuccess) {
      taskChangeNotifier.taskChanged();
    }
    return response;
  }

  @override
  Future<DefaultResponse<List<Task>>> getArchiveTasks() async {
    final user = authRepository.user;
    if (user == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    return taskRepository.getArchiveTasks(
      user.token,
    );
  }

  @override
  Future<DefaultResponse<List<Task>>> getInProgressTasks() async {
    final user = authRepository.user;
    if (user == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    return taskRepository.getInProgressTasks(
      user.token,
    );
  }

  @override
  Future<DefaultResponse<List<Task>>> getInstructedTasks() async {
    final user = authRepository.user;
    if (user == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    return taskRepository.getInstructedTasks(
      user.token,
    );
  }

  @override
  Future<DefaultResponse<List<Task>>> getNewTasks() async {
    final user = authRepository.user;
    if (user == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    return taskRepository.getNewTasks(
      user.token,
    );
  }

  @override
  Future<DefaultResponse<Task>> setTaskCompleted({
    required int taskId,
    String? resultDescription,
    List<String>? imagePaths,
  }) async {
    final user = authRepository.user;
    if (user == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    final response = await taskRepository.setTaskCompleted(
      token: user.token,
      taskId: taskId,
      resultDescription: resultDescription,
      imagePaths: imagePaths,
    );
    if (response.isSuccess) {
      taskChangeNotifier.taskChanged();
    }
    return response;
  }

  @override
  Future<DefaultResponse<Task>> setTaskInProgress(int taskId) async {
    final user = authRepository.user;
    if (user == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    final response = await taskRepository.setTaskInProgress(
        token: user.token, taskId: taskId);
    if (response.isSuccess) {
      taskChangeNotifier.taskChanged();
    }
    return response;
  }
}

class TaskChangeNotifier extends ChangeNotifier {
  void taskChanged() => notifyListeners();
}
