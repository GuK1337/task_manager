import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required int id,
    required TaskUser creator,
    TaskUser? executor,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String title,
    String? description,
    required TaskStatus status,
    List<String>? images,
    @Default({}) Set<TaskActions> actions,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

@freezed
class TaskUser with _$TaskUser {
  const factory TaskUser({
    required int id,
    required String username,
  }) = _TaskUser;

  factory TaskUser.fromJson(Map<String, dynamic> json) =>
      _$TaskUserFromJson(json);
}

enum TaskStatus {
  @JsonValue('new')
  newTask,
  @JsonValue('inProgress')
  inProgress,
  @JsonValue('completed')
  completed
}

enum TaskActions {
  @JsonValue('delete')
  delete,
  @JsonValue('accept')
  accept,
  @JsonValue('confirm')
  confirm,
  @JsonValue('cancel')
  cancel,
}
