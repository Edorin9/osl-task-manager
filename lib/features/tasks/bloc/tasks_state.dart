part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState({
    @Default([]) List<Task> tasks,
    @Default(StatusFilter.all) StatusFilter statusFilter,
  }) = _TasksState;

  factory TasksState.fromJson(Map<String, dynamic> json) =>
      _$TasksStateFromJson(json);
}
