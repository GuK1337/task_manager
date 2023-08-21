import 'package:bloc/bloc.dart';
import 'package:example_app/data/models/task/task.dart';
import 'package:example_app/domain/interactor/task_interactor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'task_state.dart';
part 'task_cubit.freezed.dart';

abstract class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(const TasksState.init());

  Future<void> fetch();
}

@injectable
class NewTasksCubit extends TasksCubit {
  NewTasksCubit({
    required this.taskInteractor,
  }) : super() {
    taskInteractor.taskChangeNotifier.addListener(_handleTaskChange);
  }

  @protected
  final TaskInteractor taskInteractor;

  @override
  Future<void> fetch() async {
    if (state is _Loading) {
      return;
    }
    emit(const TasksState.loading());
    final response = await taskInteractor.getNewTasks();
    if (response.hasError) {
      addError(response.error);
      emit(const TasksState.error());
      return;
    }
    emit(TasksState.ready(tasks: response.result));
  }

  Future<void> _handleTaskChange() async {
    final response = await taskInteractor.getNewTasks();
    if (response.hasError) {
      addError(response.error);
      return;
    }
    emit(TasksState.ready(tasks: response.result));
  }

  @override
  Future<void> close() {
    taskInteractor.taskChangeNotifier.removeListener(_handleTaskChange);
    return super.close();
  }
}

@injectable
class InProgressTasksCubit extends TasksCubit {
  InProgressTasksCubit({
    required this.taskInteractor,
  }) : super() {
    taskInteractor.taskChangeNotifier.addListener(_handleTaskChange);
  }

  @protected
  final TaskInteractor taskInteractor;

  @override
  Future<void> fetch() async {
    if (state is _Loading) {
      return;
    }
    emit(const TasksState.loading());
    final response = await taskInteractor.getInProgressTasks();
    if (response.hasError) {
      addError(response.error);
      emit(const TasksState.error());
      return;
    }
    emit(TasksState.ready(tasks: response.result));
  }

  Future<void> _handleTaskChange() async {
    final response = await taskInteractor.getInProgressTasks();
    if (response.hasError) {
      addError(response.error);
      return;
    }
    emit(TasksState.ready(tasks: response.result));
  }

  @override
  Future<void> close() {
    taskInteractor.taskChangeNotifier.removeListener(_handleTaskChange);
    return super.close();
  }
}

@injectable
class InstructedTasksCubit extends TasksCubit {
  InstructedTasksCubit({
    required this.taskInteractor,
  }) : super() {
    taskInteractor.taskChangeNotifier.addListener(_handleTaskChange);
  }

  @protected
  final TaskInteractor taskInteractor;

  @override
  Future<void> fetch() async {
    if (state is _Loading) {
      return;
    }
    emit(const TasksState.loading());
    final response = await taskInteractor.getInstructedTasks();
    if (response.hasError) {
      addError(response.error);
      emit(const TasksState.error());
      return;
    }
    emit(TasksState.ready(tasks: response.result));
  }

  Future<void> _handleTaskChange() async {
    final response = await taskInteractor.getInstructedTasks();
    if (response.hasError) {
      addError(response.error);
      return;
    }
    emit(TasksState.ready(tasks: response.result));
  }

  @override
  Future<void> close() {
    taskInteractor.taskChangeNotifier.removeListener(_handleTaskChange);
    return super.close();
  }
}

@injectable
class ArchiveTasksCubit extends TasksCubit {
  ArchiveTasksCubit({
    required this.taskInteractor,
  }) : super() {
    taskInteractor.taskChangeNotifier.addListener(_handleTaskChange);
  }

  @protected
  final TaskInteractor taskInteractor;

  @override
  Future<void> fetch() async {
    if (state is _Loading) {
      return;
    }
    emit(const TasksState.loading());
    final response = await taskInteractor.getArchiveTasks();
    if (response.hasError) {
      addError(response.error);
      emit(const TasksState.error());
      return;
    }
    emit(TasksState.ready(tasks: response.result));
  }

  Future<void> _handleTaskChange() async {
    final response = await taskInteractor.getArchiveTasks();
    if (response.hasError) {
      addError(response.error);
      return;
    }
    emit(TasksState.ready(tasks: response.result));
  }

  @override
  Future<void> close() {
    taskInteractor.taskChangeNotifier.removeListener(_handleTaskChange);
    return super.close();
  }
}
