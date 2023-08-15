import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository/repository.dart';

import '../bloc/tasks_bloc.dart';
import '../enums/status_filter.dart';

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
      },
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
          IconButton(
            icon: const Icon(Icons.filter_alt),
            onPressed: () {},
            iconSize: 24,
          ),
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
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        physics: const BouncingScrollPhysics(),
        itemCount: 22,
        itemBuilder: (content, index) {
          return const _TaskItemButton();
        },
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      ),
    );
  }
}

class _TaskItemButton extends StatelessWidget {
  const _TaskItemButton();

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      child: Card(
        elevation: 0,
        child: Row(
          children: [
            Checkbox(
              value: true,
              onChanged: (isChecked) {},
              activeColor: Colors.black,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                    ),
                    Text(
                      'description description description description description',
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
      onPressed: () {},
      backgroundColor: Colors.black,
      child: const Icon(Icons.add),
    );
  }
}
