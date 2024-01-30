import 'package:auto_route/auto_route.dart';
import 'package:example_app/data/models/task/task.dart';
import 'package:example_app/domain/bloc/task_info_cubit/task_info_cubit.dart';
import 'package:example_app/presentation/router/app_router.gr.dart';
import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:example_app/presentation/components/separated_widgets.dart';
import 'package:example_app/presentation/theme/models/colors/app_colors.dart';
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
                  child: CustomScrollView(
                    slivers: [
                      SliverPadding(
                        padding:
                            const EdgeInsets.all(AppInsets.padding16).copyWith(
                          bottom: 0.0,
                        ),
                        sliver: SliverList.list(children: [
                          Text(
                            "Автор",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Theme.of(context)
                                      .extension<CustomThemeExtension>()!
                                      .labelColor,
                                ),
                          ),
                          const SizedBox(
                            height: AppInsets.padding8,
                          ),
                          Text(task.creator.username,
                              style: Theme.of(context).textTheme.titleMedium),
                          const SizedBox(
                            height: AppInsets.padding24,
                          ),
                          Text(
                            "Содержание",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Theme.of(context)
                                      .extension<CustomThemeExtension>()!
                                      .labelColor,
                                ),
                          ),
                          const SizedBox(
                            height: AppInsets.padding8,
                          ),
                          Text(
                            task.title,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(
                            height: AppInsets.padding16,
                          ),
                          if (task.description != null) ...[
                            Text(
                              task.description!,
                            ),
                          ],
                        ]),
                      ),
                      if (task.images?.isNotEmpty == true)
                        SliverPadding(
                          padding: const EdgeInsets.all(AppInsets.padding16)
                              .copyWith(
                            top: AppInsets.padding24,
                            bottom: 0.0,
                          ),
                          sliver: SliverGrid.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 150,
                              crossAxisSpacing: AppInsets.padding2,
                              mainAxisSpacing: AppInsets.padding2,
                              childAspectRatio: 1,
                            ),
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () => open(context, task.images!, index),
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl: task.images![index],
                                width: double.infinity,
                              ),
                            ),
                            itemCount: task.images!.length,
                          ),
                        ),
                      if (task.executor != null)
                        SliverPadding(
                          padding: const EdgeInsets.all(AppInsets.padding16)
                              .copyWith(
                            top: AppInsets.padding24,
                            bottom: 0.0,
                          ),
                          sliver: SliverList.list(
                            children: [
                              Text(
                                "Исполнитель",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .extension<CustomThemeExtension>()!
                                          .labelColor,
                                    ),
                              ),
                              const SizedBox(
                                height: AppInsets.padding8,
                              ),
                              Text(
                                task.executor?.username ?? '',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      if (task.result != null)
                        SliverPadding(
                          padding: const EdgeInsets.all(AppInsets.padding16)
                              .copyWith(
                            top: AppInsets.padding24,
                            bottom: 0.0,
                          ),
                          sliver: SliverList.list(children: [
                            Text(
                              'Результат выполнения',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Theme.of(context)
                                        .extension<CustomThemeExtension>()!
                                        .labelColor,
                                  ),
                            ),
                            if (task.result!.description != null &&
                                task.result!.description!.isNotEmpty) ...[
                              const SizedBox(
                                height: AppInsets.padding8,
                              ),
                              Text(
                                task.result!.description!,
                              ),
                              const SizedBox(
                                height: AppInsets.padding8,
                              ),
                            ],
                          ]),
                        ),
                      if (task.result?.images?.isNotEmpty == true)
                        SliverPadding(
                          padding: const EdgeInsets.all(AppInsets.padding16)
                              .copyWith(
                            top: AppInsets.padding24,
                            bottom: 0.0,
                          ),
                          sliver: SliverGrid.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 150,
                              crossAxisSpacing: AppInsets.padding2,
                              mainAxisSpacing: AppInsets.padding2,
                              childAspectRatio: 1,
                            ),
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () =>
                                  open(context, task.result!.images!, index),
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl: task.result!.images![index],
                                width: double.infinity,
                              ),
                            ),
                            itemCount: task.result!.images!.length,
                          ),
                        )
                    ],
                  ),
                ),
                if (task.actions.isNotEmpty) ...[
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

  void open(BuildContext context, List<String> images, [int index = 0]) {
    context.router.push(
      ImagePreviewRoute(
        galleryItems: images,
        initialIndex: index,
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
          onPressed: () => context.router.push(
            AddTaskResultRoute(
              onConfirm: (String? description, List<String>? images) {
                context.router.pop();
                context.read<TaskInfoCubit>().confirm(
                      resultDescription: description,
                      imagePaths: images,
                    );
              },
            ),
          ),
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
