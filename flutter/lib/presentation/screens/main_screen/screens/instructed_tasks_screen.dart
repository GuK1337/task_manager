import 'package:auto_route/auto_route.dart';
import 'package:example_app/domain/bloc/task_cubit/task_cubit.dart';
import 'package:example_app/presentation/screens/main_screen/components/tasks_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class InstructedTasksScreen extends StatelessWidget with AutoRouteWrapper {
  const InstructedTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TasksListView();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<TasksCubit>(
      create: (context) => GetIt.I.get<InstructedTasksCubit>()..fetch(),
      child: this,
    );
  }
}
