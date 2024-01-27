import 'package:auto_route/auto_route.dart';
import 'package:example_app/data/models/task/task.dart';
import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:example_app/presentation/router/app_router.gr.dart';
import 'package:example_app/presentation/theme/models/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          padding: const EdgeInsets.all(AppInsets.padding16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.title,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: AppInsets.padding16,
              ),
              Text(
                DateFormat('dd.MM.yyyy, HH:mm').format(task.createdAt),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).extension<CustomThemeExtension>()!.labelColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
