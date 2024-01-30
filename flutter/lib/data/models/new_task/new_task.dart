import 'package:example_app/data/models/short_user_info/short_user_info.dart';
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
    ShortUserInfo? executor,
  }) = _NewTask;

  factory NewTask.fromJson(Map<String, dynamic> json) =>
      _$NewTaskFromJson(json);
}
