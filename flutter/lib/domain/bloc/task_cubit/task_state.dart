part of 'task_cubit.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.init() = _Init;
  const factory TasksState.loading() = _Loading;
  const factory TasksState.ready({
    required List<Task> tasks,
  }) = _Ready;
  const factory TasksState.error() = _Error;
}
