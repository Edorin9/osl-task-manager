import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository/repository.dart';

import '../bloc/tasks_bloc.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  static const String name = '/tasks';
  static WidgetBuilder route() => (context) => const TasksPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc(context.read<Repository>()),
      child: const _TasksView(),
    );
  }
}

class _TasksView extends StatelessWidget {
  const _TasksView();

  @override
  Widget build(BuildContext context) {
    // init page
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<TasksBloc>().add(const PageLoaded()),
    );
    // view layout
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        return Scaffold();
      },
    );
  }
}
