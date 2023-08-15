import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository/repository.dart';

import '../../../util/extensions.dart';
import '../../details/enums/details_mode.dart';
import '../../details/view/details_page.dart';
import '../bloc/tasks_bloc.dart';
import '../enums/status_filter.dart';
import '../models/task.dart';

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
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _Header(),
            SizedBox(height: 8),
            _TasksListView(),
          ],
        ),
      ),
      floatingActionButton: _CreateTaskButton(),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: Text(
                  'Task Manager',
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: BlocBuilder<TasksBloc, TasksState>(
                  builder: (context, state) {
                    return Text(
                      '${state.tasks.length} tasks ${state.statusFilter == StatusFilter.completed ? 'completed' : state.statusFilter == StatusFilter.pending ? 'left to be done' : 'in total'}',
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12,
                        color: Color(0xff454545),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          BlocBuilder<TasksBloc, TasksState>(
            buildWhen: (prev, curr) => prev.statusFilter != curr.statusFilter,
            builder: (context, state) {
              return DropdownButton<StatusFilter>(
                value: state.statusFilter,
                items: StatusFilter.values
                    .map(
                      (status) => DropdownMenuItem<StatusFilter>(
                        value: status,
                        child: Text(status.name.capitalize()),
                      ),
                    )
                    .toList(),
                onChanged: (value) => context.read<TasksBloc>().add(
                      FilterChanged(value ?? state.statusFilter),
                    ),
                isDense: true,
                underline: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(),
                    ),
                  ),
                ),
                icon: const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.filter_alt,
                    color: Colors.black,
                  ),
                ),
                padding: const EdgeInsets.only(right: 16),
              );
            },
          )
        ],
      ),
    );
  }
}

class _TasksListView extends StatelessWidget {
  const _TasksListView();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<TasksBloc, TasksState>(
        buildWhen: (prev, curr) => prev.tasks != curr.tasks,
        builder: (context, state) {
          return ListView.separated(
            padding: const EdgeInsets.all(8),
            physics: const BouncingScrollPhysics(),
            itemCount: state.tasks.length,
            itemBuilder: (content, index) {
              return _TaskItemButton(state.tasks[index]);
            },
            separatorBuilder: (context, index) => const SizedBox(height: 8),
          );
        },
      ),
    );
  }
}

class _TaskItemButton extends StatelessWidget {
  const _TaskItemButton(this.task);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () async {
        await Navigator.of(context).pushNamed(
          DetailsPage.name,
          arguments: DetailsArgs(mode: DetailsMode.display, task: task),
        );
        if (context.mounted) context.read<TasksBloc>().add(const PageLoaded());
      },
      padding: EdgeInsets.zero,
      child: Card(
        elevation: 0,
        child: Row(
          children: [
            IconButton(
              onPressed: () => context.read<TasksBloc>().add(
                    ItemCheckToggled(task: task),
                  ),
              splashRadius: 18,
              icon: Icon(
                task.status == Status.completed
                    ? Icons.check_circle
                    : Icons.circle_outlined,
                color: Colors.black,
                size: 32,
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.title,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                    ),
                    Text(
                      task.description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CreateTaskButton extends StatelessWidget {
  const _CreateTaskButton();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        await Navigator.of(context).pushNamed(
          DetailsPage.name,
          arguments: DetailsArgs(mode: DetailsMode.create),
        );
        if (context.mounted) context.read<TasksBloc>().add(const PageLoaded());
      },
      backgroundColor: Colors.black,
      child: const Icon(Icons.add),
    );
  }
}
