import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'new_task.freezed.dart';
part 'new_task.g.dart';

@freezed
class NewTask with _$NewTask {
  const factory NewTask({
    required String title,
    String? description,
    required List<String> imagePaths,
  }) = _NewTask;

  factory NewTask.fromJson(Map<String, dynamic> json) =>
      _$NewTaskFromJson(json);
}
