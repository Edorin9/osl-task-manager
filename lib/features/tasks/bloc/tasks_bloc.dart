import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repository/repository.dart';

import '../enums/status_filter.dart';
import '../models/task.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

part 'tasks_bloc.freezed.dart';
part 'tasks_bloc.g.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc(this._repository) : super(const TasksState()) {
    on<ItemCheckToggled>(_onItemCheckToggled);
    on<PageLoaded>(_onPageLoaded);
    on<FilterChanged>(_onFilterChanged);
  }

  final Repository _repository;

  Future<void> _onPageLoaded(
    PageLoaded event,
    Emitter<TasksState> emit,
  ) async {
    final allTasks = await _repository.getAllTasks();
    emit(state.copyWith(tasks: allTasks.map(Task.fromModel).toList()));
  }

  Future<void> _onFilterChanged(
    FilterChanged event,
    Emitter<TasksState> emit,
  ) async {
    await _getFilteredTasks(event.filter, emit);
  }

  Future<void> _onItemCheckToggled(
    ItemCheckToggled event,
    Emitter<TasksState> emit,
  ) async {
    final id = await _repository.addOrEditTask(
      event.task
          .copyWith(
            status: event.task.status == Status.completed
                ? Status.pending
                : Status.completed,
          )
          .toTaskModel(),
    );
    print('thisis: $id');
    await _getFilteredTasks(state.statusFilter, emit);
  }

  Future<void> _getFilteredTasks(
    StatusFilter filter,
    Emitter<TasksState> emit,
  ) async {
    final getFiltered = filter == StatusFilter.pending
        ? _repository.getPendingTasks
        : filter == StatusFilter.completed
            ? _repository.getCompletedTasks
            : _repository.getAllTasks;
    final filteredTasks = await getFiltered();
    emit(
      state.copyWith(
        statusFilter: filter,
        tasks: filteredTasks.map(Task.fromModel).toList(),
      ),
    );
  }
}
