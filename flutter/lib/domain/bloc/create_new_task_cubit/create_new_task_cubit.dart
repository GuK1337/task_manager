import 'package:example_app/data/models/new_task/new_task.dart';
import 'package:example_app/domain/interactor/task_interactor.dart';
import 'package:example_app/utils/dio_error_handler/messages/messages.dart';
import 'package:example_app/utils/sr_bloc/sr_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_new_task_state.dart';
part 'create_new_task_cubit.freezed.dart';

@injectable
class CreateNewTaskCubit extends SrCubit<CreateNewTaskState, CreateNewTaskSr> {
  CreateNewTaskCubit({
    required this.taskInteractor,
  }) : super(const CreateNewTaskState.ready());

  @protected
  final TaskInteractor taskInteractor;

  Future<void> create(NewTask newTask) async {
    if (state is _Loading) {
      return;
    }
    emit(const CreateNewTaskState.loading());
    final response = await taskInteractor.createTask(newTask);
    if (response.hasError) {
      addError(response.error);
      emit(const CreateNewTaskState.ready());
      addSr(CreateNewTaskSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    emit(const CreateNewTaskState.ready());
    addSr(const CreateNewTaskSr.success());
  }
}
