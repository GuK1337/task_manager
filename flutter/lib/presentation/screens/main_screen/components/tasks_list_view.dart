import 'package:example_app/data/models/task/task.dart';
import 'package:example_app/domain/bloc/task_cubit/task_cubit.dart';
import 'package:example_app/presentation/app/theme/models/app_insets.dart';
import 'package:example_app/presentation/screens/main_screen/components/task_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<TasksCubit, TasksState>(
        builder: (BuildContext context, state) => state.when(
          init: () => const LoadingWidget(),
          loading: () => const LoadingWidget(),
          ready: (tasks) => TasksListContent(
            tasks: tasks,
          ),
          error: () => ErrorWidget(
            onReload: () => context.read<TasksCubit>().fetch(),
          ),
        ),
      ),
    );
  }
}

class TasksListContent extends StatelessWidget {
  const TasksListContent({
    super.key,
    required this.tasks,
  });

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => context.read<TasksCubit>().fetch(),
      child: ListView.separated(
        padding: const EdgeInsets.all(AppInsets.padding),
        itemBuilder: (context, index) => TaskItem(
          task: tasks[index],
        ),
        separatorBuilder: (_, __) => const SizedBox(
          height: AppInsets.padding,
        ),
        itemCount: tasks.length,
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({
    super.key,
    this.onReload,
  });

  final VoidCallback? onReload;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppInsets.padding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Что-то пошло не так :('),
            const SizedBox(
              height: AppInsets.padding,
            ),
            TextButton(
              onPressed: onReload,
              child: const Text('Перезагрузить'),
            )
          ],
        ),
      ),
    );
  }
}
