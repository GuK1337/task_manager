import 'package:auto_route/auto_route.dart';
import 'package:example_app/data/models/task/task.dart';
import 'package:example_app/domain/bloc/task_cubit/task_cubit.dart';
import 'package:example_app/presentation/app/theme/models/app_insets.dart';
import 'package:example_app/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(TaskInfoRoute(task: task)),
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(AppInsets.padding),
          child: Text(
            task.title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
