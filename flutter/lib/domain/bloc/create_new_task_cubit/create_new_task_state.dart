part of 'create_new_task_cubit.dart';

@freezed
class CreateNewTaskState with _$CreateNewTaskState {
  const factory CreateNewTaskState.ready() = _Ready;
  const factory CreateNewTaskState.loading() = _Loading;
}

@freezed
class CreateNewTaskSr with _$CreateNewTaskSr {
  const factory CreateNewTaskSr.error(String error) = _ErrorSr;
  const factory CreateNewTaskSr.success() = _SucessSr;
}
