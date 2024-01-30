import 'package:example_app/data/models/task/task.dart';
import 'package:example_app/domain/interactor/task_interactor.dart';
import 'package:example_app/utils/dio_error_handler/messages/messages.dart';
import 'package:example_app/utils/sr_bloc/sr_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'task_info_state.dart';
part 'task_info_cubit.freezed.dart';

@injectable
class TaskInfoCubit extends SrCubit<TaskInfoState, TaskInfoSr> {
  TaskInfoCubit({
    @factoryParam required Task task,
    required this.taskInteractor,
  }) : super(TaskInfoState(task: task));

  @protected
  final TaskInteractor taskInteractor;

  Future<void> accept() async {
    if (state.status == TaskInfoStatus.loading) {
      return;
    }
    emit(state.copyWith(status: TaskInfoStatus.loading));
    final response = await taskInteractor.setTaskInProgress(state.task.id);
    if (response.hasError) {
      addError(response.error);
      addSr(TaskInfoSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    emit(
      state.copyWith(
        task: response.result,
        status: TaskInfoStatus.ready,
      ),
    );
    addSr(const TaskInfoSr.success());
  }

  Future<void> confirm({
    String? resultDescription,
    List<String>? imagePaths,
  }) async {
    if (state.status == TaskInfoStatus.loading) {
      return;
    }
    emit(state.copyWith(status: TaskInfoStatus.loading));
    final response = await taskInteractor.setTaskCompleted(
      taskId: state.task.id,
      resultDescription: resultDescription,
      imagePaths: imagePaths,
    );
    if (response.hasError) {
      addError(response.error);
      addSr(TaskInfoSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    emit(
      state.copyWith(
        task: response.result,
        status: TaskInfoStatus.ready,
      ),
    );
    addSr(const TaskInfoSr.success());
  }

  Future<void> cancel() async {
    if (state.status == TaskInfoStatus.loading) {
      return;
    }
    emit(state.copyWith(status: TaskInfoStatus.loading));
    final response = await taskInteractor.cancelTask(state.task.id);
    if (response.hasError) {
      addError(response.error);
      addSr(TaskInfoSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    emit(
      state.copyWith(
        task: response.result,
        status: TaskInfoStatus.ready,
      ),
    );
    addSr(const TaskInfoSr.success());
  }

  Future<void> delete() async {
    if (state.status == TaskInfoStatus.loading) {
      return;
    }
    emit(state.copyWith(status: TaskInfoStatus.loading));
    final response = await taskInteractor.deleteTask(state.task.id);
    if (response.hasError) {
      addError(response.error);
      addSr(TaskInfoSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    addSr(const TaskInfoSr.deleted());
  }
}
