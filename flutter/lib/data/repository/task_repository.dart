import 'package:example_app/data/models/new_task/new_task.dart';
import 'package:example_app/data/models/task/task.dart';
import 'package:example_app/data/services/api_service.dart';
import 'package:example_app/utils/functional_models/api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

abstract class TaskRepository {
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
  Future<DefaultResponse<Task>> setTaskCompleted({
    required String token,
    required int taskId,
    String? resultDescription,
    List<String>? imagePaths,
  });
  Future<DefaultResponse<Task>> cancelTask(
      {required String token, required int taskId});
}

@Singleton(as: TaskRepository)
class TaskRepositoryImpl extends TaskRepository {
  TaskRepositoryImpl({
    required this.apiService,
  });

  @protected
  final ApiService apiService;

  @override
  Future<DefaultResponse<Task>> cancelTask(
          {required String token, required int taskId}) =>
      apiService.cancelTask(token: token, taskId: taskId);

  @override
  Future<DefaultResponse<bool>> deleteTask(
          {required String token, required int taskId}) =>
      apiService.deleteTask(token: token, taskId: taskId);

  @override
  Future<DefaultResponse<List<Task>>> getArchiveTasks(String token) =>
      apiService.getArchiveTasks(token);

  @override
  Future<DefaultResponse<List<Task>>> getInProgressTasks(String token) =>
      apiService.getInProgressTasks(token);

  @override
  Future<DefaultResponse<List<Task>>> getInstructedTasks(String token) =>
      apiService.getInstructedTasks(token);

  @override
  Future<DefaultResponse<List<Task>>> getNewTasks(String token) =>
      apiService.getNewTasks(token);

  @override
  Future<DefaultResponse<Task>> setTaskCompleted({
    required String token,
    required int taskId,
    String? resultDescription,
    List<String>? imagePaths,
  }) =>
      apiService.setTaskCompleted(
        token: token,
        taskId: taskId,
        resultDescription: resultDescription,
        imagePaths: imagePaths,
      );

  @override
  Future<DefaultResponse<Task>> setTaskInProgress(
          {required String token, required int taskId}) =>
      apiService.setTaskInProgress(token: token, taskId: taskId);

  @override
  Future<DefaultResponse<int>> createTask({
    required String token,
    required NewTask newTask,
  }) =>
      apiService.createTask(token: token, newTask: newTask);
}
