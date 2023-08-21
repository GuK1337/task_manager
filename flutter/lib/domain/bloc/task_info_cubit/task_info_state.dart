part of 'task_info_cubit.dart';

@freezed
class TaskInfoState with _$TaskInfoState {
  const factory TaskInfoState({
    required Task task,
    @Default(TaskInfoStatus.ready) TaskInfoStatus status,
  }) = _TaskInfoState;
}

enum TaskInfoStatus {
  ready,
  loading,
}

@freezed
class TaskInfoSr with _$TaskInfoSr {
  const factory TaskInfoSr.error(String error) = _ErrorSr;
  const factory TaskInfoSr.success() = _SucessSr;
  const factory TaskInfoSr.deleted() = _DeletedSr;
}
