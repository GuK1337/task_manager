import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required int id,
    required int creator,
    int? executor,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String title,
    String? description,
    required TaskStatus status,
    String? image,
    @Default({}) Set<TaskActions> actions,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
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
