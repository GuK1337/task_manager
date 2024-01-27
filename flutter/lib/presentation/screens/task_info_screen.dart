import 'package:auto_route/auto_route.dart';
import 'package:example_app/data/models/task/task.dart';
import 'package:example_app/domain/bloc/task_info_cubit/task_info_cubit.dart';
import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:example_app/presentation/components/separated_widgets.dart';
import 'package:example_app/utils/dio_error_handler/dio_error_handler.dart';
import 'package:example_app/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class TaskInfoScreen extends StatelessWidget implements AutoRouteWrapper {
  const TaskInfoScreen({super.key, required this.task});

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task.title),
      ),
      body: SafeArea(
        child: SrBlocBuilder<TaskInfoCubit, TaskInfoState, TaskInfoSr>(
          onSR: (context, sr) => sr.when(
            deleted: () {
              Messenger.showMessage(
                context: context,
                message: 'Задача удалена',
                messageType: MessageType.success,
              );
              return context.router.pop();
            },
            error: (error) =>
                Messenger.showMessage(context: context, message: error),
            success: () => Messenger.showMessage(
              context: context,
              message: 'Успешно',
              messageType: MessageType.success,
            ),
          ),
          builder: (context, state) {
            final task = state.task;
            return Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(AppInsets.padding16),
                    children: [
                      Text(
                        task.title,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(
                        height: AppInsets.padding16,
                      ),
                      if (task.description != null) ...[
                        Text(
                          task.description!,
                        ),
                        const SizedBox(
                          height: AppInsets.padding16,
                        ),
                      ],
                      if (task.image != null)
                        CachedNetworkImage(
                          imageUrl: task.image!,
                          width: double.infinity,
                        ),
                    ],
                  ),
                ),
                if (task.actions.isNotEmpty) ...[
                  const Divider(
                    height: 1.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppInsets.padding16),
                    child: ButtonWidget(
                      actions: task.actions,
                    ),
                  )
                ]
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<TaskInfoCubit>(
      create: (context) => GetIt.I.get(param1: task),
      child: this,
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.actions,
  });

  final Set<TaskActions> actions;

  @override
  Widget build(BuildContext context) {
    return SeparatedColumn(
      separator: const SizedBox(
        height: AppInsets.padding16,
      ),
      children: actions.map((e) => _buildButton(context, e)).toList(),
    );
  }

  Widget _buildButton(BuildContext context, TaskActions action) {
    switch (action) {
      case TaskActions.delete:
        return TextButton(
          onPressed: () => context.read<TaskInfoCubit>().delete(),
          style: TextButton.styleFrom(
            backgroundColor: Colors.red.shade700,
            foregroundColor: Colors.white,
          ),
          child: const Text(
            'Удалить',
          ),
        );
      case TaskActions.accept:
        return TextButton(
          onPressed: () => context.read<TaskInfoCubit>().accept(),
          style: TextButton.styleFrom(
            backgroundColor: Colors.green.shade700,
            foregroundColor: Colors.white,
          ),
          child: const Text('Принять к исполнению'),
        );
      case TaskActions.confirm:
        return TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.green.shade700,
            foregroundColor: Colors.white,
          ),
          onPressed: () => context.read<TaskInfoCubit>().confirm(),
          child: const Text('Выполнить'),
        );
      case TaskActions.cancel:
        return TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red.shade700,
            foregroundColor: Colors.white,
          ),
          onPressed: () => context.read<TaskInfoCubit>().cancel(),
          child: const Text('Отказаться'),
        );
    }
  }
}
