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
    final getFiltered = event.filter == StatusFilter.pending
        ? _repository.getPendingTasks
        : event.filter == StatusFilter.completed
            ? _repository.getCompletedTasks
            : _repository.getAllTasks;
    final filteredTasks = await getFiltered();
    emit(state.copyWith(tasks: filteredTasks.map(Task.fromModel).toList()));
  }
}
