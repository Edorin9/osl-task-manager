part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.pageLoaded() = PageLoaded;
  const factory TasksEvent.filterChanged(StatusFilter filter) = FilterChanged;
}
